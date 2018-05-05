<%
	page = "User"
	title = "Chỉnh sửa thông tin tài khoản"
%>
<!-- #include virtual ="/include/admin.asp" -->
<%
	acct = request.querystring("Acct")
	IF acct <> "" THEN
		Set acc = GetAcctInfo(acct)
		IF NOT acc.EOF THEN
			
			Acount 		= Trim(acc("User_Acount"))
			email		= acc("User_email")
			fullname	= acc("User_fullname")
			birthday	= acc("User_birthday")
			sex			= acc("User_sex")
			power		= acc("User_power")
			
			IF NOT StrComp(Acount,User_Acount) = 0 THEN
				IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
					'Acount 		= Trim(request.form("Acount"))
					email		= request.form("Email")
					fullname	= request.form("Fullname")
					birthday	= request.form("Birthday")
					sex			= request.form("Sex")
					power		= request.form("Power")
					

					UpdateUser acct,fullname,email,birthday,sex,power
						
				END IF
			ELSE
				response.redirect "/Admin/User/ChangInfo.asp"
			END IF
		ELSE
			response.redirect "/Admin/User.asp"
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
                    <!-- #include virtual ="/admin/User/_UserOption.asp" -->
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
										<option value="0" <%= SelectActive("0",power) %>>Nam</option>
										<option value="1" <%= SelectActive("1",power) %>>Nữ</option>
									</select>
									<span class="field-validation-valid" data-valmsg-for="Sex" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Power">Chức vụ</label>
									<select class="form-control" name="Power" id="Power">
										<option value="admin" <%= SelectActive("admin",power) %>>Quản trị viên</option>
										<option value="contentmanage" <%= SelectActive("contentmanage",power) %>>Quản lý nội dung</option>
										<option value="newsmanage" <%= SelectActive("newsmanage",power) %>>Quản lý bài viết</option>
										<option value="productmanage" <%= SelectActive("productmanage",power) %>>Quản lý sản phẩm</option>
									</select>
									<span class="field-validation-valid" data-valmsg-for="Power" data-valmsg-replace="true"></span>
								</div>
							</div>
						</div>
					</div>

					<div class="submit-holder">
						<button type="submit" class="btn-mvc-green btn-mvc-large">Cập nhật</button>
						<a href="NewPass.asp?Acct=<%= acct %>" class="btn-mvc-green btn-mvc-large">Mật khẩu mới</a>
					</div>
					
					</form>
                </div>
                
				<!-- #include virtual ="/admin/control/footer.asp" -->
            </div>
        </div>
    </div>
</body>
</html>
