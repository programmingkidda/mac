<html>
<body>

<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("sample.mdb"))
'response.write("Connection Made")
dim nm,p,e,c,s
nm=Request.Form("uname") 
p=Request.Form("Mobile") 
e=Request.Form("Email") 
s=Request.Form("sub")
c=Request.Form("comment") 


sql="INSERT INTO Feedback(UserName,Mobile,Email,Subject,Comments)VALUES('" & nm & "','" & p & "','" & e &"','" & s &"','" & c &"')"


on error resume next
conn.Execute sql,recaffected
if err<>0 then
  Response.Write("No update permissions!")
else
 Response.Write("<h3>" & recaffected & " Feedback Submitted Successfully...</h3>")
end if
conn.close
%>

</body>
</html> 