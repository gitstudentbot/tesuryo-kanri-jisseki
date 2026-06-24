<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<!-- =========================================================== -->
<!-- Root                                                        -->
<!-- =========================================================== -->
	<xsl:template match="Sales">
		<fo:root font-size="9pt" font-family="IPA Gothic, IPAGothic, Segoe UI Symbol">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="A4" page-height="297mm" page-width="210mm" margin-top="10mm" margin-bottom="10mm" margin-left="10mm" margin-right="10mm">
					<fo:region-body margin="10mm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>