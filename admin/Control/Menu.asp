<nav class="navbar navbar-inverse" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".mvcforum-nav">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/Admin">
                    <%= title %>
                </a>
            </div>

            
<ul class="nav navbar-right top-nav">
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <%= User_fullname %> <b class="caret"></b></a>
        <ul class="dropdown-menu">
            <li>
				<a href="/Admin/User/ChangInfo.asp">
                    <i class="fa fa-fw fa-credit-card"></i> Đổi thông tin
                </a>
                <a href="/Admin/User/ChangPass.asp">
                    <i class="fa fa-fw fa-lock"></i> Đổi mật khẩu
                </a>
            </li>
            <li class="divider"></li>
            <li>
                <a href="/admin/Logout.asp"><i class="fa fa-fw fa-power-off"></i> Đăng xuất</a>
            </li>
        </ul>
    </li>
</ul>
<div class="collapse navbar-collapse mvcforum-nav">
    <ul class="nav navbar-nav side-nav">
        <li>
            <a href="/Home.asp"><i class="fa fa-fw fa-arrow-left"></i> Trang chủ</a>
        </li>
        <li>
            <a href="/Admin/Dashboard.asp" class="<%= PageActive("Dashboard") %>">
                <i class="fa fa-fw fa-dashboard"></i> Dashboard
            </a>
        </li>
        <li>
            <a href="/Admin/Settings.asp" class="<%= PageActive("Settings") %>">
                <i class="fa fa-fw fa-cogs"></i> Settings
            </a>
        </li>
        <li>
            <a href="/Admin/Menu.asp" class="<%= PageActive("Menu") %>">
                <i class="fa fa-fw fa-bars"></i> Quản lý menus
            </a>
        </li>
        <li>
            <a href="/Admin/Category.asp" class="<%= PageActive("Category") %>">
                <i class="fa fa-fw fa-folder-open-o"></i> Quản lý danh mục
            </a>
        </li>
        <li>
            <a href="/Admin/News.asp" class="<%= PageActive("News") %>">
                <i class="fa fa-fw fa-file-text-o"></i> Quản lý bài viết
            </a>
        </li>
		<li>
            <a href="/Admin/Product.asp" class="<%= PageActive("Product") %>">
                <i class="fa fa-fw fa-file-text-o"></i> Quản lý sản phẩm
            </a>
        </li>
        <li>
            <a href="/Admin/Contact.asp" class="<%= PageActive("Contact") %>">
                <i class="fa fa-fw fa-envelope"></i> Quản lý liên hệ
            </a>
        </li>
        <li>
            <a href="/Admin/Photo.asp" class="<%= PageActive("Photo") %>">
                <i class="fa fa-fw fa-picture-o"></i> Quản lý hình ảnh
            </a>
        </li>
        <li>
			<a href="/Admin/User.asp" class="<%= PageActive("User") %>">
                <i class="fa fa-fw fa-users"></i> Quản lý tài khoản
            </a>
        </li>
    </ul>
</div>
        </nav>