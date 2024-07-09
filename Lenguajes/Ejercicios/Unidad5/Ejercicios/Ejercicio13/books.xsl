<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    
    <xsl:output method="html"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Document</title>
            </head>
            <body>
                <ol>
                    <xsl:apply-templates select="books/book[price>10]"/>
                </ol>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="//book">
            <li>Titulo: <xsl:value-of select="title"/>
                Author: <xsl:value-of select="author"/>
                Precio: <xsl:value-of select="price"/></li> 
        
    </xsl:template>
    
</xsl:stylesheet>
