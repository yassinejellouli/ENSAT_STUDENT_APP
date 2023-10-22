<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
   <xsl:variable name="moyClass" select="(sum(//Modules/GINF31/Matiere/@Note)+sum(//Modules/GINF32/Matiere/@Note)+sum(//Modules/GINF33/Matiere/@Note)+sum(//Modules/GINF34/Matiere/@Note)+sum(//Modules/GINF35/Matiere/@Note)+sum(//Modules/GINF36/Matiere/@Note)+sum(//Modules/GINF41/Matiere/@Note)+sum(//Modules/GINF42/Matiere/@Note)+sum(//Modules/GINF43/Matiere/@Note)+sum(//Modules/GINF44/Matiere/@Note)+sum(//Modules/GINF45/Matiere/@Note)+sum(//Modules/GINF46/Matier/@Note)) div 24"/>
  <html>
<body>
 <table border="1">
 <tr style="background-color: #f57c2a   ">
 <td colspan="2">Semestre</td>
  <td colspan="12" align="center" >Semestre 1</td>
  <td colspan="12" align="center" >Semestre 2</td>
<td colspan="3">Moyene/Semestre</td>
 </tr> 
 <tr style="background-color:#f5942a">
  
 <td colspan="2">Module</td>
 <td colspan="2">Programmation oriente objet XML</td>
  <td colspan="2">Qualite aproche proccessus</td>
   <td colspan="2">Modélisation oriente objet IHM</td>
    <td colspan="2">Base de donne avancees 1</td>
     <td colspan="2">Administration programmation systeme</td>
      <td colspan="2">Langues et communication 1</td>
       <td colspan="2">Technologies distribuee</td>
        <td colspan="2">Base de donne avancees 2 Cloud</td>
         <td colspan="2">Traitement de limage</td>
          <td colspan="2">Programat declarative Techniques Avancees</td>
           <td colspan="2">Securite cryptographie</td>
            <td colspan="2">Management de lentreprise 2</td>
          
            <td  colspan="1">Semestre1</td><td colspan="1">Semestre2</td><td colspan="1">MoyeneGenerale</td> 
 </tr>
<tr style="background-color: #f5b72a ">
<td width="600px" height="60">FULLNAME</td>
<td width="550" height="60">CNE</td>

    <td width="300" height="60">XML</td>
    
<td width="300" height="60">Programmation orient objet : Java</td>
    <td width="300" height="60">Maitrise optimisation processus</td>
    <td width="300" height="60">CycleVieMethodesagiles</td>
   <td width="300" height="60">Modelisation oriente objet UML</td>
    <td width="300" height="60">IHM</td>
   <td width="300" height="60">Optimisation qualite base donnees</td>
    <td width="300" height="60">Administration securite Base donnees</td>
   <td width="300" height="60">Administration systemes</td>
    <td width="300" height="60">Programmation systemes</td>
    <td width="300" height="60">Anglais professionnel</td>
    <td width="300" height="60">Espagnol 2</td>
    <td width="300" height="60">Introduction a J2EE</td>
    <td width="300" height="60">programmation en C#</td>
    
    <td width="300" height="60">gestion donnees complexes</td>
   <td width="300" height="60">cloud computing</td>
   <td width="300" height="60">Traitement image </td>
   <td width="300" height="60">Vision numerique</td>
   <td width="300" height="60">programmation declarative</td>
   <td width="300" height="60">Technique algorithmique avance</td>
    <td width="300" height="60">securite des systemes</td>
   <td width="300" height="60">cryptographie</td>
    <td width="300" height="60">Economicomtabilite2</td>
    <td width="300" height="60">Management de projet</td>
    <td width="300" height="60">MoyeneS1</td>
 <td width="300" height="60">MoyeneS2</td>
  <td width="300" height="60">MoyenGenerale</td>
  <td width="300" height="60">MoyenClass</td>
   </tr>
  <xsl:for-each select="students/student" >
   <xsl:sort select="sum(Modules/node()/Matiere[position()=1 or position()=2]/@Note)" order="descending" />
   <xsl:variable name="fmoyS2" select="sum(Modules/GINF41/Matiere[position()=1 or position()=2]/@Note)+Modules/GINF42/Matiere[1]/@Note+Modules/GINF42/Matiere[2]/@Note"/>
  <xsl:variable name="fmoyS1" select="Modules/GINF31/Matiere[1]/@Note+Modules/GINF31/Matiere[2]/@Note+Modules/GINF32/Matiere[1]/@Note+Modules/GINF32/Matiere[2]/@Note" />
  <xsl:variable name="smoyS1" select="Modules/GINF33/Matiere[1]/@Note+Modules/GINF33/Matiere[2]/@Note+Modules/GINF34/Matiere[1]/@Note+Modules/GINF34/Matiere[2]/@Note+Modules/GINF35/Matiere[1]/@Note+Modules/GINF35/Matiere[2]/@Note+Modules/GINF36/Matiere[1]/@Note+Modules/GINF36/Matiere[2]/@Note"/>
  <xsl:variable name="smoyS2" select="Modules/GINF43/Matiere[1]/@Note+Modules/GINF43/Matiere[2]/@Note+Modules/GINF44/Matiere[1]/@Note+Modules/GINF44/Matiere[2]/@Note+Modules/GINF45/Matiere[1]/@Note+Modules/GINF45/Matiere[2]/@Note+Modules/GINF46/Matiere[1]/@Note+Modules/GINF46/Matiere[2]/@Note"/>
   <xsl:variable name="moyS1" select="($fmoyS1 + $smoyS1) div 12"/>
   <xsl:variable name="moyS2" select="($fmoyS2 + $smoyS2) div 12"/>
   <xsl:variable name="moyGenerale" select="($moyS1 + $moyS2) div 2"/>
  
    
  
 
  <tr>
  <td width="600px" height="60">
  <xsl:value-of select="FULLNAME"></xsl:value-of>
   </td>
   <td><xsl:value-of select="@CIN"></xsl:value-of>
    </td>
   <td><xsl:value-of select="Modules/GINF31/Matiere[1]/@Note"></xsl:value-of>
     </td>
      <td><xsl:value-of select="Modules/GINF31/Matiere[2]/@Note"></xsl:value-of>
     </td>
   <td><xsl:value-of select="Modules/GINF32/Matiere[1]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF32/Matiere[2]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF33/Matiere[1]/@Note"></xsl:value-of></td>
      <td><xsl:value-of select="Modules/GINF33/Matiere[2]/@Note"></xsl:value-of></td>
  <td><xsl:value-of select="Modules/GINF34/Matiere[1]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF34/Matiere[2]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF35/Matiere[1]/@Note"></xsl:value-of></td>
      <td><xsl:value-of select="Modules/GINF35/Matiere[2]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF36/Matiere[1]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF36/Matiere[2]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF41/Matiere[1]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF41/Matiere[2]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF42/Matiere[1]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF42/Matiere[2]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF43/Matiere[1]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF43/Matiere[2]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF44/Matiere[1]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF44/Matiere[2]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF45/Matiere[1]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF45/Matiere[2]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF46/Matiere[1]/@Note"></xsl:value-of></td>
   <td><xsl:value-of select="Modules/GINF46/Matiere[2]/@Note"></xsl:value-of></td>
  <td><xsl:value-of select="$moyS1"/></td>
  <td><xsl:value-of select="$moyS2"/></td>
  <td><xsl:value-of select="$moyGenerale"/></td>
    <td><xsl:value-of select="$moyClass div 55"/></td>
   
       <xsl:if test="count(Modules/node()/Matiere[position()=1 or position()=2][@Note &lt; 8]) &lt; 1" >
    <xsl:if test="count(Modules/node()/Matiere[position()=1 or position()=2][@Note &lt; 12]) &lt; 4" >
  <xsl:if test="$moyGenerale &gt; 11" >
        <td  style="background-color:#0cd128"> ADMI</td>
     </xsl:if>
     <xsl:if test="$moyGenerale  &lt; 12 "  >
       <xsl:if test="$moyGenerale &gt; 10" >
       <td style="background-color:#f4eb10">ADMIR</td>
     </xsl:if>
  </xsl:if>
 </xsl:if>
 </xsl:if>

  <xsl:if test="(count(Modules/node()/Matiere[position()=1 or position()=2][@Note &lt; 8]) &gt; 0) or (count(Modules/node()/Matiere[position()=1 or position()=2][@Note &lt; 12]) &gt; 3) or ($moyGenerale &lt; 11) " >
   
       <td style="background-color:#f41510">AJOURNER</td>
   
</xsl:if>
 
 

  </tr>
  </xsl:for-each>
   </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

