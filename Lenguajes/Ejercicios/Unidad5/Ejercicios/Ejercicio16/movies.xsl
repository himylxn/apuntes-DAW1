<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="html" indent="yes"/>


    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="style.css"/>
            </head>

            <body>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Director</th>
                        <th>Year</th>
                    </tr>

                    <xsl:apply-templates select="//movie"/>

                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="//movie">
        <xsl:if test="@year &gt; 1999">
        <tr>
            <td> <xsl:value-of select="title"/> </td>
            <td><xsl:value-of select="director"/></td>
            <td><xsl:value-of select="@year"/></td>
        </tr>
        </xsl:if>
        
    </xsl:template>

</xsl:stylesheet>