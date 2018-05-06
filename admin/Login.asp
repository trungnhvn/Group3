<%
	page = "adminlogin"
	title = "Đăng nhập quản trị viên"
%>
<!-- #include virtual ="/include/main.asp" -->
<%
	url = request.querystring("url")
	IF url = "" THEN
		url = "Dashboard.asp"
	END IF

	IF IsLogin() THEN 
		response.redirect url
	END IF
	
	IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
		username=Trim(request.form("username"))
		password=Trim(request.form("password"))
		url=Trim(request.form("url"))

		IF username = "" THEN 
			errortxt = "Tài khoản không được để trống!"
		ELSE
			IF password = "" THEN 
				errortxt = "Mật khẩu không được để trống!"
			ELSE
				IF Login(username,password) THEN 
					
					response.redirect url
				ELSE
					errortxt = "Tài khoản hoặc mật khẩu không đúng!"
				END IF
			END IF
		END IF
	END IF
%>
<!DOCTYPE html>
<html lang="en">
    <head> 
		<meta charset="utf-8">
		<title><%= title %></title>

		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="/css/bootstrap.css">

		<!-- Website CSS style -->
		<link rel="stylesheet" type="text/css" href="/admin/css/login.css">

		<!-- Website Font style -->
		<link rel="stylesheet" href="/css/font-awesome.min.css">
		
		<!-- Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>Admin</title>
	</head>
	<body>
		<div class="container">
			<div class="row main">
				<div class="panel-heading">
	               <div class="panel-title text-center">
	               		<h1 class="title"><%= title %></h1>
	               		<hr />
	               	</div>
	            </div> 
				<div class="main-login main-center">
					<form class="form-horizontal" method="post" action="/admin/login.asp">
						<% IF errortxt <> "" THEN %>
						<div class="warning">
							<%= errortxt %>
						</div>
						<% END IF %>
						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Tài khoản</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="username" id="username" value="<%= username %>" placeholder="Nhập tên tài khoản"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="password" class="cols-sm-2 control-label">Mật khẩu</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="password" id="password" placeholder="Nhập mật khẩu"/>
								</div>
							</div>
						</div>
						<input type="hidden" name="url" id="url" value="<%= url %>" />
						<div class="form-group ">
							<button type="submit" class="btn btn-primary btn-lg btn-block login-button">Đăng nhập</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<script src="/js/jquery-1.11.3.js"></script>
		<script type="text/javascript" src="/js/bootstrap.js"></script>
	</body>
</html>