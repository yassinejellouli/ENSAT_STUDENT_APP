<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    
    <xsl:template match="student">
     <xsl:variable name="fmoyS2" select="sum(Modules/GINF41/Matiere[position()=1 or position()=2]/@Note)+Modules/GINF42/Matiere[1]/@Note+Modules/GINF42/Matiere[2]/@Note"/>
  <xsl:variable name="fmoyS1" select="Modules/GINF31/Matiere[1]/@Note+Modules/GINF31/Matiere[2]/@Note+Modules/GINF32/Matiere[1]/@Note+Modules/GINF32/Matiere[2]/@Note" />
  <xsl:variable name="smoyS1" select="Modules/GINF33/Matiere[1]/@Note+Modules/GINF33/Matiere[2]/@Note+Modules/GINF34/Matiere[1]/@Note+Modules/GINF34/Matiere[2]/@Note+Modules/GINF35/Matiere[1]/@Note+Modules/GINF35/Matiere[2]/@Note+Modules/GINF36/Matiere[1]/@Note+Modules/GINF36/Matiere[2]/@Note"/>
  <xsl:variable name="smoyS2" select="Modules/GINF43/Matiere[1]/@Note+Modules/GINF43/Matiere[2]/@Note+Modules/GINF44/Matiere[1]/@Note+Modules/GINF44/Matiere[2]/@Note+Modules/GINF45/Matiere[1]/@Note+Modules/GINF45/Matiere[2]/@Note+Modules/GINF46/Matiere[1]/@Note+Modules/GINF46/Matiere[2]/@Note"/>
   <xsl:variable name="moyS1" select="($fmoyS1 + $smoyS1) div 12"/>
   <xsl:variable name="moyS2" select="($fmoyS2 + $smoyS2) div 12"/>
   <xsl:variable name="moyGenerale" select="($moyS1 + $moyS2) div 2"/>
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
                <fo:block space-after="0.5cm"><fo:inline-container width="8cm" margin="0in" padding="0in" >
                <fo:list-block border-width="1pt" border-style="solid" font-size="12pt" provisional-distance-between-starts="4cm" >

<fo:list-item>
 <fo:list-item-label  end-indent="label-end()">
   <fo:block >Nom et Prenom :</fo:block>
 </fo:list-item-label>
 <fo:list-item-body start-indent="body-start()">
   <fo:block><xsl:value-of select="FULLNAME"/></fo:block>
 </fo:list-item-body>
</fo:list-item>

<fo:list-item>
 <fo:list-item-label  end-indent="label-end()">
   <fo:block>CNE       :</fo:block>
 </fo:list-item-label>
 <fo:list-item-body start-indent="body-start()">
   <fo:block><xsl:value-of select="@CNE"/></fo:block>
 </fo:list-item-body>
</fo:list-item>

</fo:list-block>
</fo:inline-container>
</fo:block>
<fo:block font-size="13pt">
SEMESTRE 1
</fo:block>
                
                
  <fo:table table-layout="fixed" width="100%">
        <fo:table-column column-width="4cm" />
        <fo:table-column column-width="13cm"/>
        <fo:table-column column-width="3cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">MODULE</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">MATIERE</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">NOTE</fo:block>
            </fo:table-cell>
          </fo:table-row>

          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block font-size="13pt" border-width="1pt" border-style="solid">GINF31</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF31/Matiere[1]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF31/Matiere[1]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">GINF31</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF31/Matiere[2]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF31/Matiere[2]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
           <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block font-size="13pt" border-width="1pt" border-style="solid">GINF32</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF32/Matiere[1]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF32/Matiere[1]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">GINF32</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF32/Matiere[2]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF32/Matiere[2]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
           <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block font-size="13pt" border-width="1pt" border-style="solid">GINF33</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF33/Matiere[1]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF33/Matiere[1]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">GINF33</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF33/Matiere[2]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF33/Matiere[2]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
           <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block font-size="13pt" border-width="1pt" border-style="solid">GINF34</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF34/Matiere[1]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF34/Matiere[1]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">GINF34</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF34/Matiere[2]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF34/Matiere[2]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
           <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block font-size="13pt" border-width="1pt" border-style="solid">GINF35</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF35/Matiere[1]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF35/Matiere[1]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">GINF35</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF35/Matiere[2]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF35/Matiere[2]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
           <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block font-size="13pt" border-width="1pt" border-style="solid">GINF36</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF36/Matiere[1]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF36/Matiere[1]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">GINF36</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF36/Matiere[2]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF36/Matiere[2]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
         
        </fo:table-body>
      </fo:table>        
                
    <fo:block font-size="13pt" space-before="3cm">
SEMESTRE 2
</fo:block>
                
                
  <fo:table table-layout="fixed" width="100%">
        <fo:table-column column-width="4cm" />
        <fo:table-column column-width="13cm"/>
        <fo:table-column column-width="3cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">MODULE</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">MATIERE</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">NOTE</fo:block>
            </fo:table-cell>
          </fo:table-row>

          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block font-size="13pt" border-width="1pt" border-style="solid">GINF41</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF41/Matiere[1]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF41/Matiere[1]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">GINF41</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF41/Matiere[2]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF41/Matiere[2]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
           <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block font-size="13pt" border-width="1pt" border-style="solid">GINF42</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF42/Matiere[1]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF42/Matiere[1]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">GINF42</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF42/Matiere[2]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF42/Matiere[2]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
           <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block font-size="13pt" border-width="1pt" border-style="solid">GINF43</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF43/Matiere[1]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF43/Matiere[1]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">GINF43</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF43/Matiere[2]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF43/Matiere[2]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
           <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block font-size="13pt" border-width="1pt" border-style="solid">GINF44</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF44/Matiere[1]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF44/Matiere[1]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">GINF34</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF34/Matiere[2]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF34/Matiere[2]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
           <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block font-size="13pt" border-width="1pt" border-style="solid">GINF45</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF45/Matiere[1]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF45/Matiere[1]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">GINF45</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF45/Matiere[2]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF45/Matiere[2]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
           <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block font-size="13pt" border-width="1pt" border-style="solid">GINF46</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF46/Matiere[1]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF46/Matiere[1]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
          
          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">GINF46</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF46/Matiere[2]"></xsl:value-of></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="Modules/GINF46/Matiere[2]/@Note"></xsl:value-of></fo:block>
            </fo:table-cell>
          </fo:table-row>
         
        </fo:table-body>
      </fo:table>   
      <fo:block space-after="1cm" space-before="1cm">RESULTAT :</fo:block>                
                
        <fo:table table-layout="fixed" width="100%">
        <fo:table-column column-width="6cm" />
        <fo:table-column column-width="6cm"/>
        <fo:table-column column-width="6cm"/>
        <fo:table-body>
          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">Moyene S1</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">Moyene S2</fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt">Moyene Generale</fo:block>
            </fo:table-cell>
          </fo:table-row>        
          <fo:table-row>
            <fo:table-cell column-number="1">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="$moyS1"/></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="2">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="$moyS2"/></fo:block>
            </fo:table-cell>
             <fo:table-cell column-number="3">
              <fo:block border-width="1pt" border-style="solid" font-size="13pt"><xsl:value-of select="$moyGenerale"/></fo:block>
            </fo:table-cell>
          </fo:table-row>        
         </fo:table-body>  
               </fo:table>    
                
              
  
  
              
               </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>