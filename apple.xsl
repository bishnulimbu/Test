<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="yes"/>

  <!-- Task (a): Filter out products with quantity less than 10 -->
  <xsl:template match="products">
    <xsl:copy>
      <xsl:apply-templates select="product[quantity >= 10]"/>
    </xsl:copy>
  </xsl:template>

  <!-- Task (b): Group products by category -->
  <xsl:template match="product">
    <xsl:variable name="categoryName" select="category"/>
    <xsl:if test="generate-id() = generate-id(key('category-key', $categoryName)[1])">
      <category>
        <xsl:attribute name="name">
          <xsl:value-of select="$categoryName"/>
        </xsl:attribute>
        <!-- Task (c): Sort products by price in descending order -->
        <xsl:apply-templates select="key('category-key', $categoryName)">
          <xsl:sort select="price" order="descending"/>
        </xsl:apply-templates>
      </category>
    </xsl:if>
  </xsl:template>

  <!-- Task (d): Transform productname into an attribute -->
  <xsl:template match="product">
    <product productname="{productname}">
      <xsl:apply-templates select="@*|node()"/>
    </product>
  </xsl:template>

  <!-- Task (e): Add a new element called total-price -->
  <xsl:template match="product">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
      <total-price>
        <xsl:value-of select="price * quantity"/>
      </total-price>
    </xsl:copy>
  </xsl:template>

  <!-- Key to group products by category -->
  <xsl:key name="category-key" match="product" use="category"/>
  
  <!-- Identity template to copy all other elements as is -->
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
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

<!-- <xsl:stylesheet version="1.0" -->
<!-- xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> -->
<!-- <xsl:template match="/"> -->
<!--   <html> -->
<!--     <head> -->
<!--     </head> -->
<!--     <body> -->
<!--       <xsl:for-each select="products/product"> -->
<!--         <xsl:sort select="price" order="ascending" data-type="number" /> -->
<!--         <table border="1"> -->
<!--         <tr> -->
<!--          <td><xsl:value-of select="product_name"/>  </td> -->
<!--          <td><xsl:value-of select="category"/>  </td> -->
<!--          <td><xsl:value-of select="price"/> </td>  -->
<!--          <td><xsl:value-of select="quantity"/>  </td> -->
<!--        </tr> -->
<!--      </table> -->


<!--   </xsl:for-each> -->
<!-- </body> -->
<!-- </html> -->
<!--   </xsl:template> -->

<!-- </xsl:stylesheet> -->
<!-- <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> -->
<!--   <xsl:template match="products"> -->
<!--     <xsl:apply-templates select="product[quantity >= 10]"/> -->
<!--   </xsl:template> -->

<!--   <xsl:template match="product"> -->
<!--     <xsl:variable name="categoryName" select="category"/> -->
<!--     <xsl:if test="generate-id() = generate-id(key('category-key', $categoryName)[1])"> -->
<!--       <xsl:text>Category: </xsl:text><xsl:value-of select="$categoryName"/> -->
<!--       <xsl:text>&#xA;</xsl:text> -->
<!--     </xsl:if> -->
<!--     <xsl:text>Product Name: </xsl:text><xsl:value-of select="productname"/> -->
<!--     <xsl:text>&#xA;</xsl:text> -->
<!--     <xsl:text>Price: </xsl:text><xsl:value-of select="price"/> -->
<!--     <xsl:text>&#xA;</xsl:text> -->
<!--     <xsl:text>Quantity: </xsl:text><xsl:value-of select="quantity"/> -->
<!--     <xsl:text>&#xA;</xsl:text> -->
<!--     <xsl:text>Total Price: </xsl:text><xsl:value-of select="price * quantity"/> -->
<!--     <xsl:text>&#xA;&#xA;</xsl:text> -->
<!--   </xsl:template> -->

<!--   <xsl:key name="category-key" match="product" use="category"/> -->
<!--    -->
<!--   <xsl:template match="@*|node()"> -->
<!--     <xsl:apply-templates select="@*|node()"/> -->
<!--   </xsl:template> -->
<!-- </xsl:stylesheet> -->
