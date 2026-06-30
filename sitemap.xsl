<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sm="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>XML Sitemap</title>
        <style>
          body { font-family: Arial, sans-serif; margin: 24px; }
          h1 { color: #1f2937; }
          table { border-collapse: collapse; width: 100%; }
          th, td { border: 1px solid #d1d5db; padding: 8px 10px; text-align: left; }
          th { background: #f3f4f6; }
          a { color: #2563eb; text-decoration: none; }
        </style>
      </head>
      <body>
        <h1>XML Sitemap</h1>
        <p>This sitemap was generated for search engines.</p>
        <table>
          <tr>
            <th>Location</th>
            <th>Last Modified</th>
            <th>Change Frequency</th>
            <th>Priority</th>
          </tr>
          <xsl:for-each select="/sm:urlset/sm:url">
            <tr>
              <td><a><xsl:attribute name="href"><xsl:value-of select="sm:loc"/></xsl:attribute><xsl:value-of select="sm:loc"/></a></td>
              <td><xsl:value-of select="sm:lastmod"/></td>
              <td><xsl:value-of select="sm:changefreq"/></td>
              <td><xsl:value-of select="sm:priority"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
