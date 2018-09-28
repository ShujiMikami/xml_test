<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" />
  <xsl:template match="/">
    <html>
      <head>
        <title><xsl:text>要求リスト</xsl:text></title>
      </head>
      
      <h1><xsl:text>要求リスト</xsl:text></h1>
      
      <table border="1">
        <tr>
          <th><xsl:text>カテゴリ</xsl:text></th>
          <th><xsl:text>要求</xsl:text></th>
          <th><xsl:text>要求番号/仕様番号</xsl:text></th>
          <th><xsl:text>説明</xsl:text></th>
        </tr>
        <xsl:for-each select="要求リスト/要求">
          <tr>
            <td><xsl:value-of select="カテゴリ" /></td>
            <td><xsl:value-of select="要求or仕様" /></td>
            <td><xsl:value-of select="要求番号" /></td>
            <td><xsl:value-of select="内容" /></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td><xsl:text>理由</xsl:text></td>
            <td><xsl:value-of select="理由" /></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td><xsl:text>説明</xsl:text></td>
            <td><xsl:value-of select="説明" /></td>
          </tr>
          <xsl:for-each select = "仕様">
            <tr>
              <td></td>
              <td colspan="3"><xsl:value-of select="領域" /></td>
            </tr>
            <tr>
              <td></td>
              <td><xsl:value-of select="仕様確認状況" /></td>
              <td><xsl:value-of select="仕様番号" /></td>
              <td><xsl:value-of select="内容" /></td>
            </tr>
            <tr>
              <td></td>
              <td></td>
              <td><xsl:text>説明</xsl:text></td>
              <td><xsl:value-of select="説明" /></td>
            </tr>

          </xsl:for-each>
        </xsl:for-each>
      </table>
    </html>
  </xsl:template>
</xsl:stylesheet>
