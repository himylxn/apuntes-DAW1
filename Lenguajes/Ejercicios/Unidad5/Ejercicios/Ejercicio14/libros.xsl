<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <style>  

                    th{
                        background-color:#1e90ff; 
                        color:#000000;
                    }
                
                </style>
            </head>

            <body>
                <table>
                    <caption> <xsl:value-of select="count(//book)"/> </caption>

                    <tr>
                        <th>Author</th>
                        <th>Title</th>
                    </tr>

                    <xsl:apply-templates select="//book"/>
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="//book">
    <tr>
        <xsl:attribute name="style">
        <xsl:choose>
            <xsl:when test="price &lt;= 10">
                <xsl:text>background-color: #7FFFD4;</xsl:text>
            </xsl:when>
            <xsl:when test="price &lt;=15">
                <xsl:text>background-color:#ffd700;</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>background-color:#dc143c;color:#000000;</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
        </xsl:attribute>
            <td> <xsl:value-of select="author"/> </td>
            <td> <xsl:value-of select="title"/> </td>
        </tr>
    </xsl:template>

</xsl:stylesheet>