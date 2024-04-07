<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/"> <!-- ascociar el template a algo de html /= todo-->
    <html>
          <body>
                <h2>Canasta</h2>
                       <table border="1">
                            <tr bgcolor= "#0000">
                                <th>Nombre</th>
                                <th>Edad</th>
                                <th>País</th>
                             </tr>
                        <xsl:for-each select="canasta/persona">
                        <xsl:sort select= "nombre"/>  <!--ordenar segun el nodo ATENCION -->
                        <xsl:if test="edad > 20">
                        <tr> <!--FILA-->
                            <td>
                              <xsl:value-of select ="@dni"/>
                            </td>

                            <td>
                               <xsl:value-of select ="nombre"/> <!--Fila 1 debajo de nombre-->
                            </td>
                            <td>
                               <xsl:value-of select ="edad"/><!--Fila 1 debajo de eded-->
                            </td>
                            <td>
                               <xsl:value-of select ="costo"/><!--Fila 1 debajo de -->
                            </td>
                            <td>
                               <xsl:choose>
                                   <xsl:when test="condicion de node"> Hola <xsl:when>
                                   <xsl:when test="condicion de node"> Hola <xsl:when>
                                   <xsl:otherwise>default</XSL:otherwise>
                               </xsl:choose>
                            </td>

                        
                        <tr/>
                        </xsl:if>
                        </xsl:for-each>  
                        </table>
            </body>
    </html>
  </xsl:template>
</xsl:stylesheet>









--en vez de escribir nosotros los nodos con el for each lo hazemos va recorriendolo

--El sort es para ordenar segun un nodo 
     <xsl:sort select= "nombre"/>
     <xsl:sort select= "nombre" order="descending"/>
     <xsl:sort select= "nombre" order="ascending"/>
     <xsl:sort select= "@dni" />











--MOLT IMPORTANT:
EN EL XML hem de posar el enllaç del ocument XSLT 

<?xml-stylesheet type="text/xsl" href="tu-archivo.xsl"?>
