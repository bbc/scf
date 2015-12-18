<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tt="http://www.w3.org/ns/ttml"
    xmlns:ebuttm="urn:ebu:tt:metadata"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output omit-xml-declaration="yes" method="text" exclude-result-prefixes="#all"></xsl:output>
    <xsl:template match="/">
        <xsl:value-of select="3600*fn:number(fn:tokenize(tt:tt/tt:head/tt:metadata/ebuttm:documentMetadata/ebuttm:documentStartOfProgramme,':')[1])+60*fn:number(fn:tokenize(tt:tt/tt:head/tt:metadata/ebuttm:documentMetadata/ebuttm:documentStartOfProgramme,':')[2])+fn:number(fn:tokenize(tt:tt/tt:head/tt:metadata/ebuttm:documentMetadata/ebuttm:documentStartOfProgramme,':')[3])"/>       
    </xsl:template>
</xsl:stylesheet>
