<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="gb2312">
<head>
<title>��ӭ��������</title>
<link type="text/css" href="style.css" rel="stylesheet" />
<meta name="Copyright" content="www.028baidu.com" />
<script language="javascript" type="text/javascript">
function check(){
var a=mess.user_name.value;
var b=mess.user_post.value;
if(a=="")
{alert("���ƿ�"); return false;}
if(b=="")
{alert("���ݿ�"); return false;}
return true;
}
</script>
</head> 
<body>
<BR><BR>
<center>��ӭ�������ԣ�&nbsp;&nbsp;&nbsp;&nbsp;  <a href="list.asp">ȫ������</a> &nbsp;<a href="admin_login.htm" target="_blank">����</a> </center>
<br>
<div class="main">
<form name="mess" action="add_messages.asp" method="post" onsubmit="return check();"> 
    ����:<input type="text" name="user_name" size="60"><br/> <br/>
    ����:<textarea name="user_post" rows="20" cols="59"></textarea><br/><br/>
	<center><input type="submit"  value="�ύ����" > </center>
   </form> 
</div>
  
</body>
</html>