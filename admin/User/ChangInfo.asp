<%
	page = "User"
	title = "Đổi thông tin tài khoản"
%>
<!-- #include virtual ="/include/admin.asp" -->
<%

		Set acc = GetAcctInfo(User_Acount)
		IF NOT acc.EOF THEN
			
			Acount 		= Trim(acc("User_Acount"))
			email		= acc("User_email")
			fullname	= acc("User_fullname")
			birthday	= acc("User_birthday")
			sex			= acc("User_sex")
			IF sex THEN
				sex = 1
			ELSE 
				sex = 0
			END IF

			IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
				'Acount 		= Trim(request.form("Acount"))
				email		= request.form("Email")
				fullname	= request.form("Fullname")
				birthday	= request.form("Birthday")
				sex			= request.form("Sex")
				
				UpdateUserInfo Acount,fullname,email,birthday,sex
				
				response.redirect "/Admin/User/ChangInfo.asp"
			END IF
		ELSE
			response.redirect "/Admin/User.asp"
		END IF
	
	
%>
<!DOCTYPE html>
<html lang="vi">
<!-- #include virtual ="/admin/control/header.asp" -->
<body class="desktop">
    <div id="wrapper">
        <!-- #include virtual ="/admin/control/menu.asp" -->
        <div id="page-wrapper">
            <div class="container-fluid">
				<!-- #include virtual ="/admin/Control/GenericMessage.asp" -->
        
                <div class="mainadminbody" style="min-height:100%;">
					<form method="POST" >
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title"><%= title %></h4>
						</div>
						<div class="panel-collapse">
							<div class="panel-body">
								<div class="form-group">
									<label>Tài khoản</label>
									<input class="form-control" type="text" value="<%= Acount %>" readonly>
								</div>
								
								<div class="form-group">
									<label for="Fullname">Họ và tên</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-maxlength-max="80" id="Fullname" name="Fullname" type="text" value="<%= fullname %>">
									<span class="field-validation-valid" data-valmsg-for="Fullname" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Email">Email</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-maxlength-max="80" id="Email" name="Email" type="text" value="<%= email %>">
									<span class="field-validation-valid" data-valmsg-for="Email" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Birthday">Ngày sinh</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-maxlength-max="80" id="Birthday" name="Birthday" type="text" value="<%= birthday %>">
									<span class="field-validation-valid" data-valmsg-for="Birthday" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Sex">Giới tính</label>
									<select class="form-control" name="Sex" id="Sex">
										<option value="0" <%= SelectActive("0",sex) %>>Nam</option>
										<option value="1" <%= SelectActive("1",sex) %>>Nữ</option>
									</select>
									<span class="field-validation-valid" data-valmsg-for="Sex" data-valmsg-replace="true"></span>
								</div>
								
							</div>
						</div>
					</div>

					<div class="submit-holder">
						<button type="submit" class="btn-mvc-green btn-mvc-large">Cập nhật</button>
					</div>
					
					</form>
                </div>
                
				<!-- #include virtual ="/admin/control/footer.asp" -->
            </div>
        </div>
    </div>
</body>
</html>
