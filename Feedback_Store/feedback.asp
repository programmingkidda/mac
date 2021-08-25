<html>

<head>
<script language="javascript">

function chkName()
{
	var letters = /^[A-Za-z]+$/;  
	if(f1.uname.value=="")
	{
		document.getElementById("vunm").innerHTML = "Enter Name Here"
		document.f1.uname.focus();
	}
	else if(!f1.uname.value.match(letters)) 
	{
      		 
		
		document.getElementById("vunm").innerHTML = "Enter Charachers Only"
		document.f1.uname.focus();
		
	}
	else
	{
		document.getElementById("vunm").innerHTML = ""
		
		
	}
}
function chkMobile()
{
	var numbers = /^[0-9]+$/;  
	if(f1.mobile.value=="")
	{
		document.getElementById("vmob").innerHTML = "Enter mobile number"
		document.f1.mobile.focus();
	}
	else if(!f1.mobile.value.match(numbers)) 
	{
      		 
		document.getElementById("vmob").innerHTML = "Enter Numbers Only"
		document.f1.umobile.focus();
		
	}
	else if(f1.mobile.value.length!=10)
	{
		document.getElementById("vmob").innerHTML = "10 digit mobile Number"
		document.f1.umobile.focus();
	}
	else
	{
		document.getElementById("vmob").innerHTML = ""
		
	}


}
function chkEmail()
{
var arr=new Array();
	arr=f1.Email.value;
	var len=arr.length;
	var i,j,k;
	var flag=true;

	
	
	
	if(f1.Email.value=="")
	{
		document.getElementById("vemail").innerHTML = "Enter Email ID"
	}
	else if(f1.Email.value!="")
	{
      		for(i=1;i<len;i++)
		{ 
			if(arr.charAt(i)=='@')
			{	j=i;
				flag=false;
				
			}
			if(arr.charAt(i)=='.')
			{
				k=i;
				flag=false;
			
			}
		}
			if(j>k || flag==true)
			{
				document.getElementById("vemail").innerHTML = "Invalid Email ID"
				document.f1.uemail.focus();
			}
		else
		{
			document.getElementById("vemail").innerHTML = ""
		
		
		}
		
		
	}

}

function chkSubject()
{
	if(f1.sub.value=="")
	{
		document.getElementById("vsub").innerHTML = "*"
	}
	else
	{
		document.getElementById("vsub").innerHTML = ""
	}

}
function chkcomments()
{
	if(f1.comment.value=="")
	{
		document.getElementById("vcomment").innerHTML = "*"
	}
	else
	{

		document.getElementById("vcomment").innerHTML = ""
	
	}

}
</script>
</head>
<body>
<table border="2" align="center">
<form method="post" name="f1" action="feedbacksave.asp">

<tr>
<td>User  Name:</td>
<td><input name="uname" onblur="chkName()"><font id="vunm" color="Red">*</font></td>

</tr><tr>
<td>Mobile No:</td>
<td><input name="mobile" onblur="chkMobile()"><font id="vmob" color="Red">*</font></td>
</tr>
<tr>
<td>Email Id:</td>
<td><input name="Email" onblur="chkEmail()"><font id="vemail" color="Red">*</font></td></td>
</tr>
<tr>
<td>Subject :</td>
<td><input name="sub" onblur="chkSubject()"><font id="vsub" color="Red">*</font></td></td>
<tr>
<td>Comments :</td>
<td><input name="comment" onblur="chkComments()"><font id="vcomment" color="Red">*</font></td></td>
</tr>
<tr><td colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="Submit" value="Submit">

</tr>
</form>
</table>

</body>
</html> 