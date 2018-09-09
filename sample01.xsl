<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" />
  <xsl:template match="/">
    <html>
    <head>
    <title><xsl:text>ゲーム所持リスト</xsl:text></title>
    </head>
    <h1><xsl:text>ゲーム所持リスト</xsl:text></h1>
    <table>
    <tr>
        <th><xsl:text>ゲームタイトル</xsl:text></th>
        <th><xsl:text>購入日</xsl:text></th>
        <th><xsl:text>購入価格</xsl:text></th>
    </tr>
    <xsl:for-each select="ゲーム所持リスト/ゲーム情報">
    <tr>
        <td><xsl:value-of select="ゲームタイトル" /></td>
        <td><xsl:value-of select="購入日" /></td>
        <td><xsl:value-of select="購入価格" /></td>
    </tr>
    </xsl:for-each>
    </table>
    </html>
  </xsl:template>
</xsl:stylesheet>
