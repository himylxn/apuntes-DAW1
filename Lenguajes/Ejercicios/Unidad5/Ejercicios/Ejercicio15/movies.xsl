<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                
            </head>

            <body>
                <h1> Movies in the XML: <xsl:value-of select="count(//movie)"/> </h1>

                <ul>
                    <xsl:apply-templates select="//movie">
                        <xsl:sort select="@year" order="ascending"/>
                    </xsl:apply-templates>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="//movie">
        <li>
            Movie: <xsl:value-of select="title"/> - <xsl:value-of select="@year"/>
        </li>
    </xsl:template>

</xsl:stylesheet>