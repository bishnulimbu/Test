<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>User</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>fullName</th>
        <th>Address</th>
        <th>post</th>
        <th>salary</th>
        <th>email</th>
      </tr>
      <xsl:for-each select="catalog/person/user">
        <tr>
          <td><xsl:value-of select="fullName"/></td>
          <td><xsl:value-of select="Address"/></td>
          <td><xsl:value-of select="post"/></td>
          <td><xsl:value-of select="salary"/></td>
          <td><xsl:value-of select="email"/></td>
        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
