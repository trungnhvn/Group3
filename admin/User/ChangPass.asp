<%
	page = "User"
	title = "Đổi mật khẩu"
%>
<!-- #include virtual ="/include/admin.asp" -->
<%
	IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
		password=request.form("Password")
		password2=request.form("Password2")
		OldPassword=request.form("OldPassword")
				
		IF password = "" THEN 
			errortxt = "Mật khẩu không được để trống!"
		ELSE
			IF StrComp(password,password2) = 0 THEN
				ChangPass User_Acount,OldPassword,password
				
				LogOut()
				response.redirect "/Admin/Login.asp"
			ELSE
				errortxt = "Nhập lại mật khẩu không khớp!"
			END IF
		END IF
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
									<input class="form-control" type="text" value="<%= User_Acount %>" readonly>
								</div>
								
								<div class="form-group">
									<label for="OldPassword">Mật khẩu cũ(*)</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="200" data-val-required="Không được để trống mật khẩu." id="OldPassword" name="OldPassword" type="Password" value="">
									<span class="field-validation-valid" data-valmsg-for="OldPassword" data-valmsg-replace="true"></span>
								</div>
								<hr/>
								<div class="form-group">
									<label for="Password">Mật khẩu mới(*)</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="200" data-val-required="Không được để trống mật khẩu." id="Password" name="Password" type="Password" value="">
									<span class="field-validation-valid" data-valmsg-for="Password" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Password2">Nhập lại mật khẩu mới(*)</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="200" data-val-required="Không được để trống mật khẩu." id="Password2" name="Password2" type="Password" value="">
									<span class="field-validation-valid" data-valmsg-for="Password2" data-valmsg-replace="true"></span>
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
