<%
If session("admin")="admin" Then 
%>
<!-- #include file="include/conn.asp" -->
<%
  set rs=server.CreateObject("adodb.recordset")
  sql="select * from contents where id="&request("id")
  rem request("id")�Ǵ��ݹ����Ĳ���
  rs.Open sql,conn,1,1
  name = rs("name")
  content = rs("content")
  id = rs("id")
%>

  <form action="modify_save.asp" method="post" name="name1">
    ID  :<%=id%><input type="hidden" name="id" value=<%=id%> > 
    ����:<%=name%><br> 
    ����:<textarea name="post_contents" rows="10" cols="50"><%=content%></textarea> 
    <input type="submit" value="�ύ�޸�"> 
   </form>
<%
  conn.close
  Set conn = Nothing
  else 
  response.write ("<script language='javascript'>alert('�Ƿ�����ɳܣ�');location='index.asp';</script>")
  End If 
%>

