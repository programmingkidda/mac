<html>
<body>

<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("sample.mdb"))
'response.write("Connection Made")
dim nm,pd,em,mb
nm=Request.Form("uname") 
pd=Request.Form("Pwd") 
mb=Request.Form("Mobile") 
em=Request.Form("Email") 



sql="INSERT INTO Login(Username,UPwd,Mobile,Email)VALUES('" & nm & "','" & pd &"','" & mb &"','" & em &"')"


on error resume next
conn.Execute sql,recaffected
if err<>0 then
  Response.Write("No update permissions!")
else
 Response.Write("<h3>" & recaffected & " User account Craeted Successfully...</h3>")
end if
conn.close
%>

</body>
</html> 