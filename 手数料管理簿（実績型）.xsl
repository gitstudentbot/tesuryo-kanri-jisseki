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
		<fo:root font-size="8pt" font-family="IPA Gothic, IPAGothic, Segoe UI Symbol">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="A4" page-height="210mm" page-width="297mm" margin-top="5mm" margin-bottom="5mm" margin-left="5mm" margin-right="5mm">
					<fo:region-body margin-top="27mm" margin-bottom="5mm" margin-left="5mm" margin-right="5mm"/>
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

						<fo:table table-layout="fixed" width="100%" border-collapse="collapse" space-after="5mm">
							<fo:table-column column-number="1" column-width="16%"/>
							<fo:table-column column-number="2" column-width="16%"/>
							<fo:table-column column-number="3" column-width="9%"/>
							<fo:table-column column-number="4" column-width="10%"/>
							<fo:table-column column-number="5" column-width="11%"/>
							<fo:table-column column-number="6" column-width="9%"/>
							<fo:table-column column-number="7" column-width="9%"/>
							<fo:table-column column-number="8" column-width="9%"/>
							<fo:table-column column-number="9" column-width="11%"/>
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
											手数料額(未徴収)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base" number-rows-spanned="2">
										<fo:block text-align="center">
											備考
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row height="8mm">
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
											手数料額(総額)
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
								<!--１行目-->
								<fo:table-row height="11mm">
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
											------------
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_3AF61B6DFFFE01E18FD96B4143A8CD"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>

						<fo:table table-layout="fixed" width="100%">
							<fo:table-column column-number="1" column-width="16%"/>
							<fo:table-column column-number="2" column-width="16%"/>
							<fo:table-column column-number="3" column-width="9%"/>
							<fo:table-column column-number="4" column-width="10%"/>
							<fo:table-column column-number="5" column-width="11%"/>
							<fo:table-column column-number="6" column-width="9%"/>
							<fo:table-column column-number="7" column-width="9%"/>
							<fo:table-column column-number="8" column-width="9%"/>
							<fo:table-column column-number="9" column-width="11%"/>
							<fo:table-body>
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
											手数料額(未徴収)
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base" number-rows-spanned="2">
										<fo:block text-align="center">
											備考
										</fo:block>
									</fo:table-cell>
								</fo:table-row>

								<fo:table-row height="8mm">
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
											手数料額(徴収済み)
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
								<!--１行目-->
								<fo:table-row height="11mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											↓
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block>
                      <fo:table width="100%" table-layout="fixed">
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(Sales.U_FE1EB6A16DA180C8684C14862B97FE, '/')"/> <!--徴収年月日２-->
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>年</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(substring-after(Sales.U_FE1EB6A16DA180C8684C14862B97FE, '/'), '/')"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>月</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-after(substring-after(Sales.U_FE1EB6A16DA180C8684C14862B97FE, '/'), '/')"/>
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
										<!--手数料の種類2-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_0FDD4F35389F6EC23D74FDB72E1CEF"/> <!--手数料(徴収済み1)-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--第二種特別加入2-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base"> 
										<fo:block text-align="center">
											<!--賃金等2-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base"> 
										<fo:block text-align="center">
											<!--手数料割合等2-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base"> 
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_6BBFF6D160B5FFAF01AEF3457AA36F"/> <!--手数料額(未徴収)1-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_7365364FAD833294011B332432096A"/> <!--備考2-->
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<!--２行目-->
								<fo:table-row height="11mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											↓
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block>
                      <fo:table width="100%" table-layout="fixed">
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(Sales.U_BE64B9FAE596157EFB068D30EF8A93, '/')"/> <!--徴収年月日３-->
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>年</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(substring-after(Sales.U_BE64B9FAE596157EFB068D30EF8A93, '/'), '/')"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>月</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-after(substring-after(Sales.U_BE64B9FAE596157EFB068D30EF8A93, '/'), '/')"/>
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
											<!--手数料の種類3-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_F8FF157C641754197FFD5299270F97"/> <!--手数料(徴収済み2)-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--第二種特別加入3-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--賃金等3-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--手数料割合等3-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_EDE6E643DFA4C3E0E56253EBFD4008"/> <!--手数料額(未徴収2)-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_E877C2228A68824FE6794CA0666ACD"/> <!--備考3-->
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<!--３行目-->
								<fo:table-row height="11mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											↓
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block>
                      <fo:table width="100%" table-layout="fixed">
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(Sales.U_4489DD0DB78903A8B552867490EBBD, '/')"/> <!--徴収年月日4-->
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>年</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(substring-after(Sales.U_4489DD0DB78903A8B552867490EBBD, '/'), '/')"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>月</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-after(substring-after(Sales.U_4489DD0DB78903A8B552867490EBBD, '/'), '/')"/>
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
											<!--手数料の種類4-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_D40F5A8F74DEEF2806040A17CF9F84"/> <!--手数料(徴収済み3)-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--第二種特別加入4-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--賃金等4-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--手数料割合等4-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_3B205F8A3831F5E50327D9D8079B69"/><!--手数料額(未徴収３)-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_3675E99302B090629207593572541C"/><!--備考4-->
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<!--4行目-->
								<fo:table-row height="11mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											↓
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block>
                      <fo:table width="100%" table-layout="fixed">
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(Sales.U_00743CCFB954FCEAAE7F0703EEBE05, '/')"/> <!--徴収年月日5-->
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>年</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(substring-after(Sales.U_00743CCFB954FCEAAE7F0703EEBE05, '/'), '/')"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>月</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-after(substring-after(Sales.U_00743CCFB954FCEAAE7F0703EEBE05, '/'), '/')"/>
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
											<!--手数料の種類5-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_8CBB70A9C56C566243C1F36D079666"/> <!--手数料(徴収済み4)-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--第二種特別加入5-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--賃金等5-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--賃金割合等5-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_A7B1C784027F47AFB9FF5270CDD776"/> <!--手数料額(未徴収4)-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_618CCE516875A5860A3F903B8BB3DC"/> <!--備考５-->
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<!--5行目-->
								<fo:table-row height="11mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											↓
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block>
                      <fo:table width="100%" table-layout="fixed">
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(Sales.U_40B755E23AC594A96132365116A30B, '/')"/> <!--徴収年月日6-->
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>年</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(substring-after(Sales.U_40B755E23AC594A96132365116A30B, '/'), '/')"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>月</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-after(substring-after(Sales.U_40B755E23AC594A96132365116A30B, '/'), '/')"/>
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
											<!--手数料の種類6-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_99450C4063375BB7CECF5ACF366685"/> <!--手数料(徴収済み5)-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--第二種特別加入6-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--賃金等6-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--手数料割合等６-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_CF917758D53811ED680C45CA0D2B59"/> <!--手数料額(未徴収5)-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_A41E396822E3A5DF873CF7DBE5999A"/> <!--備考６-->
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<!--６行目-->
								<fo:table-row height="11mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											↓
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block>
                      <fo:table width="100%" table-layout="fixed">
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(Sales.U_EECA980068CBDCF3D018AFE3CC9847, '/')"/> <!--徴収年月日7-->
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>年</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(substring-after(Sales.U_EECA980068CBDCF3D018AFE3CC9847, '/'), '/')"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>月</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-after(substring-after(Sales.U_EECA980068CBDCF3D018AFE3CC9847, '/'), '/')"/>
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
											<!--手数料の種類７-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_E797958312B5E5B11730AC458DD64D"/> <!--手数料(徴収済み６)-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--第二種特別加入７-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--賃金等7-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--手数料割合等7-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_148078DA8B1DA2C4E15B715E21F847"/> <!--手数料額(未徴収6)-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_118073E03CE6BBBA1094B917C8FC41"/> <!--備考７-->
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<!--7行目-->
								<fo:table-row height="11mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											↓
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block>
                      <fo:table width="100%" table-layout="fixed">
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(Sales.U_7AE65A349CC613F8942905C6E4138E, '/')"/> <!--徴収年月日８-->
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>年</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(substring-after(Sales.U_7AE65A349CC613F8942905C6E4138E, '/'), '/')"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>月</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-after(substring-after(Sales.U_7AE65A349CC613F8942905C6E4138E, '/'), '/')"/>
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
											<!--手数料の種類8-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_31FDD68C0B4E84C81112912A154000"/> <!--手数料(徴収済み7)-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--第二種特別加入８-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--賃金等８-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--手数料の割合等８-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_D3B88FDC668AF8265525F5F17039E6"/>	<!--手数料額(未徴収7)-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_879C9436096EC6725C1195E0BCAB4E"/> <!--備考8-->
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<!--８行目-->
								<fo:table-row height="11mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											↓
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block>
                      <fo:table width="100%" table-layout="fixed">
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(Sales.U_0C09A0BC82E0FEFB781D843BDA0661, '/')"/> <!--徴収年月日９-->
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>年</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(substring-after(Sales.U_0C09A0BC82E0FEFB781D843BDA0661, '/'), '/')"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>月</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-after(substring-after(Sales.U_0C09A0BC82E0FEFB781D843BDA0661, '/'), '/')"/>
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
											<!--手数料の種類９-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_01C1A2FF0DF62F0FB6BEB6DD531859"/> <!--手数料(徴収済み8)-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--第二種特別加入9-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--賃金等９-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--手数料割合等９-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_00BA6F8BDFBEA94C59E955EF5AC835"/> <!--手数料額(未徴収8)-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_DF015D8BCED841573AAB57626CB295"/> <!--備考９-->
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<!--９行目-->
								<fo:table-row height="11mm">
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											↓
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block>
                      <fo:table width="100%" table-layout="fixed">
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(Sales.U_CF938C57B95AFE1ADFA733D3219EA6, '/')"/> <!--徴収年月日１０-->
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>年</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(substring-after(Sales.U_CF938C57B95AFE1ADFA733D3219EA6, '/'), '/')"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>月</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-after(substring-after(Sales.U_CF938C57B95AFE1ADFA733D3219EA6, '/'), '/')"/>
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
											<!--手数料の種類10-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_24D5EF1469C2F6BED695A2C15BB430"/> <!--手数料(徴収済み9)-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--第二種特別加入１０-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--賃金等１０-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<!--手数料割合等１０-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_F80BDC1E77774FA7B88A884CB6DFE9"/> <!--手数料額(未徴収9)-->
										</fo:block>
									</fo:table-cell>
									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
											<xsl:value-of select="Sales.U_A2BFE150A3592E3DCCAE01EA3A0FDF"/> <!--備考１０-->
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<!--１０行目-->
								<fo:table-row height="11mm">

									<fo:table-cell xsl:use-attribute-sets="cell-base">
										<fo:block text-align="center">
										↓
									</fo:block>
								</fo:table-cell>
								<fo:table-cell xsl:use-attribute-sets="cell-base">
									<fo:block>
                      <fo:table width="100%" table-layout="fixed">
                        <fo:table-body>
                          <fo:table-row>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(Sales.U_7109D51BF09938D60005D26BB5FB50, '/')"/> <!--徴収年月日11-->
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>年</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-before(substring-after(Sales.U_7109D51BF09938D60005D26BB5FB50, '/'), '/')"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>月</fo:block>
                            </fo:table-cell>
                            <fo:table-cell text-align="center">
                              <fo:block>
                                <xsl:value-of select="substring-after(substring-after(Sales.U_7109D51BF09938D60005D26BB5FB50, '/'), '/')"/>
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
										<!--手数料の種類11-->
									</fo:block>
								</fo:table-cell>
								<fo:table-cell xsl:use-attribute-sets="cell-base">
									<fo:block text-align="center">
										<xsl:value-of select="Sales.U_78BEB1C2322D280BA44CF57D3045F2"/> <!--手数料(徴収済み10)-->
									</fo:block>
								</fo:table-cell>
								<fo:table-cell xsl:use-attribute-sets="cell-base">
									<fo:block text-align="center">
										<!--第二種特別加入11-->
									</fo:block>
								</fo:table-cell>
								<fo:table-cell xsl:use-attribute-sets="cell-base">
									<fo:block text-align="center">
										<!--賃金等11-->
									</fo:block>
								</fo:table-cell>
								<fo:table-cell xsl:use-attribute-sets="cell-base">
									<fo:block text-align="center">
										<!--手数料割合等11-->
									</fo:block>
								</fo:table-cell>
								<fo:table-cell xsl:use-attribute-sets="cell-base">
									<fo:block text-align="center">
										<xsl:value-of select="Sales.U_8A74B0467F3EACEB2C3BF20E1272AF"/> <!--手数料(未徴収10)-->
									</fo:block>
								</fo:table-cell>
								<fo:table-cell xsl:use-attribute-sets="cell-base">
									<fo:block text-align="center">
										<xsl:value-of select="Sales.U_1C39A642D9DB97BE81A0F2C586FC09"/>
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