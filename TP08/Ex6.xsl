<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>Pedidos</h2>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th style="text-align:left">Horario</th>
						<th style="text-align:left">Produto</th>
						<th style="text-align:left">Quantidade</th>
						<th style="text-align:left">Unidade</th>
					</tr>
					<xsl:for-each select="pedidos/pedido">
						<tr>
							<xsl:choose>
								<xsl:when test="quantidade &gt; 10">
									<td>
										<xsl:value-of select="horario"/>
									</td>
									<td>
										<xsl:value-of select="produto"/>
									</td>
									<td bgcolor="#ff00ff">
										<xsl:value-of select="quantidade"/>
									</td>
									<td>
										<xsl:value-of select="unidade"/>
									</td>
								</xsl:when>
							</xsl:choose>
							<xsl:choose>
								<xsl:when test="quantidade &lt; 10">
									<td>
										<xsl:value-of select="horario"/>
									</td>
									<td>
										<xsl:value-of select="produto"/>
									</td>
									<td bgcolor="#ff0000">
										<xsl:value-of select="quantidade"/>
									</td>
									<td>
										<xsl:value-of select="unidade"/>
									</td>
								</xsl:when>
							</xsl:choose>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>