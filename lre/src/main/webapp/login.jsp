<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<script> 
function validate()
{
	
	var email=document.getElementById("email").value;
	var password=document.getElementById("password").value;
	
	
	
	if(email=="")
	{
	document.getElementById("emailerror").innerHTML="Please enter email";
	return false;
	
	}
else{
	document.getElementById("emailerror").innerHTML="";
}
	
	if(pass=="")
	{
	document.getElementById("passworderror").innerHTML="Please enter password";
	return false;
	
	}
else{
	document.getElementById("passworderror").innerHTML="";
}
	if(pass.length<5 || pass.length>8)
	{
		
		document.getElementById("passworderror").innerHTML="password should be im between 5 to 8 characters";
	return false; 
	}
	else
		{
		document.getElementById("passworderror").innerHTML="";
		}
	
	
	
	return true;
	
	}</script>


</head>
<body>
<div align="center">
    <fieldset><legend><h1> Log In</h1></legend>
    <form onsubmit="return validate()" action="loginServlet" method="post">
    <table>
    
				<tr>
					<td>Email:</td>
					<td><input type="email" id="email" required/></td>
					<td><span id="emailerror"></span></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" id="pass" required/></td>
					<td><span id="passerror"></span></td>
				</tr>
    
    </table>
    <input type="submit" value="Log In" />
			
    </form>
    <br>
    <br>
    
    </fieldset></div>
</body>
</html>