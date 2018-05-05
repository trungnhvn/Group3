<%
	page = "Menu"
	title = "Tạo menu"
	role = Array("Admin","ContentManage")
%>
<!-- #include virtual ="/include/admin.asp" -->
<!-- #include virtual ="/include/Menu.asp" -->
<%
	iType = "1"
	iPage = "0"

	IF Request.ServerVariables("REQUEST_METHOD")= "POST" THEN
		name=Trim(request.form("Name"))
		paren=request.form("Paren")
		iType=request.form("iType")
		iPage=request.form("iPage")
		link=request.form("Link")
		ShotOder=request.form("ShotOder")
		
		IF name = "" THEN 
			errortxt = "Tên menu không được để trống!"
		ELSE
			val = ""
			
			IF StrComp(iType,"0") = 0 THEN 
				val = link
			ELSEIF StrComp(iType,"1") = 0 THEN
				val = iPage
			END IF
		
			CreateMenu name,paren,itype,val,shotoder
			
			response.redirect "/Admin/Menu.asp"
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
                    <!-- #include virtual ="/admin/Menu/_menuOption.asp" -->
					<form method="POST" >
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title"><%= title %></h4>
						</div>
						<div class="panel-collapse">
							<div class="panel-body">
								<div class="form-group">
									<label for="Name">Tên menu(*)</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="500" data-val-required="Không được để trống tên tài khoản." id="Name" name="Name" type="text" value="<%= name %>">
									<span class="field-validation-valid" data-valmsg-for="Name" data-valmsg-replace="true"></span>
								</div>

								<div class="form-group">
									<label for="Paren">Menu cha</label>
									
									<select class="form-control" name="Paren" id="Paren">
										<option value=""></option>
									<%
										Set Table = GetAllMenu()
										
										Do While NOT Table.Eof
									%>
										<option value="<%= Table("Menu_Id") %>" <%= SelectActive(Table("Menu_Id"),paren) %> ><%= Table("Menu_Name") %></option>
									<%	
										Table.movenext
										loop
										Table.close()
										set Table = nothing
									%>
									</select>
									<span class="field-validation-valid" data-valmsg-for="Paren" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="iType">Kiểu liên kết</label>
									
									<select class="form-control" name="iType" id="iType" onchange="select(this)">
										<option value="0" <%= SelectActive("0",iType) %> >Link liên kết</option>
										<option value="1" <%= SelectActive("1",iType) %> >Trang sẵn có</option>
									</select>
									<span class="field-validation-valid" data-valmsg-for="iType" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group <%= SelectHidden("0",iType) %>" id="linkgroup" >
									<label for="Link">Link</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="500" data-val-required="Không được để trống tên tài khoản." id="Link" name="Link" type="text" value="<%= Link %>">
									<span class="field-validation-valid" data-valmsg-for="Link" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group <%= SelectHidden("1",iType) %>" id="pagegroup" >
									<label for="iPage">Trang sẵn có</label>
									
									<select class="form-control" name="iPage" id="iPage">
										<option value="0" <%= SelectActive("0",iPage) %> >Trang chủ</option>
										<option value="1" <%= SelectActive("1",iPage) %> >Trang tin tức</option>
										<option value="2" <%= SelectActive("2",iPage) %> >Trang sản phẩm</option>
										<option value="3" <%= SelectActive("3",iPage) %> >Trang giới thiệu</option>
									</select>
									<span class="field-validation-valid" data-valmsg-for="iPage" data-valmsg-replace="true"></span>
								</div>
								
								<div class="form-group">
									<label for="ShotOder">Thứ tự xắp xếp</label>
									<input class="form-control" data-val="true" data-val-length="Quá giới hạn ký tự cho phép." data-val-length-max="500" data-val-required="Không được để trống tên tài khoản." id="ShotOder" name="ShotOder" type="text" value="<%= ShotOder %>">
									<span class="field-validation-valid" data-valmsg-for="ShotOder" data-valmsg-replace="true"></span>
								</div>
								
								<script>
									var objlinkgroup = document.getElementById("linkgroup");
									var objpagegroup = document.getElementById("pagegroup");
								
									function select(obj)
									{
										if(obj.value == "0"){
											objpagegroup.className += " hidden";
											objlinkgroup.className = objlinkgroup.className.replace(" hidden","");
										}else if(obj.value == "1"){
											objlinkgroup.className += " hidden";
											objpagegroup.className = objpagegroup.className.replace(" hidden","");
										}
									
									}
								
								</script>
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
