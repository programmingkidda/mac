<html>
<body>

<%


dim nm,pd,em,mb,cnt
nm=Request.Form("uname") 
pd=Request.Form("Pwd") 

set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("sample.mdb"))
'response.write("Connection Made")
set rs = Server.CreateObject("ADODB.recordset")
rs.open "select * from Login where Username='" & nm & "' and UPwd='" & pd & "'", conn




if rs.Fields("Username")<>"NULL" then
	Response.Write("<h3>Login Successful........</h3>" &rs.Fields("Username"))
'Response.Redirect("Home.html")

end if



rs.close
conn.close


%>

</body>
</html> 