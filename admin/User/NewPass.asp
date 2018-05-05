<%
	page = "User"
	title = "Mật khẩu mới"
%>
<!-- #include virtual ="/include/admin.asp" -->
<%
	acct = request.querystring("Acct")
	IF acct <> "" THEN
		Set acc = GetAcctInfo(acct)
		IF NOT acc.EOF THEN
			
			Acount 		= Trim(acc("User_Acount"))
			
			IF NOT StrComp(Acount,User_Acount) = 0 THEN
				IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
					password=request.form("Password")
					password2=request.form("Password2")
					
					IF StrComp(password,password2) = 0 THEN
						NewPass acct,password
						
					ELSE
						errortxt = "Nhập lại mật khẩu không khớp!"
					END IF
			
				END IF
			ELSE
				response.redirect "/Admin/User/ChangPass.asp"
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
						<a href="Edit.asp?Acct=<%= acct %>" class="btn-mvc-green btn-mvc-large">Đổi thông tin</a>
					</div>
					
					</form>
                </div>
                
				<!-- #include virtual ="/admin/control/footer.asp" -->
            </div>
        </div>
    </div>
</body>
</html>
