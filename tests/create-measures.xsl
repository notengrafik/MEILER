<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs"
  version="2.0">
  
  <xsl:param name="measures" as="xs:string"/>
  
  <xsl:output indent="yes"/>
  
  <xsl:template match="/">
    <mei xmlns="http://www.music-encoding.org/ns/mei" meiversion="3.0.0">
      <meiHead>
        <fileDesc>
          <titleStmt>
            <title></title>
          </titleStmt>
          <pubStmt></pubStmt>
        </fileDesc>
        <workDesc>
          <work>
            <titleStmt>
              <title></title>
            </titleStmt>
          </work>
        </workDesc>
      </meiHead>
      <music>
        <body>
          <mdiv>
            <score>
              <scoreDef meter.count="4" meter.unit="4">
                <staffGrp>
                  <staffDef n="1" clef.line="2" clef.shape="G" lines="5"/>
                </staffGrp>
              </scoreDef>
              <section>
                <xsl:for-each select="1 to xs:integer($measures)">
                  <measure n="{.}">
                    <staff n="1">
                      <layer n="1">
                        <note pname="g" oct="4" dur="4"/>
                        <note pname="g" oct="4" dur="4"/>
                        <note pname="g" oct="4" dur="4"/>
                        <note pname="g" oct="4" dur="4"/>
                      </layer>
                    </staff>
                  </measure>
                </xsl:for-each>
              </section>
            </score>
          </mdiv>
        </body>
      </music>
    </mei>
  </xsl:template>
  
</xsl:stylesheet>