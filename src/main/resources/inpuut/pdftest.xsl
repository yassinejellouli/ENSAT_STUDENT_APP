<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:template match="student">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="simple"
                    page-height="5.3cm"
                    page-width="8.3cm"
                    margin-top="0cm"
                    margin-bottom="0cm"
                    margin-left="0cm"
                    margin-right="0cm">
                    <fo:region-body />
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="simple">
                <fo:flow flow-name="xsl-region-body">
                
              
 <fo:list-block  provisional-distance-between-starts="6.9cm" >	
<fo:list-item>
 <fo:list-item-label  end-indent="label-end()">
   <fo:list-block provisional-distance-between-starts="1.85cm"  color=" #12126f" >
<fo:list-item>
 <fo:list-item-label end-indent="label-end()">
   <fo:block><fo:external-graphic src="file:///C:/Users/yassine/Desktop/Nouveau%20dossier/java/pdfcreator/src/main/resources/abdelmalk.png" content-height="scale-to-fit" height="1.4cm"  content-width="1.4cm" scaling="non-uniform"/></fo:block>
 </fo:list-item-label>
 <fo:list-item-body start-indent="body-start()">
   <fo:block><fo:inline-container width="5cm" margin="0in" padding="0in" >
               
               
 <fo:list-block margin="0cm" font-size="6pt" padding="0in" >
<fo:list-item>
 <fo:list-item-label>
   <fo:block></fo:block>
 </fo:list-item-label>
 <fo:list-item-body>
   <fo:block margin-left="1cm"> Universite Abdelmalek Essaadi</fo:block>
 </fo:list-item-body>
</fo:list-item>
<fo:list-item>
 <fo:list-item-label>
   <fo:block></fo:block>
 </fo:list-item-label>
 <fo:list-item-body>
   <fo:block margin-left="0.5cm">Ecole Nationale des Sciencees Appliquees</fo:block>
 </fo:list-item-body>
</fo:list-item><fo:list-item>
 <fo:list-item-label>
   <fo:block></fo:block>
 </fo:list-item-label>
 <fo:list-item-body>
   <fo:block margin-left="1.9cm">Tanger</fo:block>
 </fo:list-item-body>
</fo:list-item>
</fo:list-block>      
</fo:inline-container></fo:block>
 </fo:list-item-body>
 </fo:list-item>
</fo:list-block>

</fo:list-item-label>
 <fo:list-item-body start-indent="body-start()">
    <fo:block><fo:external-graphic src="file:///C:/Users/yassine/Desktop/Nouveau%20dossier/java/pdfcreator/src/main/resources/index.jpg" content-height="scale-to-fit" height="1.4cm"  content-width="1.3cm" scaling="non-uniform"/></fo:block>
 </fo:list-item-body>
</fo:list-item>            
 </fo:list-block>      
 <fo:block border-width="1px"  border-style="solid"  margin-left="1.8cm" margin-right="1.8cm" border-color="#ff8a33" font-size="1pt">
 </fo:block>  
 <fo:block color=" #12126f" space-before="0.1cm" margin-left="2.8cm" margin-right="1.8cm" border-color="#ff8a33" font-size="8pt">CARTE D'ETUDIANT</fo:block>           
              
 
 
 
 <fo:list-block  provisional-distance-between-starts="6cm" space-before="0.3cm" margin-left="0.2cm" >	
<fo:list-item>
 <fo:list-item-label  end-indent="label-end()">
   <fo:list-block provisional-distance-between-starts="1.7cm"  color=" #12126f" >
<fo:list-item>
 <fo:list-item-label end-indent="label-end()">
   <fo:block><fo:external-graphic src="file:///D:/eclipse/Nouveau%20dossier/java/exelread/src/main/resources/myphoto.png" content-height="scale-to-fit" height="2cm"  content-width="1.5cm" scaling="non-uniform"/></fo:block>
 </fo:list-item-label>
 <fo:list-item-body start-indent="body-start()">
   <fo:block padding-top="0.3cm" ><fo:inline-container width="5cm" margin="0in" padding="0in" >
<fo:list-block margin="0cm" font-size="7pt" >
<fo:list-item>
 <fo:list-item-label>
   <fo:block></fo:block>
 </fo:list-item-label>
 <fo:list-item-body>
   <fo:block > <xsl:value-of select="FULLNAME"/></fo:block>
 </fo:list-item-body>
</fo:list-item>
<fo:list-item>
 <fo:list-item-label>
   <fo:block></fo:block>
 </fo:list-item-label>
 <fo:list-item-body>
   <fo:block ><xsl:value-of select="@CNE"/></fo:block>
 </fo:list-item-body>
</fo:list-item><fo:list-item>
 <fo:list-item-label>
   <fo:block></fo:block>
 </fo:list-item-label>
 <fo:list-item-body>
   <fo:block ><xsl:value-of select="@CIN"/></fo:block>
 </fo:list-item-body>
</fo:list-item>
</fo:list-block>      
</fo:inline-container></fo:block>
 </fo:list-item-body>
 </fo:list-item>
</fo:list-block>

</fo:list-item-label>
 <fo:list-item-body start-indent="body-start()">
    <fo:block padding-top="0.3cm" ><fo:external-graphic src="file:///C:/Users/yassine/Desktop/Nouveau%20dossier/java/pdfcreator/src/main/resources/qr.png" content-height="scale-to-fit" height="1.6cm"  content-width="1.3cm" scaling="non-uniform"/></fo:block>
 </fo:list-item-body>
</fo:list-item>            
 </fo:list-block>                   
<fo:block  color=" #12126f"  margin-left="1.8cm" margin-right="1cm" border-color="#ff8a33" font-size="8pt">Premie`re Inscription : 2022/2023</fo:block>
                   
               </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>