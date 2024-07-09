<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <xsl:element name="teaches">
            <xsl:apply-templates select="//teaches-tuple"/>        
        </xsl:element>      
    </xsl:template>

    <xsl:template match="//teaches-tuple">
        <xsl:element name="teacher">
            <xsl:element name="course">
                <xsl:value-of select="@course"/>
            </xsl:element>
            <xsl:element name="lecturer">
                <xsl:value-of select="@lecturer"/>
            </xsl:element>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>


