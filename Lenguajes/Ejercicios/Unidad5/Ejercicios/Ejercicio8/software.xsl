<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
            <html>
                <head></head>
                <body>
                    <ul>
                        <xsl:apply-templates select="//product"/>
                    </ul>
                </body>
            </html>
    </xsl:template>

    <xsl:template match="//product">
        <li>
        Name: <xsl:value-of select="name"/>
        Weight: <xsl:value-of select="weight"/>
        </li>
    </xsl:template>
</xsl:stylesheet>