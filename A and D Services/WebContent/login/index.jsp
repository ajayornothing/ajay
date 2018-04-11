<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  
  
  
      <link rel="stylesheet" href="../css/style.css">

  
</head>

<body>
  <body>
  <form action="../login/login.jsp" method="post">
	<div class="login">
		<div class="login-screen">
			<div class="app-title">
				<h1>Login</h1>
			</div>

			<div class="login-form">
				<div class="control-group">
				<input type="text" class="login-field" value="" placeholder="Username" id="login-name" name="uname">
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div>

				<div class="control-group">
				<input type="password" class="login-field" value="" placeholder="Password" id="login-pass" name="pass">
				<label class="login-field-icon fui-lock" for="login-pass"></label>
				</div>

        
        		<input type="submit" class="btn btn-primary btn-large btn-block"  value="Login">
				
				</form>
        <hr>
				<a class="login-link" href="../pwdreset/forgotpwd.jsp">Lost your password?</a>
			</div>
		</div>
	</div>
</body>
  
</html>