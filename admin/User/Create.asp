<%
	page = "User"
	title = "Tạo tài khoản"
%>
<!-- #include virtual ="/include/admin.asp" -->
<%
	IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
		username=Trim(request.form("UserName"))
		password=Trim(request.form("Password"))
		password2=Trim(request.form("Password2"))
		fullname=Trim(request.form("FullName"))
		email=Trim(request.form("Email"))
		sex=request.form("Sex")
		power=request.form("Power")
		birthday=request.form("Birthday")
		
		IF username = "" THEN 
			errortxt = "Tài khoản không được để trống!"
		ELSE
			IF password = "" THEN 
				errortxt = "Mật khẩu không được để trống!"
			ELSE
				IF StrComp(password,password2) = 0 THEN
				
				ELSE
					errortxt = "Nhập lại mật khẩu không khớp!"
				END IF
			END IF
		END IF
	END IF
%>
<!DOCTYPE html>
<html lang="en">
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
							<h4 class="panel-title">Tạo tài khoản</h4>
						</div>
						<div class="panel-collapse">
							<div class="panel-body">
								<div class="form-group">
									<label for="UserName">Tên tài khoản(*)</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="50" data-val-required="Không được để trống tên tài khoản." id="UserName" name="UserName" type="text" value="<%= username %>">
									<span class="field-validation-valid" data-valmsg-for="UserName" data-valmsg-replace="true"></span>
								</div>

								<div class="form-group">
									<label for="Password">Mật khẩu(*)</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="200" data-val-required="Không được để trống mật khẩu." id="Password" name="Password" type="Password" value="">
									<span class="field-validation-valid" data-valmsg-for="Password" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Password2">Nhập lại mật khẩu(*)</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="200" data-val-required="Không được để trống mật khẩu." id="Password2" name="Password2" type="Password" value="">
									<span class="field-validation-valid" data-valmsg-for="Password2" data-valmsg-replace="true"></span>
								</div>
								<hr/>
								<div class="form-group">
									<label for="FullName">Tên đầy đủ</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-maxlength-max="80" id="FullName" name="FullName" type="text" value="<%= fullname %>">
									<span class="field-validation-valid" data-valmsg-for="FullName" data-valmsg-replace="true"></span>
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
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-maxlength-max="80" id="Sex" name="Sex" type="text" value="<%= sex %>">
									<span class="field-validation-valid" data-valmsg-for="MetaDesc" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Power">Chức vụ</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-maxlength-max="80" id="Power" name="Power" type="text" value="<%= power %>">
									<span class="field-validation-valid" data-valmsg-for="Power" data-valmsg-replace="true"></span>
								</div>
							</div>
						</div>
					</div>


					<div class="submit-holder">
						<button type="submit" class="btn-mvc-green btn-mvc-large">Khởi tạo</button>
					</div>
					
					</form>
                </div>
                
				<!-- #include virtual ="/admin/control/footer.asp" -->
            </div>
        </div>
    </div>






</body>
</html>
