<!-- <?xml version="1.0"?> -->
<!-- <xsl:stylesheet version="1.0" -->
<!-- xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> -->

<!-- <xsl: template match="/"> -->
<!--   <html> -->
<!--     <body> -->
<!--       <h1>List</h1> -->
<!--       <ul> -->
<!--         <li> -->


<!-- </xsl:stylesheet> -->
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Employee List</title>
            </head>
            <body>
                <h1>Employee List</h1>
                <ul>
                    <xsl:apply-templates select="employees/employee"/>
                </ul>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="employee">
        <li>
            <strong>Name:</strong> <xsl:value-of select="name"/><br/>
            <strong>Department:</strong> <xsl:value-of select="department"/><br/>
            <strong>Job Title:</strong> <xsl:value-of select="post"/><br/>
            <strong>Salary:</strong> <xsl:value-of select="salary"/><br/>
            <strong>Email:</strong><xsl:value-of select="email"/>
        </li>
    </xsl:template>

</xsl:stylesheet>
