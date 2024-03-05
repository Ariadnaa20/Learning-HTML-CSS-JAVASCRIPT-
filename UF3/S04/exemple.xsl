<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<body>
<h1>Welcome to the second hand auto market</h1>
<h2>Available vehicles:</h2>
<div>
<xsl:for-each select="collection/car">
<h3>
<xsl:value-of select="platenumber"/>
</h3>
<table border="2">
<tr bgcolor="#0066ff">
<th>Brand</th>
<th>Model</th>
<th>Year</th>
<th>Horsepower</th>
<th>Kms</th>
<th>Price</th>
</tr>
<tr>
<td>
<xsl:value-of select="brand"/>
</td>
<td>
<xsl:value-of select="model"/>
</td>
<td>
<xsl:value-of select="year"/>
</td>
<td>
<xsl:value-of select="horsepower"/>
</td>
<td>
<xsl:value-of select="kms"/>
</td>
<td>
<xsl:value-of select="price"/>
</td>
</tr>
</table>
<br/>
</xsl:for-each>
</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

CONVERTIT 
t'ho fa el processdor XSLT ho pots fer servir al examen