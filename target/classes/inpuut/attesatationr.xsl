<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:template match="student">
   
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="simple"
                    page-height="29.7cm"
                    page-width="21cm"
                    margin-top="0.5cm"
                    margin-bottom="0cm"
                    margin-left="0.5cm"
                    margin-right="0cm">
                    <fo:region-body />
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="simple">
              
                 
            
            
                <fo:flow flow-name="xsl-region-body">
                
                  <fo:block space-after="0cm">
                <fo:list-block   provisional-distance-between-starts="18cm"  margin-left="0cm">
<fo:list-item>
 <fo:list-item-label  end-indent="label-end()">
   <fo:block space-after="0.5cm" space-before="1cm"><fo:external-graphic src="src/main/resources/index.jpg" content-height="scale-to-fit" height="2cm"  content-width="2cm" scaling="non-uniform"/></fo:block>
 </fo:list-item-label>
 <fo:list-item-body start-indent="body-start()">
   <fo:block space-after="0.5cm" space-before="1cm"><fo:external-graphic src="src/main/resources/abdelmalk.png" content-height="scale-to-fit" height="2cm"  content-width="2cm" scaling="non-uniform"/></fo:block>
 </fo:list-item-body>
</fo:list-item>	
   </fo:list-block>         
    
</fo:block>  
<fo:block border-width="1px"  border-style="solid"  margin-left="1.8cm" margin-right="1.8cm" border-color="#ff8a33" font-size="1pt">
 </fo:block> 
                  <fo:block space-after="1cm" space-before="1cm" margin-left="6cm" font-size="18pt" color=" #005bc7
                  " > ATTESTATION DE RUESSIT</fo:block>  
                
                
  <fo:block font-size="12pt" space-before="0.5" margin-left="2cm">Le Directeur de L'Ecole Nationale des Sciennces Appliquees de Tanger atteste que</fo:block> 
  <fo:block font-size="12pt" space-before="1cm" margin-left="7cm">Monsieur <xsl:value-of select="FULLNAME" /></fo:block> 
   <fo:block font-size="12pt" space-before="1cm" margin-left="9cm">DE</fo:block>    
  <fo:block font-size="12pt" space-before="1cm" margin-left="2cm">CIN:<xsl:value-of select="@CIN" /> et de CNE: <xsl:value-of select="@CNE" />  ne le <xsl:value-of select="NESSANCE" /> a <xsl:value-of select="Ville" /> (MAROC)  </fo:block>            
  <fo:block font-size="12pt" space-before="1cm" margin-left="6cm">A ete declare admis  au niveau de </fo:block>
  <fo:block font-size="12pt" space-before="1cm" margin-left="9cm">GINF2</fo:block>
   <fo:block font-size="12pt" space-before="9cm" margin-left="12cm"> <fo:block space-after="0.5cm" space-before="1cm"><fo:external-graphic src="image/sign.jpg" content-height="scale-to-fit" height="4cm"  content-width="4cm" scaling="non-uniform"/></fo:block></fo:block>                
   <fo:block font-size="12pt" space-before="1cm" margin-left="15cm"> Fait le 11/10/2022 Tanger</fo:block>             
   <fo:block font-size="12pt"  margin-left="15cm">Directeur</fo:block>    
              
  
  
              
               </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>