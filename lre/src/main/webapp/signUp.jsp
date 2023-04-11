
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 

<script> 
function validate()
{
	var name=document.getElementById("name").value;
	var email=document.getElementById("email").value;
	var password=document.getElementById("password").value;
	
	if(name=="")
		{
		document.getElementById("nameerror").innerHTML="Please enter Name";
		return false;
		
		}
	else{
		document.getElementById("nameerror").innerHTML="";
	}
	
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
    <fieldset><legend><h1> Sign up</h1></legend>
    <form onsubmit="return validate()" action="signupServlet.java" method="post">
    <table>
    <tr>
					<td>name:</td>
					<td><input type="text" id="name"  name="name" required/></td>\
					<td><span id="nameerror"></span></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><input type="email" id="email" name="email" required/></td>
					<td><span id="emailerror"></span></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" id="pass" name="pass" required/></td>
					<td><span id="passerror"></span></td>
				</tr>
    
    </table>
    <input type="submit" value="Sign Up" />
			
    </form>
    <br>
    <br>
    <a href="login.jsp"> Already User, Login</a>
    </fieldset>
    </div>
</body>
</html>