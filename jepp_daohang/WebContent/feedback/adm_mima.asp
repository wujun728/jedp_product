<%
If session("admin")="admin" Then 
amain=session("admin")
%>
<!-- #include file="include/conn.asp" -->
<title>�޸�����</title>
<%
 aname=request.Form("mname")
 apwd=request.Form("xpwd")
  set rs=server.CreateObject("adodb.recordset")
  sql="update admin set admin_password='"&apwd&"' where admin_name='"&amain&"'"
  conn.Execute(sql)
  conn.close
  Set conn = nothing
  response.write ("<script language='javascript'>alert('�޸ĳɹ���');location='admin_index.asp';</script>")
 }
 else 
 response.write ("<script language='javascript'>alert('�Ƿ�����ɳܣ�');location='index.asp';</script>")
 End If 
%>
