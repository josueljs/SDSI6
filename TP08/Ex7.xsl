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
						<tr>
							<td>
								<span style="color:#0000FF">
									<xsl:value-of select="codigo"/>
								</span>
							</td>
							<td>
								<span style="color:#00FF00">
									<xsl:value-of select="origem"/>
								</span>
							</td>
							<td>
								<span style="color:#FF0000">
									<xsl:value-of select="destino"/>	
								</span>
							</td>
							<td>
								<span style="color:#00ff00">
									<xsl:value-of select="horario"/>								
								</span>
							</td>
							<td>
								<span style="color:#FFD700">
									<xsl:value-of select="compania"/>
								</span>
							</td>
							<td>
								<span style="color:#191970">
									<xsl:value-of select="operando"/>	
								</span>
							</td>

						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>