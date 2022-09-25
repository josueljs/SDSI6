<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h2>Voos</h2>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th style="text-align:left">Codigo</th>
						<th style="text-align:left">Origem</th>
						<th style="text-align:left">Destino</th>
						<th style="text-align:left">Horario</th>
						<th style="text-align:left">Compania</th>
						<th style="text-align:left">Operando</th>
					</tr>
					<xsl:for-each select="movimento/voo">
						<xsl:sort select="origem"/>
						<tr>
							<td>
								<xsl:value-of select="codigo"/>
							</td>
							<td>
								<xsl:value-of select="origem"/>
							</td>
							<td>
								<xsl:value-of select="destino"/>
							</td>
							<td>
								<xsl:value-of select="horario"/>
							</td>
							<td>
								<xsl:value-of select="compania"/>
							</td>
							<td>
								<xsl:value-of select="operando"/>
							</td>

						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>