<%
	page = "Setting"
	title = "Setting"
%>
<!-- #include virtual ="/include/admin.asp" -->
<%
	IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
		name=Trim(request.form("Name"))
		Phone=Trim(request.form("Phone"))
		Email=Trim(request.form("Email"))
		Adrren=Trim(request.form("Adrren"))
		
		SetSetting "Name",name
		SetSetting "Phone",Phone
		SetSetting "Email",Email
		SetSetting "Adrren",Adrren
	ELSE 
		name = GetSetting("Name")
		Phone =GetSetting ("Phone")
		Email=GetSetting ("Email")
		Adrren=GetSetting ("Adrren")
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
									<label for="Name">Tên cửa hàng</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="500" id="Name" name="Name" type="text" value="<%= name %>">
									<span class="field-validation-valid" data-valmsg-for="Name" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Phone">Hotline</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="500" id="Phone" name="Phone" type="text" value="<%= Phone %>">
									<span class="field-validation-valid" data-valmsg-for="Phone" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Email">Email</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="500" id="Email" name="Email" type="text" value="<%= Email %>">
									<span class="field-validation-valid" data-valmsg-for="Email" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="Adrren">Địa chỉ</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="500" id="Adrren" name="Adrren" type="text" value="<%= Adrren %>">
									<span class="field-validation-valid" data-valmsg-for="Adrren" data-valmsg-replace="true"></span>
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
