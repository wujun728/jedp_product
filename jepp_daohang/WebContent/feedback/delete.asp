<%
If session("admin")="admin" Then 
%>
<!-- #include file="include/conn.asp" -->
<%
  set rs=server.CreateObject("adodb.recordset")
  sql="delete  from contents where id="&request("id")
  conn.Execute(sql)
  conn.close
  Set conn = nothing
  response.redirect("admin_index.asp")
 }
 else 
 response.write ("<script language='javascript'>alert('�Ƿ�����ɳܣ�');location='index.asp';</script>")
 End If 
%>
