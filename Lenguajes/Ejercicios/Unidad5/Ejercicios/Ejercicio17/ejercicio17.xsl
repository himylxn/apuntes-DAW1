<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="xml" indent="yes"/>


    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="style.css"/>
            </head>

            <body>
                <h1>Swiss Activities</h1>

                <table>
                <tr>
                    <th>Identifier</th>
                    <th>Title</th>
                    <th>Description</th>
                </tr>

                <xsl:apply-templates select="//iati-activity"/>

                </table>
                
            
            </body>
        </html>
    </xsl:template>

    <xsl:template match="//iati-activity">
        <tr>
            <td><xsl:value-of select="iati-identifier"/></td>
            <td><xsl:value-of select="title/narrative"/></td>
            <td><xsl:value-of select="description/narrative"/></td>
        </tr>
    </xsl:template>

</xsl:stylesheet>