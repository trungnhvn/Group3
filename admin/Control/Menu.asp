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
                <a href="/PrivateMessage">
                    <i class="fa fa-fw fa-envelope"></i> Private Messages
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
            <a href="/"><i class="fa fa-fw fa-arrow-left"></i> Main Site</a>
        </li>
        <li>
            <a href="/Admin/Dashboard.asp" class="active">
                <i class="fa fa-fw fa-dashboard"></i> Dashboard
            </a>
        </li>
        <li>
            <a href="#" data-toggle="collapse" class="">
                <i class="fa fa-fw fa-cogs"></i> Settings <i class="fa fa-fw fa-caret-down"></i>
            </a>
        </li>
        <li>
            <a href="/Admin/AdminMenu" class="">
                <i class="fa fa-fw fa-bars"></i> Menus
            </a>
        </li>
        <li>
            <a href="/Admin/AdminCategory" class="">
                <i class="fa fa-fw fa-folder-open-o"></i> Danh mục
            </a>
        </li>
        <li>
            <a href="/Admin/AdminTopic" class="">
                <i class="fa fa-fw fa-file-text-o"></i> Bài viết
            </a>
        </li>
        <li>
            <a href="/Admin/AdminContact" class="">
                <i class="fa fa-fw fa-envelope"></i> Contact
            </a>
        </li>
        <li>
            <a href="/Admin/AdminCarousel" class="">
                <i class="fa fa-fw fa-picture-o"></i> Carousel
            </a>
        </li>
        <li>
            <a href="#" data-toggle="collapse" data-target="#membership">
                <i class="fa fa-fw fa-users"></i> User <i class="fa fa-fw fa-caret-down"></i>
            </a>
            <ul id="membership" class="collapse">
                <li>
                    <a href="/Admin/Account/Manage" class="">Manage Users</a>
                </li>
                <li>
                    <a href="/Admin/Account/ListAllRoles" class="">Manage Roles</a>
                </li>
                <li>
                    <a href="/Admin/Account/AddRole" class="">Add Roles</a>
                </li>
                <li>
                    <a href="/Admin/AdminSocial" class="">Social Logins</a>
                </li>
                <li>
                    <a href="/Admin/ImportExport/Members" class="">Import / Export</a>
                </li>
            </ul>
        </li>
    </ul>
</div>
        </nav>