<html>
<body>

<%
set conn=Server.CreateObject("ADODB.Connection")
conn.Provider="Microsoft.Jet.OLEDB.4.0"
conn.Open(Server.Mappath("sample.mdb"))
response.write("Connection Made")
dim nm,m,e,c,s
nm=Request.Form("name") 
m=Request.Form("mob")
e=Request.Form("email") 
c=Request.Form("com") 
s=Request.Form("sug") 

sql="INSERT INTO feedbacksave(UserName,Mobile,Email,Subject,Comments)VALUES('" & nm & "','" & m & "','" & e & "','" & c&"','" & s&"')"


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