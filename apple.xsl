<!-- <xsl:stylesheet version="1.0" -->
<!-- xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> -->
<!--   <xsl:template match="/"> -->
<!--     <xsl:copy> -->
<!--       <xsl:for-each-group select="product[quantity >= 10]" group-by="category"> -->
<!--         <category> -->
<!--           <xsl:attribute name="name"> -->
<!--             <xsl:value-of select="current-grouping-key()" /> -->
<!--           </xsl:attribute> -->
<!--           <xsl:for-each select="current-group()"> -->
<!--             <xsl:sort select="price" order="descending" /> -->
<!--             <product> -->
<!--               <xsl:attribute name="product_name"> -->
<!--                 <xsl:value-of select="product_name" /> -->
<!--               </xsl:attribute> -->
<!--               <xsl:copy-of select="category" /> -->
<!--               <xsl:copy-of select="price" /> -->
<!--               <xsl:copy-of select="quantity" /> -->
<!--               <total-price> -->
<!--                 <xsl:value-of select="price * quantity" /> -->
<!--               </total-price> -->
<!--             </product> -->
<!--           </xsl:for-each> -->
<!--         </category> -->
<!--       </xsl:for-each-group> -->
<!--     </xsl:copy> -->
<!--   </xsl:template> -->

<!--   <xsl:template match="@* | node()"> -->
<!--     <xsl:copy> -->
<!--       <xsl:apply-templates select="@* | node()" /> -->
<!--     </xsl:copy> -->
<!--   </xsl:template> -->

<!-- </xsl:stylesheet> -->

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
    <head>
    </head>
    <body>
      <xsl:for-each select="products/product">
        <xsl:sort select="price" order="ascending" data-type="number" />
        <table border="1">
        <tr>
         <td><xsl:value-of select="product_name"/>  </td>
         <td><xsl:value-of select="category"/>  </td>
         <td><xsl:value-of select="price"/> </td> 
         <td><xsl:value-of select="quantity"/>  </td>
       </tr>
     </table>


  </xsl:for-each>
</body>
</html>
  </xsl:template>

</xsl:stylesheet>
