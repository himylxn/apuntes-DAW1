<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    
    <xsl:output method="html" indent="yes"/>
    
    
    <xsl:template match="/">
        <!DOCTYPE html>
        <html lang="en">
            <head>
                <title>Document</title>
            </head>
            <body>
                    <h1><xsl:value-of select="count(//record[date/year=1790 and city='Glasgow'])"/> </h1>   

                    <xsl:apply-templates select="//record"/>
            </body>
                </html>
            </xsl:template>
            
            <xsl:template match="record" mode="#default">
                <xsl:if test="date/year >= 1790 and city = 'Glasgow'">
                    <p style="color:red;">ID: [ <xsl:value-of select="id"/> ]</p>
                    <p>Nombre ciudad: <xsl:value-of select="city"/> </p>
                    <p> <xsl:value-of select="text/p[1]"/> </p>
                </xsl:if>
            </xsl:template>
            
        </xsl:stylesheet>