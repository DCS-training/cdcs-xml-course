<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    exclude-result-prefixes="xs math xd"
    version="3.0">
    <xsl:output encoding="utf-8" method="html" omit-xml-declaration="yes"/>
    
    <xsl:template match="root">
        <html>
            <head/>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <!-- template for processing the name -->
    <xsl:template match="name">
        <p>
            <xsl:value-of select="."/>
        </p>
    </xsl:template>
    
    <xsl:template match="content | co | street | town | city | country | county | postcode">
        <!-- noop -->
    </xsl:template>
    
</xsl:stylesheet>