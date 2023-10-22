<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  
  <html>
<body>

 <table border="1" style="border-spacing: 0px;border-collapse: collapse;" >
 <tr>
 
 <td width="30px" style="background-color:#C3C2C2; "  ><table style="font-size:10px;border-spacing: 0px;background-color:#C3C2C2; " >

  

  
      <tr ><td  height="12" ></td></tr>
         <tr ><td  height="12" ></td></tr>
            <tr ><td  height="12" ></td></tr>
               <tr ><td  height="12" ></td></tr>
 <tr ><td  height="12" >08:00</td></tr>
   <tr ><td  height="12" ></td></tr>
   <tr><td  height="12">08:30</td></tr>
     <tr ><td  height="12" ></td></tr>
  <tr><td   height="12">09:00</td></tr>
    <tr ><td  height="12" ></td></tr>			
 <tr><td   height="12">09:30</td></tr>
   <tr ><td  height="12" ></td></tr>
 <tr><td   height="12">10:00</td></tr>
   <tr ><td  height="12" ></td></tr>
 <tr><td   height="12">10:30</td></tr>
   <tr ><td  height="12" ></td></tr>
 <tr><td   height="12">11:00</td></tr>
   <tr ><td  height="12" ></td></tr>
 <tr><td   height="12">11:30</td></tr>
   <tr ><td  height="12" ></td></tr>
 <tr><td   height="12">12:00</td></tr>
   <tr ><td  height="12" ></td></tr>
 <tr><td   height="12">12:30</td></tr>
   <tr ><td  height="12" ></td></tr>
 <tr><td   height="12">13:00</td></tr>
   <tr ><td  height="12" ></td></tr>
 <tr><td   height="12">13:30</td></tr>
   <tr ><td  height="12" ></td></tr>
 <tr><td  height="12">14:00</td></tr>
   <tr ><td  height="12" ></td></tr>
 <tr><td   height="12">14:30</td></tr>
   <tr ><td  height="12" ></td></tr>
 <tr><td   height="12">15:00</td></tr>
   <tr ><td  height="12" ></td></tr>
 <tr><td   height="12">15:30</td></tr>
   <tr ><td  height="12" ></td></tr>
 <tr><td   height="12">16:00</td></tr>
   <tr ><td  height="12" ></td></tr>
 <tr><td   height="12">16:30</td></tr>
   <tr ><td  height="12" ></td></tr>
 <tr><td   height="12">17:00</td></tr>
   <tr ><td  height="12" ></td></tr>
 <tr><td   height="12">17:30</td></tr>
   <tr ><td  height="12" ></td></tr>
 <tr><td   height="12">18:00</td></tr>
     
  
       
</table></td>
<xsl:for-each select="JOURS/jour" >
 <xsl:variable name="day" select="position()+10" />
 <td width="250px">
 <xsl:if test="contains(@semestre,'mis1') or contains(@semestre,'mis2')">
 <table border="1px" style="border-spacing: 0px; border-color: #7C7C7E;border-collapse: collapse;">
  <tr style="background-color:#C3C2C2; "><td   height="68"><table ><tr  ><td width="250px" style="text-align:center; "><xsl:value-of select="@Nom"></xsl:value-of></td></tr><tr><td style="text-align:center"><xsl:value-of select="$day"/>/12</td></tr></table> </td></tr>

<tr><td  height="12"> </td></tr>
<tr><td   height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<xsl:if test="contains(Matin/Matiere/Nom,'VIDE')"><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(Matin/Matiere/Nom,'VIDE')) "><tr><td  height="72"  ><table height="72"  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1"><tr >
<xsl:if test="contains(Matin/Matiere/@type,'TP' ) and not(contains(Matin/Matiere/@type,'TPs'))"><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere/@type,'TD')"><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere/@type,'CM')  and not(contains(Matin/Matiere/@type,'CMs'))"><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere/@type,'CMs') or contains(Matin/Matiere/@type,'TPs')">

<td width="250px" hight="12" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td>

	
</xsl:if>
</tr><tr><td height="60"  style="text-align:center"><xsl:value-of select="Matin/Matiere/Nom"/><br></br><xsl:value-of select="Matin/Matiere/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere/class"/> </td></tr></table> </td></tr>
</xsl:if>

<tr><td  height="12"> </td></tr>
<xsl:if test="contains(Matin/Matiere[2]/Nom,'VIDE')"><tr><td  height="12" style="text-align:center"><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr> </td></tr><tr><td  height="12" style="text-align:center"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(Matin/Matiere[2]/Nom,'VIDE')) "><tr><td  height="72"  ><table  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1"><tr>
<xsl:if test="contains(Matin/Matiere[2]/@type,'TP') and not(contains(Matin/Matiere[2]/@type,'TPs'))"><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere[2]/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere[2]/@type,'TD')"><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere[2]/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere[2]/@type,'CM') and not(contains(Matin/Matiere[2]/@type,'CMs'))"><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere[2]/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere[2]/@type,'CMs') or contains(Matin/Matiere[2]/@type,'TPs')">
<td width="250px" hight="12" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td>

</xsl:if>

</tr><tr><td  height="60" style="text-align:center"><xsl:value-of select="Matin/Matiere[2]/Nom"/><br></br><xsl:value-of select="Matin/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere[2]/class"/> </td></tr></table> </td></tr>
</xsl:if>

<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>

 <tr><td  height="12"> </td></tr>
 
  <tr><td  height="12"> </td></tr>

<tr style="background-color:#C3C2C2; "><td  height="12"> </td></tr>
<tr style="background-color:#C3C2C2; "><td  height="12"> </td></tr>
<tr style="background-color:#C3C2C2; "><td  height="12"> </td></tr>
<tr style="background-color:#C3C2C2; "><td  height="12"> </td></tr>
<tr style="background-color:#C3C2C2; "><td  height="12"> </td></tr>



<xsl:if test="contains(ApreMedit/Matiere/Nom,'VIDE')"><tr><td  height="12"> </td></tr> <tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(ApreMedit/Matiere/Nom,'VIDE')) "><tr><td  height="72"  ><table  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1">


<xsl:if test="contains(ApreMedit/Matiere/@type,'TP') and not(contains(ApreMedit/Matiere/@type,'TPs'))"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere/class"/> </td></tr></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere/@type,'TD')"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere/class"/> </td></tr></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere/@type,'CM') and not(contains(ApreMedit/Matiere/@type,'CMs'))"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere/class"/> </td></tr></xsl:if>

<xsl:if test="contains(ApreMedit/Matiere/@type,'CMs')"><tr >
<td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></tr><tr><td height="60" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="ApreMedit/Matiere/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere/class"/> </td></tr>


</xsl:if>



</table> </td></tr>
</xsl:if>

<tr><td  height="12"> </td></tr>
<xsl:if test="contains(ApreMedit/Matiere[2]/Nom,'VIDE')"> <tr><td  height="12"><tr><td  height="12"> </td></tr> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12" > </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(ApreMedit/Matiere[2]/Nom,'VIDE')) "><tr><td  height="72"  ><table  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1">

<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'TP') and not(contains(ApreMedit/Matiere[2]/@type,'TPs'))"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere[2]/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere[2]/class"/> </td></tr></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'TD')"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere[2]/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere[2]/class"/> </td></tr></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'CM') and not(contains(ApreMedit/Matiere[2]/@type,'CMs'))"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere[2]/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere[2]/class"/> </td></tr></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'CMs') or contains(ApreMedit/Matiere[2]/@type,'TPs')"><tr >

<td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></tr><tr><td height="60" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="ApreMedit/Matiere[2]/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere[2]/class"/> </td></tr>

</xsl:if>


</table> </td></tr>
</xsl:if>

<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>

</table>
</xsl:if>
<!-- a-a-aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -->


<xsl:if test="contains(@semestre,'mis3')">
<xsl:if test="not(contains(@Nom,'vendredi'))">
 <table border="1px" style="border-spacing: 0px; border-color: #7C7C7E;border-collapse: collapse;">
  <tr style="background-color:#C3C2C2; "><td   height="68"><table ><tr  ><td width="250px" style="text-align:center; "><xsl:value-of select="@Nom"></xsl:value-of></td></tr><tr><td style="text-align:center"><xsl:value-of select="$day"/>/12</td></tr></table> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td   height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<xsl:if test="contains(Matin/Matiere/Nom,'VIDE')"><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(Matin/Matiere/Nom,'VIDE')) "><tr><td  height="72"  ><table height="72"  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1"><tr >
<xsl:if test="contains(Matin/Matiere/@type,'TP' ) and not(contains(Matin/Matiere/@type,'TPs'))"><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere/@type,'TD')"><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere/@type,'CM')  and not(contains(Matin/Matiere/@type,'CMs'))"><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere/@type,'CMs') or contains(Matin/Matiere/@type,'TPs')">

<td width="250px" hight="12" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td>

	
</xsl:if>
</tr><tr><td height="60"  style="text-align:center"><xsl:value-of select="Matin/Matiere/Nom"/><br></br><xsl:value-of select="Matin/Matiere/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere/class"/> </td></tr></table> </td></tr>
</xsl:if>

<tr><td  height="12"> </td></tr>
<xsl:if test="contains(Matin/Matiere[2]/Nom,'VIDE')"><tr><td  height="12" style="text-align:center"><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr> </td></tr><tr><td  height="12" style="text-align:center"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(Matin/Matiere[2]/Nom,'VIDE')) "><tr><td  height="72"  ><table  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1"><tr>
<xsl:if test="contains(Matin/Matiere[2]/@type,'TP') and not(contains(Matin/Matiere[2]/@type,'TPs'))"><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere[2]/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere[2]/@type,'TD')"><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere[2]/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere[2]/@type,'CM') and not(contains(Matin/Matiere[2]/@type,'CMs'))"><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere[2]/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere[2]/@type,'CMs') or contains(Matin/Matiere[2]/@type,'TPs')">
<td width="250px" hight="12" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td>

</xsl:if>

</tr><tr><td  height="60" style="text-align:center"><xsl:value-of select="Matin/Matiere[2]/Nom"/><br></br><xsl:value-of select="Matin/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere[2]/class"/> </td></tr></table> </td></tr>
</xsl:if>


<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>

 <tr><td  height="12"> </td></tr>
 
  <tr><td  height="12"> </td></tr>

<tr style="background-color:#C3C2C2; "><td  height="12"> </td></tr>
<tr style="background-color:#C3C2C2; "><td  height="12"> </td></tr>



<xsl:if test="contains(ApreMedit/Matiere/Nom,'VIDE')"><tr><td  height="12"> </td></tr> <tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(ApreMedit/Matiere/Nom,'VIDE')) "><tr><td  height="72"  ><table  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1">


<xsl:if test="contains(ApreMedit/Matiere/@type,'TP') and not(contains(ApreMedit/Matiere/@type,'TPs'))"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere/class"/> </td></tr></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere/@type,'TD')"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere/class"/> </td></tr></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere/@type,'CM') and not(contains(ApreMedit/Matiere/@type,'CMs'))"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere/class"/> </td></tr></xsl:if>

<xsl:if test="contains(ApreMedit/Matiere/@type,'CMs') "><tr >
<td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></tr><tr><td height="60" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="ApreMedit/Matiere/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere/class"/> </td></tr>


</xsl:if>



</table> </td></tr>
</xsl:if>

<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>









<xsl:if test="contains(ApreMedit/Matiere[2]/Nom,'VIDE')"> <tr><td  height="12"><tr><td  height="12"> </td></tr> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12" > </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(ApreMedit/Matiere[2]/Nom,'VIDE')) "><tr><td  height="72"  ><table  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1">

<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'TP') and not(contains(ApreMedit/Matiere[2]/@type,'TPs'))"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere[2]/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere[2]/class"/> </td></tr></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'TD')"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere[2]/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere[2]/class"/> </td></tr></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'CM') and not(contains(ApreMedit/Matiere[2]/@type,'CMs'))"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere[2]/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere[2]/class"/> </td></tr></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'CMs')"><tr >

<td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></tr><tr><td height="60" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="ApreMedit/Matiere[2]/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere[2]/class"/> </td></tr>

</xsl:if>
<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'TPs')"><tr >

<td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></tr><tr><td height="60" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="ApreMedit/Matiere[2]/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere[2]/class"/> </td></tr>

</xsl:if>


</table> </td></tr>
</xsl:if>

<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>


</table>
</xsl:if>
<!-- aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -->
<xsl:if test="contains(@Nom,'vendredi')">
 <table border="1px" style="border-spacing: 0px; border-color: #7C7C7E;border-collapse: collapse;">
  <tr style="background-color:#C3C2C2; "><td   height="68"><table ><tr  ><td width="250px" style="text-align:center; "><xsl:value-of select="@Nom"></xsl:value-of></td></tr><tr><td style="text-align:center"><xsl:value-of select="$day"/>/12</td></tr></table> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td   height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<xsl:if test="contains(Matin/Matiere/Nom,'VIDE')"><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(Matin/Matiere/Nom,'VIDE')) "><tr><td  height="72"  ><table height="72"  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1">
<xsl:if test="contains(Matin/Matiere/@type,'TP' ) and not(contains(Matin/Matiere/@type,'TPs'))"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td></tr><tr><td height="60"  style="text-align:center"><xsl:value-of select="Matin/Matiere/Nom"/><br></br><xsl:value-of select="Matin/Matiere/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere/class"/> </td></tr></xsl:if>
<xsl:if test="contains(Matin/Matiere/@type,'TD')"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td></tr><tr><td height="60"  style="text-align:center"><xsl:value-of select="Matin/Matiere/Nom"/><br></br><xsl:value-of select="Matin/Matiere/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere/class"/> </td></tr></xsl:if>
<xsl:if test="contains(Matin/Matiere/@type,'CM')  and not(contains(Matin/Matiere/@type,'CMs'))"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td></tr><tr><td height="60"  style="text-align:center"><xsl:value-of select="Matin/Matiere/Nom"/><br></br><xsl:value-of select="Matin/Matiere/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere/class"/> </td></tr></xsl:if>
<xsl:if test="contains(Matin/Matiere/@type,'CMs')">

<tr ><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td></tr><tr><td height="60"  style="text-align:center;background-color:#35E115;"><xsl:value-of select="Matin/Matiere/Nom"/><br></br><xsl:value-of select="Matin/Matiere/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere/class"/> </td></tr>

	
</xsl:if>
</table></td></tr>
</xsl:if>



<tr><td  height="12"> </td></tr>
<xsl:if test="contains(Matin/Matiere[2]/Nom,'VIDE')"><tr><td  height="12" style="text-align:center"><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr> </td></tr><tr><td  height="12" style="text-align:center"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(Matin/Matiere[2]/Nom,'VIDE')) "><tr><td  height="72"  ><table  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1">
<xsl:if test="contains(Matin/Matiere[2]/@type,'TP') and not(contains(Matin/Matiere[2]/@type,'TPs'))"><tr><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere[2]/@time"/></td></tr><tr><td  height="60" style="text-align:center"><xsl:value-of select="Matin/Matiere[2]/Nom"/><br></br><xsl:value-of select="Matin/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere[2]/class"/> </td></tr></xsl:if>
<xsl:if test="contains(Matin/Matiere[2]/@type,'TD')"><tr><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere[2]/@time"/></td></tr><tr><td  height="60" style="text-align:center"><xsl:value-of select="Matin/Matiere[2]/Nom"/><br></br><xsl:value-of select="Matin/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere[2]/class"/> </td></tr></xsl:if>
<xsl:if test="contains(Matin/Matiere[2]/@type,'CM') and not(contains(Matin/Matiere[2]/@type,'CMs'))"><tr><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere[2]/@time"/></td></tr><tr><td  height="60" style="text-align:center"><xsl:value-of select="Matin/Matiere[2]/Nom"/><br></br><xsl:value-of select="Matin/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere[2]/class"/> </td></tr></xsl:if>
<xsl:if test="contains(Matin/Matiere[2]/@type,'TPs')">
<tr><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere[2]/@time"/></td></tr><tr><td  height="60" style="text-align:center;	background-color:#35E115;"><xsl:value-of select="Matin/Matiere[2]/Nom"/><br></br><xsl:value-of select="Matin/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere[2]/class"/> </td></tr>

</xsl:if>

</table> </td></tr>
</xsl:if>


<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>

 <tr><td  height="12"> </td></tr>
 
  <tr><td  height="12"> </td></tr>

<tr style="background-color:#C3C2C2; "><td  height="12"> </td></tr>
<tr style="background-color:#C3C2C2; "><td  height="12"> </td></tr>



<xsl:if test="contains(ApreMedit/Matiere/Nom,'VIDE')"><tr><td  height="12"> </td></tr> <tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(ApreMedit/Matiere/Nom,'VIDE')) "><tr><td  height="72"  ><table  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1"><tr >


<xsl:if test="contains(ApreMedit/Matiere/@type,'TP') and not(contains(ApreMedit/Matiere/@type,'TPs'))"><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere/@type,'TD')"><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere/@type,'CM') and not(contains(ApreMedit/Matiere/@type,'CMs'))"><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></xsl:if>

<xsl:if test="contains(ApreMedit/Matiere/@type,'CMs') or contains(ApreMedit/Matiere/@type,'TPs')">
<td width="250px" hight="12" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td>


</xsl:if>



</tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere/class"/> </td></tr></table> </td></tr>
</xsl:if>

<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<xsl:if test="contains(ApreMedit/Matiere[2]/Nom,'VIDE')"> <tr><td  height="12"><tr><td  height="12"> </td></tr> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12" > </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(ApreMedit/Matiere[2]/Nom,'VIDE')) "><tr><td  height="72"  ><table  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1"><tr >

<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'TP') and not(contains(ApreMedit/Matiere[2]/@type,'TPs'))"><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'TD')"><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'CM') and not(contains(ApreMedit/Matiere[2]/@type,'CMs'))"><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'CMs') or contains(ApreMedit/Matiere[2]/@type,'TPs')">

<td width="250px" hight="12" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td>

</xsl:if>


</tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere[2]/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere[2]/class"/> </td></tr></table> </td></tr>
</xsl:if>


<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>


</table>
</xsl:if>
<!-- aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -->

</xsl:if>
<!-- a-a-aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -->

<xsl:if test="contains(@semestre,'mis4')">
<xsl:if test="not(contains(@Nom,'vendredi'))">
 <table border="1px" style="border-spacing: 0px; border-color: #7C7C7E;border-collapse: collapse;">
  <tr style="background-color:#C3C2C2; "><td   height="68"><table ><tr  ><td width="250px" style="text-align:center; "><xsl:value-of select="@Nom"></xsl:value-of></td></tr><tr><td style="text-align:center"><xsl:value-of select="$day"/>/12</td></tr></table> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td   height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<xsl:if test="contains(Matin/Matiere/Nom,'VIDE')"><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(Matin/Matiere/Nom,'VIDE')) "><tr height="60"><td  height="60"  ><table height="60"  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1"><tr  >
<xsl:if test="contains(Matin/Matiere/@type,'TP' ) and not(contains(Matin/Matiere/@type,'TPs'))"><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere/@type,'TD')"><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere/@type,'CM')  and not(contains(Matin/Matiere/@type,'CMs'))"><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere/@type,'CMs') or contains(Matin/Matiere/@type,'TPs')">

<td width="250px" hight="12" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td>

	
</xsl:if>
</tr><tr><td height="60"  style="text-align:center"><xsl:value-of select="Matin/Matiere/Nom"/><br></br><xsl:value-of select="Matin/Matiere/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere/class"/> </td></tr></table> </td></tr>
</xsl:if>

<tr><td  height="12"> </td></tr>
<xsl:if test="contains(Matin/Matiere[2]/Nom,'VIDE')"><tr><td  height="12" style="text-align:center"><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr> </td></tr><tr><td  height="12" style="text-align:center"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(Matin/Matiere[2]/Nom,'VIDE')) "><tr><td  height="72"  ><table  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1"><tr>
<xsl:if test="contains(Matin/Matiere[2]/@type,'TP') and not(contains(Matin/Matiere[2]/@type,'TPs'))"><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere[2]/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere[2]/@type,'TD')"><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere[2]/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere[2]/@type,'CM') and not(contains(Matin/Matiere[2]/@type,'CMs'))"><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere[2]/@time"/></td></xsl:if>
<xsl:if test="contains(Matin/Matiere[2]/@type,'CMs') or contains(Matin/Matiere[2]/@type,'TPs')">
<td width="250px" hight="12" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td>

</xsl:if>

</tr><tr><td  height="60" style="text-align:center"><xsl:value-of select="Matin/Matiere[2]/Nom"/><br></br><xsl:value-of select="Matin/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere[2]/class"/> </td></tr></table> </td></tr>
</xsl:if>


<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>

 <tr><td  height="12"> </td></tr>
 
 




<xsl:if test="contains(ApreMedit/Matiere/Nom,'VIDE')"><tr><td  height="12"> </td></tr> <tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(ApreMedit/Matiere/Nom,'VIDE')) "><tr><td  height="72"  ><table  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1">


<xsl:if test="contains(ApreMedit/Matiere/@type,'TP') and not(contains(ApreMedit/Matiere/@type,'TPs'))"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere/class"/> </td></tr></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere/@type,'TD')"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere/class"/> </td></tr></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere/@type,'CM') and not(contains(ApreMedit/Matiere/@type,'CMs'))"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere/class"/> </td></tr></xsl:if>

<xsl:if test="contains(ApreMedit/Matiere/@type,'CMs') "><tr >
<td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></tr><tr><td height="60" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="ApreMedit/Matiere/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere/class"/> </td></tr>


</xsl:if>



</table> </td></tr>
</xsl:if>
<tr style="background-color:#C3C2C2; "><td  height="12"> </td></tr>










<xsl:if test="contains(ApreMedit/Matiere[2]/Nom,'VIDE')"> <tr><td  height="12"><tr><td  height="12"> </td></tr> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12" > </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(ApreMedit/Matiere[2]/Nom,'VIDE')) "><tr><td  height="72"  ><table  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1">

<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'TP') and not(contains(ApreMedit/Matiere[2]/@type,'TPs'))"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere[2]/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere[2]/class"/> </td></tr></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'TD')"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere[2]/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere[2]/class"/> </td></tr></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'CM') and not(contains(ApreMedit/Matiere[2]/@type,'CMs'))"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere[2]/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere[2]/class"/> </td></tr></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'CMs')"><tr >

<td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></tr><tr><td height="60" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="ApreMedit/Matiere[2]/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere[2]/class"/> </td></tr>

</xsl:if>
<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'TPs')"><tr >

<td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></tr><tr><td height="60" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="ApreMedit/Matiere[2]/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere[2]/class"/> </td></tr>

</xsl:if>


</table> </td></tr>
</xsl:if>

<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>


</table>
</xsl:if>
<!-- aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -->
<xsl:if test="contains(@Nom,'vendredi')">
 <table border="1px" style="border-spacing: 0px; border-color: #7C7C7E;border-collapse: collapse;">
  <tr style="background-color:#C3C2C2; "><td   height="68"><table ><tr  ><td width="250px" style="text-align:center; "><xsl:value-of select="@Nom"></xsl:value-of></td></tr><tr><td style="text-align:center"><xsl:value-of select="$day"/>/12</td></tr></table> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td   height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<xsl:if test="contains(Matin/Matiere/Nom,'VIDE')"><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(Matin/Matiere/Nom,'VIDE')) "><tr><td  height="72"  ><table height="72"  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1">
<xsl:if test="contains(Matin/Matiere/@type,'TP' ) and not(contains(Matin/Matiere/@type,'TPs'))"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td></tr><tr><td height="60"  style="text-align:center"><xsl:value-of select="Matin/Matiere/Nom"/><br></br><xsl:value-of select="Matin/Matiere/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere/class"/> </td></tr></xsl:if>
<xsl:if test="contains(Matin/Matiere/@type,'TD')"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td></tr><tr><td height="60"  style="text-align:center"><xsl:value-of select="Matin/Matiere/Nom"/><br></br><xsl:value-of select="Matin/Matiere/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere/class"/> </td></tr></xsl:if>
<xsl:if test="contains(Matin/Matiere/@type,'CM')  and not(contains(Matin/Matiere/@type,'CMs'))"><tr ><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td></tr><tr><td height="60"  style="text-align:center"><xsl:value-of select="Matin/Matiere/Nom"/><br></br><xsl:value-of select="Matin/Matiere/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere/class"/> </td></tr></xsl:if>
<xsl:if test="contains(Matin/Matiere/@type,'CMs')">

<tr ><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="Matin/Matiere/@type"/> - <xsl:value-of select="Matin/Matiere/@time"/></td></tr><tr><td height="60"  style="text-align:center;background-color:#35E115;"><xsl:value-of select="Matin/Matiere/Nom"/><br></br><xsl:value-of select="Matin/Matiere/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere/class"/> </td></tr>

	
</xsl:if>
</table></td></tr>
</xsl:if>



<tr><td  height="12"> </td></tr>
<xsl:if test="contains(Matin/Matiere[2]/Nom,'VIDE')"><tr><td  height="12" style="text-align:center"><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr> </td></tr><tr><td  height="12" style="text-align:center"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(Matin/Matiere[2]/Nom,'VIDE')) "><tr><td  height="72"  ><table  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1">
<xsl:if test="contains(Matin/Matiere[2]/@type,'TP') and not(contains(Matin/Matiere[2]/@type,'TPs'))"><tr><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere[2]/@time"/></td></tr><tr><td  height="60" style="text-align:center"><xsl:value-of select="Matin/Matiere[2]/Nom"/><br></br><xsl:value-of select="Matin/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere[2]/class"/> </td></tr></xsl:if>
<xsl:if test="contains(Matin/Matiere[2]/@type,'TD')"><tr><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere[2]/@time"/></td></tr><tr><td  height="60" style="text-align:center"><xsl:value-of select="Matin/Matiere[2]/Nom"/><br></br><xsl:value-of select="Matin/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere[2]/class"/> </td></tr></xsl:if>
<xsl:if test="contains(Matin/Matiere[2]/@type,'CM') and not(contains(Matin/Matiere[2]/@type,'CMs'))"><tr><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere[2]/@time"/></td></tr><tr><td  height="60" style="text-align:center"><xsl:value-of select="Matin/Matiere[2]/Nom"/><br></br><xsl:value-of select="Matin/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere[2]/class"/> </td></tr></xsl:if>
<xsl:if test="contains(Matin/Matiere[2]/@type,'TPs')">
<tr><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="Matin/Matiere[2]/@type"/> - <xsl:value-of select="Matin/Matiere[2]/@time"/></td></tr><tr><td  height="60" style="text-align:center;	background-color:#35E115;"><xsl:value-of select="Matin/Matiere[2]/Nom"/><br></br><xsl:value-of select="Matin/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="Matin/Matiere[2]/class"/> </td></tr>

</xsl:if>

</table> </td></tr>
</xsl:if>


<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>

 <tr><td  height="12"> </td></tr>
 
  <tr><td  height="12"> </td></tr>

<tr  ><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr  ><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>



<xsl:if test="contains(ApreMedit/Matiere/Nom,'VIDE')"><tr><td  height="12"> </td></tr> <tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(ApreMedit/Matiere/Nom,'VIDE')) "><tr><td  height="72"  ><table  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1"><tr >


<xsl:if test="contains(ApreMedit/Matiere/@type,'TP') and not(contains(ApreMedit/Matiere/@type,'TPs'))"><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere/@type,'TD')"><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere/@type,'CM') and not(contains(ApreMedit/Matiere/@type,'CMs'))"><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td></xsl:if>

<xsl:if test="contains(ApreMedit/Matiere/@type,'CMs') or contains(ApreMedit/Matiere/@type,'TPs')">
<td width="250px" hight="12" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="ApreMedit/Matiere/@type"/> - <xsl:value-of select="ApreMedit/Matiere/@time"/></td>


</xsl:if>



</tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere/class"/> </td></tr></table> </td></tr>
</xsl:if>

<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<tr><td  height="12"> </td></tr>
<xsl:if test="contains(ApreMedit/Matiere[2]/Nom,'VIDE')"> <tr><td  height="12"><tr><td  height="12"> </td></tr> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12" > </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr><tr><td  height="12"> </td></tr></xsl:if>
<xsl:if test="not(contains(ApreMedit/Matiere[2]/Nom,'VIDE')) "><tr><td  height="72"  ><table  style="font-size:10px; border-radius:10px;border-spacing: 0px;" border="1"><tr >

<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'TP') and not(contains(ApreMedit/Matiere[2]/@type,'TPs'))"><td width="250px" hight="12" style="text-align:center;background-color:#8AE472;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'TD')"><td width="250px" hight="12" style="text-align:center;background-color:#EFE77D;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'CM') and not(contains(ApreMedit/Matiere[2]/@type,'CMs'))"><td width="250px" hight="12" style="text-align:center;background-color:#999EE0;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td></xsl:if>
<xsl:if test="contains(ApreMedit/Matiere[2]/@type,'CMs') or contains(ApreMedit/Matiere[2]/@type,'TPs')">

<td width="250px" hight="12" style="text-align:center;background-color:#35E115;" ><xsl:value-of select="ApreMedit/Matiere[2]/@type"/> - <xsl:value-of select="ApreMedit/Matiere[2]/@time"/></td>

</xsl:if>


</tr><tr><td height="60" style="text-align:center" ><xsl:value-of select="ApreMedit/Matiere[2]/Nom"/><br></br><xsl:value-of select="ApreMedit/Matiere[2]/prof"/><br></br>SALLE <xsl:value-of select="ApreMedit/Matiere[2]/class"/> </td></tr></table> </td></tr>
</xsl:if>




</table>
</xsl:if>
<!-- aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -->

</xsl:if>
<!-- a-a-aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -->

















</td>
 </xsl:for-each>
 
 </tr>
   </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

