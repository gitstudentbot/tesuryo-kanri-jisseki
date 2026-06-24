<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:attribute-set name="cell-base">
	<xsl:attribute name="border">0.8pt solid</xsl:attribute>
	<xsl:attribute name="display-align">center</xsl:attribute>
</xsl:attribute-set>
<xsl:attribute-set name="top-less">
	<xsl:attribute name="border-bottom">0.8pt solid</xsl:attribute>
	<xsl:attribute name="border-right">0.8pt solid</xsl:attribute>
	<xsl:attribute name="border-left">0.8pt solid</xsl:attribute>
	<xsl:attribute name="display-align">0.8pt solid</xsl:attribute>
</xsl:attribute-set>
<xsl:attribute-set name="right-less">
	<xsl:attribute name="border-bottom">0.8pt solid</xsl:attribute>
	<xsl:attribute name="border-left">0.8pt solid</xsl:attribute>
	<xsl:attribute name="border-top">0.8pt solid</xsl:attribute>
	<xsl:attribute name="display-align">center</xsl:attribute>
</xsl:attribute-set>
<xsl:attribute-set name="left-less">
	<xsl:attribute name="border-right">0.8pt solid</xsl:attribute>
	<xsl:attribute name="border-top">0.8pt solid</xsl:attribute>
	<xsl:attribute name="border-bottom">0.8pt solid</xsl:attribute>
	<xsl:attribute name="display-align">center</xsl:attribute>
</xsl:attribute-set>
<xsl:attribute-set name="bot-less">
	<xsl:attribute name="border-top">0.8pt solid</xsl:attribute>
	<xsl:attribute name="border-left">0.8pt solid</xsl:attribute> 
	<xsl:attribute name="border-right">0.8pt solid</xsl:attribute>
	<xsl:attribute name="display-align">0.8pt solid</xsl:attribute>
</xsl:attribute-set>

<!-- =========================================================== -->
<!-- Root                                                        -->
<!-- =========================================================== -->
	<xsl:template match="Sales">
		<fo:root font-size="9pt" font-family="IPA Gothic, IPAGothic, Segoe UI Symbol">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="A4" page-height="210mm" page-width="297mm" margin-top="5mm" margin-bottom="10mm" margin-left="5mm" margin-right="5mm">
					<fo:region-body margin-top="27mm" margin-bottom="10mm" margin-left="5mm" margin-right="5mm"/>
					<fo:region-before extent="20mm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>

			<xsl:for-each select="Item">
				<fo:page-sequence master-reference="A4">
					<!--ヘッダー-->
					<fo:static-content flow-name="xsl-region-before">
						<fo:block text-align="center" font-size="20pt" margin-top="10mm">手 数 料 管 理 簿</fo:block>
						<fo:block-container absolute-position="absolute">
							<fo:block text-align="right" margin-right="2mm">
								<fo:external-graphic src="logo.png" content-width="scale-down-to-fit" content-height="scale-down-to-fit" height="20mm" width="50mm"/>
							</fo:block>
						</fo:block-container>
					</fo:static-content>

					<fo:flow flow-name="xsl-region-body">
						<fo:block space-after="2mm">
							<fo:inline-container width="50%" text-align="left">
								<fo:block>
									
								</fo:block>
							</fo:inline-container>
							<fo:inline-container width="50%" text-align="right">
								<fo:block>
									【手数料の徴収完了後２年間保存】
								</fo:block>
							</fo:inline-container>
						</fo:block>

						<fo:table table-layout="fixed" width="100%" border-collapse="collapse">
							<fo:table-column column-number="1" column-width="17%"/>
							<fo:table-column column-number="2" column-width="20%"/>
							<fo:table-column column-number="3" column-width="9%"/>
							<fo:table-column column-number="4" column-width="11%"/>
							<fo:table-column column-number="5" column-width="11%"/>
							<fo:table-column column-number="6" column-width="10%"/>
							<fo:table-column column-number="7" column-width="10%"/>
							<fo:table-column column-number="8" column-width="12%"/>
							<fo:table-body>
								<!--タイトル行（上）-->
								<fo:table-row height="5mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block>
											①
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block>
											②
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block>
											③
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base" number-columns-spanned="2">
										<fo:block>
											④手数料
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base" number-columns-spanned="2">
										<fo:block>
											⑤手数料の算出根拠
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base" number-rows-spanned="2">
										<fo:block text-align="center">
											備考
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row height="9mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											支払者氏名または事業所名称
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											徴収年月日
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											手数料の種類
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											手数料額(※)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											第二種特別加入
										</fo:block>
										<fo:block text-align="center">
											保険料に係る手数料
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											賃金等
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											手数料割合等
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row height="12mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.P_Recruiter/Recruiter/Recruiter.P_Name"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block>
                      <fo:table width="100%" table-layout="fixed">
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(Sales.U_A4F5C54C3A05795D4317B51D7ACC30, '/')"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>年</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(substring-after(Sales.U_A4F5C54C3A05795D4317B51D7ACC30, '/'), '/')"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>月</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-after(substring-after(Sales.U_A4F5C54C3A05795D4317B51D7ACC30, '/'), '/')"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>日</fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                        </fo:table-body>
                      </fo:table>
                    </fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_6DD59DAC8DFC0542DEC3E04A2ABC52"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_ED4B291DE09813D9B34598FC038559"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_5C017FFB6B773724F088B6FC278A04"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_14ADBECA24673733EF4B42296F1001"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_4235A759575918B9AE12FF0B5EB863"/>
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_3AF61B6DFFFE01E18FD96B4143A8CD"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<!--２行目-->
								<fo:table-row height="12mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											↓
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
								</fo:table-row>									
								<!--３行目-->
								<fo:table-row height="12mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											↓
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<!--４行目-->
								<fo:table-row height="12mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											↓
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
										
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">

										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
							


					</fo:flow>
				</fo:page-sequence>
			</xsl:for-each>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>