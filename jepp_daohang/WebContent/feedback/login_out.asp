<%
rem ���session
session("admin")=""
Session.Abandon()
response.redirect("index.asp")
rem ����admin_index.php���ж�session�Ƿ�����ɹ����ɹ��򷵻�index.php
%>