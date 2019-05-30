#!/usr/bin/env bash

ENDPOINT_DOMAIN_NAME="$K8S_LOAD_BALANCER"
ENVIRONMENT="$K8S_ENVIRONMENT"
MOCK_USERNAME="$USERNAME"
MOCK_PASSWORD="$PASSWORD"
ICN="$ICN"

#Put Health endpoints here if you got them, all that's here is a WAG
PATHS=(/actuator/health)

SUCCESS=0

FAILURE=0

# New phone who this?
usage() {
cat <<EOF
Commands
  smoke-test [--endpoint-domain-name|-d <endpoint>] [--environment|-e <env>] [--username|-u <mock_username>] [--password|-p <mock_password>] [--icn|-i <patient_icn>]
  regression-test [--endpoint-domain-name|-d <endpoint>] [--environment|-e <env>]

Example
  smoke-test
    --endpoint-domain-name=localhost
    --environment=qa
    --username=fake_user
    --password=123v3rys4fe
    --icn=8774431

$1
EOF
exit 1
}

# Keeps track of successes and failures
trackStatus () {
  if [ "$status_code" == 200 -o "$status_code" == 201 ]
    then
      SUCCESS=$((SUCCESS + 1))
      echo "$request_url: $status_code - Success"
    else
      FAILURE=$((FAILURE + 1))
      echo "$request_url: $status_code - Fail"
  fi
}

# Send requests to all of mock-ee's available endpoints
httpListenerTests () {

  ENDPOINT_DOMAIN_NAME="http://$ENDPOINT_DOMAIN_NAME"

  for path in "${PATHS[@]}"
    do
      request_url="$ENDPOINT_DOMAIN_NAME$path"
      status_code=$(curl -k --write-out %{http_code} --silent --output /dev/null "$request_url")
      trackStatus
    done

  path=/ws
  request_url="$ENDPOINT_DOMAIN_NAME$path"
  status_code=$(curl -X POST -k --write-out %{http_code} --silent --output /dev/null "$request_url" -H 'Content-Type: text/xml' -d '<SOAP-ENV:Envelope xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/" xmlns:sch="http://jaxws.webservices.esr.med.va.gov/schemas" xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">
    <SOAP-ENV:Header>
        <wsse:Security SOAP-ENV:mustUnderstand="1">
            <wsse:UsernameToken wsu:Id="XWSSGID-1281117217796-43574433">
                <wsse:Username>'$MOCK_USERNAME'</wsse:Username>
                <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">'$MOCK_PASSWORD'</wsse:Password>
            </wsse:UsernameToken>
        </wsse:Security>
    </SOAP-ENV:Header>
    <SOAP-ENV:Body>
        <sch:getEESummaryRequest>
            <sch:key>'$ICN'</sch:key>
            <sch:requestName>CommunityCareInfo</sch:requestName>
        </sch:getEESummaryRequest>
    </SOAP-ENV:Body>
</SOAP-ENV:Envelope>')
  trackStatus
}

printResults () {
  TOTAL=$((SUCCESS + FAILURE))

  echo "=== TOTAL: $TOTAL | SUCCESS: $SUCCESS | FAILURE: $FAILURE ==="

  if [[ "$FAILURE" -gt 0 ]]; then
  exit 1
  fi
}

# Send some smoke signals
smokeTest () {
  httpListenerTests
  printResults
}

# Regress
regressionTest () {
  httpListenerTests
  printResults
}

# Let's get down to business
ARGS=$(getopt -n $(basename ${0}) \
    -l "endpoint-domain-name:,environment:,password:,username:,icn:,help" \
    -o "d:e:p:u:i:h" -- "$@")
[ $? != 0 ] && usage
eval set -- "$ARGS"
while true
do
  case "$1" in
    -d|--endpoint-domain-name) ENDPOINT_DOMAIN_NAME=$2;;
    -e|--environment) ENVIRONMENT=$2;;
    -p|--password) MOCK_PASSWORD=$2;;
    -u|--username) MOCK_USERNAME=$2;;
    -i|--icn) ICN=$2;;
    -h|--help) usage "I need a hero! I'm holding out for a hero...";;
    --) shift;break;;
  esac
  shift;
done

if [[ -z "$ENDPOINT_DOMAIN_NAME" || -e "$ENDPOINT_DOMAIN_NAME" ]]; then
  usage "Missing variable K8S_LOAD_BALANCER or option --endpoint-domain-name|-d."
fi

if [[ -z "$ENVIRONMENT" || -e "$ENVIRONMENT" ]]; then
  usage "Missing variable K8S_ENVIRONMENT or option --environment|-e."
fi

if [[ -z "$MOCK_PASSWORD" || -e "$MOCK_PASSWORD" ]]; then
  usage "Missing variable PASSWORD or option --password|-p."
fi

if [[ -z "$MOCK_USERNAME" || -e "$MOCK_USERNAME" ]]; then
  usage "Missing variable USERNAME or option --username|-u."
fi

if [[ -z "$ICN" || -e "$ICN" ]]; then
  usage "Missing variable ICN or option --icn|-i."
fi

[ $# == 0 ] && usage "No command specified"
COMMAND=$1
shift

case "$COMMAND" in
  s|smoke-test) smokeTest;;
  r|regression-test) regressionTest;;
  *) usage "Unknown command: $COMMAND";;
esac

exit 0
