 <!-- #include file="include/conn.asp" -->
 <title>ȫ������</title>
   <%   Set rs = server.CreateObject("ADODB.Recordset")
     sql="select * from contents order by id desc"
	 rs.Open sql,conn,1,1
     Do While Not rs.eof  
             
              response.write ("<table><tr>")
              response.write ("<td>&nbsp;&nbsp;����:"&rs("name")&"</td>")
			  response.write ("<td>&nbsp;&nbsp;����ʱ��:"&rs("time")&"</td>")
			  response.write ("</tr>")
              response.write ("<tr><td colspan='4'>����:"&rs("content")&"</td></tr></table><br/>")
              response.write ("<hr/>")
              
	  rs.movenext
	  Loop
	  rem �ͷ���Դ
	  rs.close
	  Set rs = Nothing
	  
 %>