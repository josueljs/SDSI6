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
							<td>
								<xsl:value-of select="horario"/>
							</td>
							<td>
								<xsl:value-of select="produto"/>
							</td>
							<td>
								<xsl:value-of select="quantidade"/>
							</td>
							<td>
								<xsl:value-of select="unidade"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>