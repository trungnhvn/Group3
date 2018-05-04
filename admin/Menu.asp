<%
	page = "Menu"
	title = "Quản lý menu"
%>
<!-- #include virtual ="/include/admin.asp" -->
<%




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
                    <!-- #include virtual ="/admin/Menu/_MenuOption.asp" -->
					<% Sub SubMenu(paren) %>
						<%
							Dim SubTable
							Set SubTable = GetListSubMenu(paren)
												
							IF NOT SubTable.Eof THEN
						%>
						<ul>
							<% Do While NOT SubTable.Eof %>
							<li>
								<a href="/Admin/Menu/Edit.asp?id=<%= SubTable("Menu_Id") %>"><%= SubTable("Menu_Name") %></a>
								<% SubMenu(SubTable("Menu_Id")) %>
							</li>
							<% 
								SubTable.movenext
								loop
								SubTable.close()
								set SubTable = nothing
							%>
						</ul>
						<% END IF %>
					<% End Sub %>
					<div class="panel">
						<div class="panel-heading">
							<h5>Quản lý menu</h5>
						</div>
						<div class="panel-content">
							<div id="container">
								<ul>
									<%
										Set Table = GetListRootMenu()
												
										Do While NOT Table.Eof
									%>
									<li class="maincategory">
										<a href="/Admin/Menu/Edit.asp?id=<%= Table("Menu_Id") %>"><%= Table("Menu_Name") %></a>
										<% SubMenu(Table("Menu_Id")) %>
									</li>
									<%	
										Table.movenext
										loop
										Table.close()
										set Table = nothing
									%>
								</ul>
							</div>
						</div>
					</div>

                </div>
				<script>
					$(function () {
						$('#container').jstree({
							'core': {
								'themes': {
									'name': 'proton',
									'responsive': true
								},
								'check_callback': true
							}
						}).bind("select_node.jstree", function (e, data) {
							var href = data.node.a_attr.href;
							document.location.href = href;
						});
						//,
						//'plugins': ["dnd"]
						//$(document).on('dnd_start.vakata', function (e, data) {
						//    console.log('Started');
						//});
						//$(document).on('dnd_stop.vakata', function (e, data) {
						//    var eValue = e;
						//    var dataValue = data;
						//});
					});
				</script>
				<!-- #include virtual ="/admin/control/footer.asp" -->
            </div>
        </div>
    </div>






</body>
</html>
