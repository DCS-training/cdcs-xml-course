<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="xs math xd"
    version="3.0">
    <xsl:output encoding="utf-8" method="html" omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="root">
        <html>
            <head>
                <!-- place head info here -->
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="front">
        <div class="front_plate">
            <img class="front_plate_image">
                <xsl:attribute name="src">
                    <xsl:value-of select="concat('./', ./@image)"/>
                </xsl:attribute>
            </img>
        </div>
    </xsl:template>
    
    <xsl:template match="stamp">
        <div class="backplate_stamp">
            <img class="stamp">
                <xsl:attribute name="src">
                    <xsl:value-of select="./@image"/>
                </xsl:attribute>
            </img>
        </div>
    </xsl:template>
    
    <xsl:template match="postcard">
        <hr/>
        <h1>Postcard</h1>
        <xsl:apply-templates/>
        <hr/>
    </xsl:template>
    
    <xsl:template match="content">
        <div class="content">
            <h2>Contents</h2>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="address">
        <div class="address">
            <h2>Name and Address</h2>
            <ul>
                <xsl:apply-templates/>
            </ul>
        </div>
    </xsl:template>
    
    <xsl:template match="name | co | street | town | county | country | postcode">
        <li>
            <b><xsl:value-of select="local-name(.)"/></b>&#160;<xsl:value-of select="."/>
        </li>
    </xsl:template>
    
    
    
</xsl:stylesheet>