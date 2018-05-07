<%
	Dim page,title
	page = "dashboard"
	title = "Dashboard"
%>
<!-- #include virtual ="/include/admin.asp" -->
<!-- #include virtual ="/include/Contact.asp" -->
<!-- #include virtual ="/include/News.asp" -->
<!-- #include virtual ="/include/Product.asp" -->
<!DOCTYPE html>
<html lang="en">
<!-- #include virtual ="/admin/control/header.asp" -->
<body class="desktop">
    <div id="wrapper">
        <!-- #include virtual ="/admin/control/menu.asp" -->
        <div id="page-wrapper">
            <div class="container-fluid">
				<!-- #include virtual ="/admin/control/GenericMessage.asp" -->
                <div class="mainadminbody" style="min-height:100%;">
					<style>
						p{
							font-size: 16px;
						}
					</style>
					<%   
						contactcountstatus0 = GetCountContactStatus(0)
						contactcountstatus2 = GetCountContactStatus(2)
						
						IF contactcountstatus0 > 0 OR contactcountstatus2 > 0 THEN
					%>
					<div class="panel">
						<div class="panel-content">
						<%
							IF contactcountstatus0 > 0  THEN
								response.write("<p>Có " &contactcountstatus0& " liên hệ đang chờ duyệt</p>")
							END IF
							IF contactcountstatus2 > 0  THEN
								response.write("<p> Có " &contactcountstatus2& " liên hệ đang xử lý</p>")
							END IF
						
						%>
						</div>
					</div>
					<% END IF %>
					<div class="panel">
						<div class="panel-content">
						<%
							newscount = GetCountNews()
							IF newscount > 0  THEN
								response.write("<p>Tổng bài viết đã đăng: "& newscount &"</p>")
							ELSE
								response.write("<p>Không có bài viết nào được đăng lên</p>")
							END IF
							
							productcount = GetCountProduct()
							IF productcount > 0  THEN
								response.write("<p>Tổng sản phẩm đã đăng: "& productcount &"</p>")
							ELSE
								response.write("<p>Không có sản phẩm nào được đăng lên</p>")
							END IF
						%>
						</div>
					</div>

                </div>
                
				<!-- #include virtual ="/admin/control/footer.asp" -->
            </div>
        </div>
    </div>






</body>
</html>
