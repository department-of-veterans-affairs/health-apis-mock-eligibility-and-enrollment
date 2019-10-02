CREATE TABLE [synthea].[ee_summaries](

	[ICN] [varchar](255) NOT NULL,

	[payload] [varchar](max) NULL,

PRIMARY KEY CLUSTERED

(

	[ICN] ASC

)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'1000003', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1>Apt. 71</line1>
                        <line2></line2>
                        <line3>966 Summerhouse St.</line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1951-02-14T16:23:40.158-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'1000005', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Charleston</city>
                        <line1></line1>
                        <line2>612 Summerhouse St.</line2>
                        <line3></line3>
                        <postalCode>29401</postalCode>
                        <state>SC</state>
                        <zipCode>29401</zipCode>
                        <zipPlus4>1100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1951-10-12T16:23:40.159-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1907-10-20T16:23:40.160-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'10000271', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Montgomery</city>
                        <line1>421 Woodland Ave.</line1>
                        <line2></line2>
                        <line3>Apt. 185</line3>
                        <postalCode>36101</postalCode>
                        <state>AL</state>
                        <zipCode>36101</zipCode>
                        <zipPlus4>0001</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1910-06-09T16:23:40.167-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>2013-09-12T16:23:40.167-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'1000031', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1></line1>
                        <line2>416 Woodland Ave.</line2>
                        <line3>Apt. 445</line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1980-01-31T16:23:40.160-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1920-10-18T16:23:40.161-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'1011537977V693883', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>ND</vceCode>
                    <vceDescription>Not determined Community</vceDescription>
                    <vceEffectiveDate>1915-09-03T10:05:11.241-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'1012704686V159887', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Charleston</city>
                        <line1>717 Del Monte Rd.</line1>
                        <line2></line2>
                        <line3>Apt. 118</line3>
                        <postalCode>29401</postalCode>
                        <state>SC</state>
                        <zipCode>29401</zipCode>
                        <zipPlus4>1100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1954-11-20T16:23:40.207-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'1017283132V631076', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Montgomery</city>
                        <line1>Apt. 476</line1>
                        <line2></line2>
                        <line3>237 Jones Street</line3>
                        <postalCode>36101</postalCode>
                        <state>AL</state>
                        <zipCode>36101</zipCode>
                        <zipPlus4>0001</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1997-01-12T16:23:40.206-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'1017283148V813263', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Montgomery</city>
                        <line1></line1>
                        <line2>239 Del Monte Rd.</line2>
                        <line3></line3>
                        <postalCode>36101</postalCode>
                        <state>AL</state>
                        <zipCode>36101</zipCode>
                        <zipPlus4>0001</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1908-03-06T16:23:40.204-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1965-03-14T16:23:40.205-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'1017283179V257219', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Atlanta</city>
                        <line1>Apt. 100</line1>
                        <line2></line2>
                        <line3>629 Jones Street</line3>
                        <postalCode>30302</postalCode>
                        <state>GA</state>
                        <zipCode>30302</zipCode>
                        <zipPlus4>404</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1953-10-29T16:23:40.203-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1949-03-02T16:23:40.204-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'1017283180V801730', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1>Apt. 91</line1>
                        <line2></line2>
                        <line3>679 Del Monte Rd.</line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1964-07-30T16:23:40.208-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1992-06-16T16:23:40.208-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'129', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1>422 South Glen Creek St.</line1>
                        <line2>Apt. 172</line2>
                        <line3></line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1938-10-26T16:23:40.157-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'13000493', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1></line1>
                        <line2>937 Jones Street</line2>
                        <line3></line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1945-08-26T16:23:40.175-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1907-07-22T16:23:40.175-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'14000005', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>X</vceCode>
                    <vceDescription>Ineligible</vceDescription>
                    <vceEffectiveDate>1946-08-23T16:01:01.745-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'160', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1></line1>
                        <line2>218 Woodland Ave.</line2>
                        <line3></line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>B</vceCode>
                    <vceDescription>Basic</vceDescription>
                    <vceEffectiveDate>1907-02-19T16:23:40.146-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'17', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1>752 Woodland Ave.</line1>
                        <line2></line2>
                        <line3>Apt. 203</line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1968-11-05T16:23:40.141-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1943-06-06T16:23:40.141-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'17000024', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Montgomery</city>
                        <line1></line1>
                        <line2></line2>
                        <line3>357 Del Monte Rd.</line3>
                        <postalCode>36101</postalCode>
                        <state>AL</state>
                        <zipCode>36101</zipCode>
                        <zipPlus4>0001</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1931-06-14T16:23:40.182-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1979-05-13T16:23:40.182-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'17000098', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1>Apt. 101</line1>
                        <line2></line2>
                        <line3>336 Jones Street</line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1951-11-19T16:23:40.178-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>2016-03-11T16:23:40.178-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'17000151', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1>Apt. 43</line1>
                        <line2></line2>
                        <line3>67 Jones Street</line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>ND</vceCode>
                    <vceDescription>Not determined Community</vceDescription>
                    <vceEffectiveDate>1934-04-18T16:23:40.183-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'173', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Atlanta</city>
                        <line1></line1>
                        <line2></line2>
                        <line3>369 Summerhouse St.</line3>
                        <postalCode>30302</postalCode>
                        <state>GA</state>
                        <zipCode>30302</zipCode>
                        <zipPlus4>404</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>X</vceCode>
                    <vceDescription>Ineligible</vceDescription>
                    <vceEffectiveDate>1978-02-15T16:23:40.147-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'18000027', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Charleston</city>
                        <line1>404 Woodland Ave.</line1>
                        <line2>Apt. 147</line2>
                        <line3></line3>
                        <postalCode>29401</postalCode>
                        <state>SC</state>
                        <zipCode>29401</zipCode>
                        <zipPlus4>1100</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1914-03-01T16:23:40.132-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1997-01-31T16:23:40.132-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'195', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1>Apt. 348</line1>
                        <line2></line2>
                        <line3>548 Summerhouse St.</line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1947-06-18T16:23:40.148-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1941-08-23T16:23:40.148-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'2000163', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Atlanta</city>
                        <line1></line1>
                        <line2>741 Summerhouse St.</line2>
                        <line3>Apt. 476</line3>
                        <postalCode>30302</postalCode>
                        <state>GA</state>
                        <zipCode>30302</zipCode>
                        <zipPlus4>404</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>X</vceCode>
                    <vceDescription>Ineligible</vceDescription>
                    <vceEffectiveDate>1994-06-28T16:23:40.117-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'2000167', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Atlanta</city>
                        <line1>674 Summerhouse St.</line1>
                        <line2></line2>
                        <line3></line3>
                        <postalCode>30302</postalCode>
                        <state>GA</state>
                        <zipCode>30302</zipCode>
                        <zipPlus4>404</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>X</vceCode>
                    <vceDescription>Ineligible</vceDescription>
                    <vceEffectiveDate>1993-02-28T16:23:40.119-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'2000190', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1>943 South Glen Creek St.</line1>
                        <line2></line2>
                        <line3></line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>X</vceCode>
                    <vceDescription>Ineligible</vceDescription>
                    <vceEffectiveDate>2008-04-26T16:23:40.116-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'21000177', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Atlanta</city>
                        <line1>Apt. 497</line1>
                        <line2></line2>
                        <line3>150 Woodland Ave.</line3>
                        <postalCode>30302</postalCode>
                        <state>GA</state>
                        <zipCode>30302</zipCode>
                        <zipPlus4>404</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1945-04-06T16:23:40.185-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'21000265', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Atlanta</city>
                        <line1>Apt. 356</line1>
                        <line2></line2>
                        <line3>944 Summerhouse St.</line3>
                        <postalCode>30302</postalCode>
                        <state>GA</state>
                        <zipCode>30302</zipCode>
                        <zipPlus4>404</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1964-01-06T16:23:40.184-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>2015-03-22T16:23:40.184-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'23', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1>683 Jones Street</line1>
                        <line2>Apt. 476</line2>
                        <line3></line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1980-11-04T16:23:40.142-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1990-10-27T16:23:40.142-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'23000219', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1>241 Summerhouse St.</line1>
                        <line2></line2>
                        <line3></line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1917-08-03T16:23:40.120-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1928-09-23T16:23:40.120-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'25', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1>812 South Glen Creek St.</line1>
                        <line2>Apt. 171</line2>
                        <line3></line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1934-03-19T16:23:40.138-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'25000126', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1>713 Jones Street</line1>
                        <line2></line2>
                        <line3></line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>2018-07-05T16:23:40.101-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1935-09-27T16:23:40.102-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'25000285', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1></line1>
                        <line2>306 Woodland Ave.</line2>
                        <line3>Apt. 242</line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>ND</vceCode>
                    <vceDescription>Not determined Community</vceDescription>
                    <vceEffectiveDate>1921-01-08T16:23:40.104-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'260', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1></line1>
                        <line2>694 Summerhouse St.</line2>
                        <line3></line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>ND</vceCode>
                    <vceDescription>Not determined Community</vceDescription>
                    <vceEffectiveDate>1929-06-29T16:23:40.137-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'28000131', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Atlanta</city>
                        <line1></line1>
                        <line2>205 Jones Street</line2>
                        <line3></line3>
                        <postalCode>30302</postalCode>
                        <state>GA</state>
                        <zipCode>30302</zipCode>
                        <zipPlus4>404</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1966-01-20T16:23:40.176-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'29', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1></line1>
                        <line2>532 Summerhouse St.</line2>
                        <line3>Apt. 154</line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1974-03-31T16:23:40.149-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'297', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1></line1>
                        <line2>860 Del Monte Rd.</line2>
                        <line3>Apt. 187</line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1973-03-14T16:23:40.154-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1998-05-31T16:23:40.155-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'30000207', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1>Apt. 96</line1>
                        <line2></line2>
                        <line3>693 Summerhouse St.</line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1907-01-03T16:23:40.115-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>2003-06-07T16:23:40.115-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'32', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1>744 South Glen Creek St.</line1>
                        <line2></line2>
                        <line3></line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>B</vceCode>
                    <vceDescription>Basic</vceDescription>
                    <vceEffectiveDate>1987-11-11T16:23:40.135-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'32000225', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1></line1>
                        <line2>781 Jones Street</line2>
                        <line3></line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1922-09-28T16:23:40.096-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1910-03-19T16:23:40.099-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'32000551', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Montgomery</city>
                        <line1></line1>
                        <line2></line2>
                        <line3>359 South Glen Creek St.</line3>
                        <postalCode>36101</postalCode>
                        <state>AL</state>
                        <zipCode>36101</zipCode>
                        <zipPlus4>0001</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1999-05-21T16:23:40.105-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1963-10-24T16:23:40.106-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'35000422', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Montgomery</city>
                        <line1></line1>
                        <line2>283 South Glen Creek St.</line2>
                        <line3></line3>
                        <postalCode>36101</postalCode>
                        <state>AL</state>
                        <zipCode>36101</zipCode>
                        <zipPlus4>0001</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>X</vceCode>
                    <vceDescription>Ineligible</vceDescription>
                    <vceEffectiveDate>1996-05-08T16:23:40.121-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'36000036', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Charleston</city>
                        <line1>149 Jones Street</line1>
                        <line2></line2>
                        <line3>Apt. 467</line3>
                        <postalCode>29401</postalCode>
                        <state>SC</state>
                        <zipCode>29401</zipCode>
                        <zipPlus4>1100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1968-03-05T16:23:40.108-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'36000216', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1></line1>
                        <line2>994 Woodland Ave.</line2>
                        <line3></line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1954-08-14T16:23:40.107-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1948-10-19T16:23:40.107-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'37000071', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Charleston</city>
                        <line1></line1>
                        <line2>79 South Glen Creek St.</line2>
                        <line3>Apt. 28</line3>
                        <postalCode>29401</postalCode>
                        <state>SC</state>
                        <zipCode>29401</zipCode>
                        <zipPlus4>1100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>B</vceCode>
                    <vceDescription>Basic</vceDescription>
                    <vceEffectiveDate>1957-08-05T16:23:40.196-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'37000195', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1>87 Summerhouse St.</line1>
                        <line2></line2>
                        <line3></line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>X</vceCode>
                    <vceDescription>Ineligible</vceDescription>
                    <vceEffectiveDate>1940-02-19T16:23:40.197-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'38', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Montgomery</city>
                        <line1>68 Summerhouse St.</line1>
                        <line2>Apt. 5</line2>
                        <line3></line3>
                        <postalCode>36101</postalCode>
                        <state>AL</state>
                        <zipCode>36101</zipCode>
                        <zipPlus4>0001</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>ND</vceCode>
                    <vceDescription>Not determined Community</vceDescription>
                    <vceEffectiveDate>1961-05-26T16:23:40.153-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'38000008', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1>999 Woodland Ave.</line1>
                        <line2>Apt. 7</line2>
                        <line3></line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>X</vceCode>
                    <vceDescription>Ineligible</vceDescription>
                    <vceEffectiveDate>1941-06-21T16:23:40.170-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'38000035', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Montgomery</city>
                        <line1></line1>
                        <line2>898 Jones Street</line2>
                        <line3>Apt. 363</line3>
                        <postalCode>36101</postalCode>
                        <state>AL</state>
                        <zipCode>36101</zipCode>
                        <zipPlus4>0001</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1947-12-09T16:23:40.172-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1995-08-27T16:23:40.172-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'38000186', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1></line1>
                        <line2>389 Jones Street</line2>
                        <line3></line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1992-11-10T16:23:40.169-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1988-08-15T16:23:40.169-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'38000227', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Charleston</city>
                        <line1>871 Summerhouse St.</line1>
                        <line2></line2>
                        <line3></line3>
                        <postalCode>29401</postalCode>
                        <state>SC</state>
                        <zipCode>29401</zipCode>
                        <zipPlus4>1100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>B</vceCode>
                    <vceDescription>Basic</vceDescription>
                    <vceEffectiveDate>1933-07-29T16:23:40.171-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'38000527', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Montgomery</city>
                        <line1>972 Summerhouse St.</line1>
                        <line2></line2>
                        <line3>Apt. 58</line3>
                        <postalCode>36101</postalCode>
                        <state>AL</state>
                        <zipCode>36101</zipCode>
                        <zipPlus4>0001</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>2012-09-08T16:23:40.173-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1975-04-22T16:23:40.173-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'38000646', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Montgomery</city>
                        <line1>428 South Glen Creek St.</line1>
                        <line2></line2>
                        <line3></line3>
                        <postalCode>36101</postalCode>
                        <state>AL</state>
                        <zipCode>36101</zipCode>
                        <zipPlus4>0001</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1928-05-19T16:23:40.174-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1983-02-23T16:23:40.174-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'39', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Montgomery</city>
                        <line1>10 Jones Street</line1>
                        <line2></line2>
                        <line3>Apt. 241</line3>
                        <postalCode>36101</postalCode>
                        <state>AL</state>
                        <zipCode>36101</zipCode>
                        <zipPlus4>0001</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1998-08-29T16:23:40.150-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1907-01-02T16:23:40.150-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'39000049', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Charleston</city>
                        <line1>926 Summerhouse St.</line1>
                        <line2></line2>
                        <line3></line3>
                        <postalCode>29401</postalCode>
                        <state>SC</state>
                        <zipCode>29401</zipCode>
                        <zipPlus4>1100</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1948-11-04T16:23:40.110-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1969-12-09T16:23:40.110-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'40000153', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1>361 Summerhouse St.</line1>
                        <line2></line2>
                        <line3></line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>ND</vceCode>
                    <vceDescription>Not determined Community</vceDescription>
                    <vceEffectiveDate>2011-08-12T16:23:40.112-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'40000200', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1></line1>
                        <line2>847 Summerhouse St.</line2>
                        <line3>Apt. 301</line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>ND</vceCode>
                    <vceDescription>Not determined Community</vceDescription>
                    <vceEffectiveDate>1942-07-10T16:23:40.111-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'4000399', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Charleston</city>
                        <line1></line1>
                        <line2></line2>
                        <line3>595 Summerhouse St.</line3>
                        <postalCode>29401</postalCode>
                        <state>SC</state>
                        <zipCode>29401</zipCode>
                        <zipPlus4>1100</zipPlus4>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1998-01-04T16:23:40.188-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1965-07-04T16:23:40.188-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'4000751', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Charleston</city>
                        <line1>829 South Glen Creek St.</line1>
                        <line2>Apt. 435</line2>
                        <line3></line3>
                        <postalCode>29401</postalCode>
                        <state>SC</state>
                        <zipCode>29401</zipCode>
                        <zipPlus4>1100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1950-03-01T16:23:40.191-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>2000-01-09T16:23:40.192-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'4001192', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Montgomery</city>
                        <line1></line1>
                        <line2></line2>
                        <line3>2 Woodland Ave.</line3>
                        <postalCode>36101</postalCode>
                        <state>AL</state>
                        <zipCode>36101</zipCode>
                        <zipPlus4>0001</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>2017-07-11T16:23:40.186-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1989-10-07T16:23:40.187-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'41', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Charleston</city>
                        <line1></line1>
                        <line2>983 Summerhouse St.</line2>
                        <line3>Apt. 356</line3>
                        <postalCode>29401</postalCode>
                        <state>SC</state>
                        <zipCode>29401</zipCode>
                        <zipPlus4>1100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1992-08-22T16:23:40.143-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1927-12-05T16:23:40.144-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'42', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1></line1>
                        <line2></line2>
                        <line3>540 Summerhouse St.</line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1971-11-27T16:23:40.156-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1980-05-24T16:23:40.157-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'42000256', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Atlanta</city>
                        <line1>940 Jones Street</line1>
                        <line2></line2>
                        <line3>Apt. 202</line3>
                        <postalCode>30302</postalCode>
                        <state>GA</state>
                        <zipCode>30302</zipCode>
                        <zipPlus4>404</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1943-01-13T16:23:40.114-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1904-12-15T16:23:40.114-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'42000354', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1></line1>
                        <line2>167 Jones Street</line2>
                        <line3></line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1900-10-27T16:23:40.113-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1936-09-11T16:23:40.113-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'43000199', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Montgomery</city>
                        <line1></line1>
                        <line2>172 Summerhouse St.</line2>
                        <line3></line3>
                        <postalCode>36101</postalCode>
                        <state>AL</state>
                        <zipCode>36101</zipCode>
                        <zipPlus4>0001</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1978-09-25T16:23:40.122-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>2001-08-24T16:23:40.122-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'43000334', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1>372 Summerhouse St.</line1>
                        <line2></line2>
                        <line3></line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1948-05-02T16:23:40.126-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>2018-05-28T16:23:40.127-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'43000341', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1>Apt. 110</line1>
                        <line2></line2>
                        <line3>212 South Glen Creek St.</line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1914-12-29T16:23:40.128-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1926-02-23T16:23:40.128-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'43000466', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1>Apt. 458</line1>
                        <line2></line2>
                        <line3>908 Summerhouse St.</line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1962-03-09T16:23:40.124-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>2015-06-11T16:23:40.124-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'43000482', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1>Apt. 462</line1>
                        <line2></line2>
                        <line3>684 Del Monte Rd.</line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1913-05-15T16:23:40.123-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1912-08-05T16:23:40.123-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'43000498', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1>714 South Glen Creek St.</line1>
                        <line2>Apt. 52</line2>
                        <line3></line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1987-12-15T16:23:40.133-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'43000807', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Charleston</city>
                        <line1></line1>
                        <line2></line2>
                        <line3>667 Jones Street</line3>
                        <postalCode>29401</postalCode>
                        <state>SC</state>
                        <zipCode>29401</zipCode>
                        <zipPlus4>1100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1920-07-21T16:23:40.129-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1907-05-23T16:23:40.129-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'43000811', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Montgomery</city>
                        <line1>259 South Glen Creek St.</line1>
                        <line2></line2>
                        <line3></line3>
                        <postalCode>36101</postalCode>
                        <state>AL</state>
                        <zipCode>36101</zipCode>
                        <zipPlus4>0001</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>2008-03-14T16:23:40.130-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1907-04-05T16:23:40.130-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'43001199', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Charleston</city>
                        <line1>59 Woodland Ave.</line1>
                        <line2>Apt. 383</line2>
                        <line3></line3>
                        <postalCode>29401</postalCode>
                        <state>SC</state>
                        <zipCode>29401</zipCode>
                        <zipPlus4>1100</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1972-03-09T16:23:40.125-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1966-10-06T16:23:40.125-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'44', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1>Apt. 159</line1>
                        <line2></line2>
                        <line3>711 Jones Street</line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1951-10-21T16:23:40.140-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'44000002', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>X</vceCode>
                    <vceDescription>Ineligible</vceDescription>
                    <vceEffectiveDate>1964-09-23T10:05:11.871-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'46000180', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1></line1>
                        <line2>970 Jones Street</line2>
                        <line3></line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>2011-01-03T16:23:40.195-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1944-05-14T16:23:40.195-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'46000380', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1>926 Summerhouse St.</line1>
                        <line2>Apt. 111</line2>
                        <line3></line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1986-08-13T16:23:40.193-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1900-12-16T16:23:40.193-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'46000560', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1></line1>
                        <line2>177 South Glen Creek St.</line2>
                        <line3>Apt. 493</line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>X</vceCode>
                    <vceDescription>Ineligible</vceDescription>
                    <vceEffectiveDate>2005-08-30T16:23:40.194-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'47000002', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Charleston</city>
                        <line1></line1>
                        <line2>208 Woodland Ave.</line2>
                        <line3>Apt. 285</line3>
                        <postalCode>29401</postalCode>
                        <state>SC</state>
                        <zipCode>29401</zipCode>
                        <zipPlus4>1100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1967-08-06T16:23:40.198-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'47000043', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1></line1>
                        <line2>997 Jones Street</line2>
                        <line3>Apt. 216</line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1955-05-01T16:23:40.199-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'47000145', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1>Apt. 60</line1>
                        <line2></line2>
                        <line3>634 Jones Street</line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>ND</vceCode>
                    <vceDescription>Not determined Community</vceDescription>
                    <vceEffectiveDate>1942-09-02T16:23:40.200-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'47000289', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Montgomery</city>
                        <line1>Apt. 128</line1>
                        <line2></line2>
                        <line3>748 Jones Street</line3>
                        <postalCode>36101</postalCode>
                        <state>AL</state>
                        <zipCode>36101</zipCode>
                        <zipPlus4>0001</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1903-10-12T16:23:40.201-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1923-08-06T16:23:40.201-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'48', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1></line1>
                        <line2>404 Summerhouse St.</line2>
                        <line3>Apt. 465</line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>2004-06-25T16:23:40.155-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1909-01-03T16:23:40.156-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'48000087', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1>60 Woodland Ave.</line1>
                        <line2></line2>
                        <line3>Apt. 145</line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1991-05-25T16:23:40.177-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1982-03-31T16:23:40.177-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'49', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Montgomery</city>
                        <line1>Apt. 265</line1>
                        <line2></line2>
                        <line3>12 Jones Street</line3>
                        <postalCode>36101</postalCode>
                        <state>AL</state>
                        <zipCode>36101</zipCode>
                        <zipPlus4>0001</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>1990-07-10T16:23:40.145-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1994-02-07T16:23:40.145-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'5000335', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Montgomery</city>
                        <line1>166 Woodland Ave.</line1>
                        <line2>Apt. 180</line2>
                        <line3></line3>
                        <postalCode>36101</postalCode>
                        <state>AL</state>
                        <zipCode>36101</zipCode>
                        <zipPlus4>0001</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>H</vceCode>
                    <vceDescription>Hardship</vceDescription>
                    <vceEffectiveDate>2001-04-30T16:23:40.100-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'59', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Charleston</city>
                        <line1></line1>
                        <line2>444 South Glen Creek St.</line2>
                        <line3></line3>
                        <postalCode>29401</postalCode>
                        <state>SC</state>
                        <zipCode>29401</zipCode>
                        <zipPlus4>1100</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>ND</vceCode>
                    <vceDescription>Not determined Community</vceDescription>
                    <vceEffectiveDate>1985-02-27T16:23:40.151-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'9', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Atlanta</city>
                        <line1></line1>
                        <line2>672 Summerhouse St.</line2>
                        <line3>Apt. 248</line3>
                        <postalCode>30302</postalCode>
                        <state>GA</state>
                        <zipCode>30302</zipCode>
                        <zipPlus4>404</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1916-08-05T16:23:40.134-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'9000508', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Tallahassee</city>
                        <line1>828 Woodland Ave.</line1>
                        <line2>Apt. 492</line2>
                        <line3></line3>
                        <postalCode>32301</postalCode>
                        <state>FL</state>
                        <zipCode>32301</zipCode>
                        <zipPlus4>0100</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>G</vceCode>
                    <vceDescription>Grandfathered</vceDescription>
                    <vceEffectiveDate>1975-09-02T16:23:40.161-04:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>2013-06-01T16:23:40.162-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'9000598', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Charleston</city>
                        <line1>890 Woodland Ave.</line1>
                        <line2></line2>
                        <line3>Apt. 352</line3>
                        <postalCode>29401</postalCode>
                        <state>SC</state>
                        <zipCode>29401</zipCode>
                        <zipPlus4>1100</zipPlus4>
                        <addressChangeDateTime>2019-09-26T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>N</vceCode>
                    <vceDescription>State No Full Service VA</vceDescription>
                    <vceEffectiveDate>1952-01-18T16:23:40.166-05:00</vceEffectiveDate>
                </eligibility>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1965-03-03T16:23:40.166-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'9000682', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1>876 Woodland Ave.</line1>
                        <line2></line2>
                        <line3></line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>X</vceCode>
                    <vceDescription>Ineligible</vceDescription>
                    <vceEffectiveDate>1906-07-27T16:23:40.163-05:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <geocodeDate>2019-09-26T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'9000756', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Raleigh</city>
                        <line1>483 Del Monte Rd.</line1>
                        <line2></line2>
                        <line3>Apt. 98</line3>
                        <postalCode>27601</postalCode>
                        <state>NC</state>
                        <zipCode>27601</zipCode>
                        <zipPlus4>0400</zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>X</vceCode>
                    <vceDescription>Ineligible</vceDescription>
                    <vceEffectiveDate>1966-06-19T16:23:40.165-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')

INSERT [synthea].[ee_summaries] ([ICN], [payload]) VALUES (N'9000777', N'<getEESummaryResponse xmlns="http://jaxws.webservices.esr.med.va.gov/schemas">
    <summary>
        <demographics>
            <contactInfo>
                <addresses>
                    <address>
                        <city>Melbourne</city>
                        <line1>8745 N Wickham Rd</line1>
                        <line2></line2>
                        <line3></line3>
                        <postalCode>32940</postalCode>
                        <state>FL</state>
                        <zipCode>32940</zipCode>
                        <zipPlus4></zipPlus4>
                        <addressChangeDateTime>2019-09-25T12:59:53.716-04:00</addressChangeDateTime>
                        <addressTypeCode>Residential</addressTypeCode>
                    </address>
                </addresses>
            </contactInfo>
        </demographics>
        <communityCareEligibilityInfo>
            <eligibilities>
                <eligibility>
                    <vceCode>U</vceCode>
                    <vceDescription>Urgent Care</vceDescription>
                    <vceEffectiveDate>1943-04-19T16:23:40.164-04:00</vceEffectiveDate>
                </eligibility>
            </eligibilities>
            <geocodingInfo>
                <addressLatitude>28.1123163</addressLatitude>
                <addressLongitude>-80.6992721</addressLongitude>
                <geocodeDate>2019-09-25T12:59:53.716-04:00</geocodeDate>
            </geocodingInfo>
        </communityCareEligibilityInfo>
    </summary>
    <eesVersion>5.6.0.01001</eesVersion>
    <invocationDate>2019-05-01T07:56:02</invocationDate>
</getEESummaryResponse>
')
