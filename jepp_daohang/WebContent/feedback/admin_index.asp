<%
If session("admin")="admin" Then 
amain=session("admin")
%>
<!-- #include file="include/conn.asp" -->
<script language=javascript>
function checkform() {
 if(form_pwd.xpwd.value==""){
 alert("\���벻��Ϊ�գ�");
 return false;
 }
 return true;
}
</script>
<title>��̨��������</title>
<div style="background:#ccc; padding:10px">
<p>��̨��������  <a href="login_out.asp">�˳�</a><br />
<form name="form_pwd" action="adm_mima.asp" method="post" onsubmit="return checkform();">
���޸����룩ԭ�˺�:<%=amain%>
�����룺<input type="password" name="xpwd" />
<input type="submit" value=" �� �� " />
</form><hr /></p>
<%
  set rs = server.CreateObject("adodb.recordset")
  sql = "select * from contents order by id desc"
  rs.Open sql,conn,1,1
  Do While Not rs.eof
  %>
	  	������<span style="color:blue"><%=rs("name")%></span>&nbsp;&nbsp;&nbsp;<span><br />���ԣ�<%=rs("content")%></span><br />
		ʱ�䣺<span><%=rs("time")%></span>  <span>������IP��<%=rs("ip")%></span> 
		<a href="modify.asp?id=<%=rs("id")%>">�޸�</a>   <a href=delete.asp?id=<%=rs("id")%>>ɾ��</a> <hr />
	  
 <%
	  rs.movenext
	  Loop
	  rs.close
	  Set rs = Nothing
  else
      response.redirect("index.asp")
  End If 
%>
</div>