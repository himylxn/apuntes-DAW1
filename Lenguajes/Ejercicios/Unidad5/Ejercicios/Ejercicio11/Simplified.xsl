<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="text" indent="yes"/>

    <xsl:template match="/">
        Records:
        <xsl:apply-templates select="//record"/>
    </xsl:template>

    <xsl:template match="//record" mode="#default">
        ID:<xsl:value-of select="id"/>
        Titulo:<xsl:value-of select="title"/>
        Fecha registro:<xsl:value-of select="date"/>
    </xsl:template>

</xsl:stylesheet>