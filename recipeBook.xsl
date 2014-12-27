<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
               xmlns:FM="http://www.filemaker.com/fmpxmlresult"
                >
  
<xsl:template match="/">
<html>
<body>
<h2>Filemaker Recipe Book</h2>
<table>
	<tr>
		<th width="100" align="left">Section</th>
		<th width="200" align="left">Recipe</th>
		<th width="300" align="left">Description</th>
		<th width="50" align="center">Priority</th>
	</tr>
<xsl:for-each select="//FM:RESULTSET/FM:ROW">
	<tr>
		<td><xsl:value-of select="FM:COL[1]/FM:DATA[1]/text()" /></td>
		<td><xsl:value-of select="FM:COL[4]/FM:DATA[1]/text()" /></td>
		<td><xsl:value-of select="FM:COL[2]/FM:DATA[1]/text()" /></td>
		<td align="center"><xsl:value-of select="FM:COL[3]/FM:DATA[1]/text()" /></td>
	</tr>
	<tr/>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>