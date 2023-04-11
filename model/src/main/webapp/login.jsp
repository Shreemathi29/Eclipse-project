<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div class="content">
<div class="image">
<img src="https://freepngimg.com/thumb/web_design/24831-6-member-login-button-clipart.png">
</div>
<div class="signin-form">
<h2>SIGN IN</h2>
<form method="post" action="login" class="form-title">
<div class="form-grp">
<label><i class="zmdi zmdi-account material-icons-name"></i></label>
<input type="text" name="username" id="username" placeholder="Username" />
</div>
<div class="form-grp">
<label><i class="zmdi zmdi-lock"></i></label>
<input type="text" name="password" id="password" placeholder="password" />
</div>
<div class="form-grp">
<label><i class="zmdi zmdi-lock"></i></label>
<input type="password" name="confirm_password" id="confirm_password" placeholder="Confirm password" />
</div>
<div class="form-grp form-button">
<input type="submit" name="sigin" id="sigin" value="login" />
</div>

</form>

</div>
</div>
</div>
</body>
</html>