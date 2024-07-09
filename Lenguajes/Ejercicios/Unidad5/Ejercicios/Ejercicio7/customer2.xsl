<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <P>The name of the cliente is <xsl:value-of select="//name/first"/> and his surname is <xsl:value-of select="//name/last"/> . He lives at <xsl:value-of select="//city"/> in <xsl:value-of select="//country"/></P>
    </xsl:template>

</xsl:stylesheet>