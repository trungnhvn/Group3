<nav class="navbar navbar-inverse" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".mvcforum-nav">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/Admin">
                    Site.MvcForum
                </a>
            </div>

            
<ul class="nav navbar-right top-nav">
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> kaisermtv <b class="caret"></b></a>
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
            <a href="/Admin" class="active">
                <i class="fa fa-fw fa-dashboard"></i> Dashboard
            </a>
        </li>
        <li>
            

            <a href="#" data-toggle="collapse" data-target="#settings" class="">
                <i class="fa fa-fw fa-cogs"></i> Settings <i class="fa fa-fw fa-caret-down"></i>
            </a>
            <ul id="settings" class="collapse ">
                <li>
                    <a href="/Admin/Setting/General" class="">
                        General Setting
                    </a>
                </li>
                <li>
                    <a href="/Admin/Setting/TermsConditions" class="">
                        Terms & Conditions
                    </a>
                </li>
                <li>
                    <a href="/Admin/Setting/Email" class="">
                        Email
                    </a>
                </li>
                <li>
                    <a href="/Admin/Setting/Registration" class="">
                        Registration
                    </a>
                </li>
                <li>
                    <a href="/Admin/Setting/Themes" class="">
                        Themes
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="/Admin/AdminMenu" class="">
                <i class="fa fa-fw fa-bars"></i> Menus
            </a>
        </li>
        <li>
            <a href="/Admin/AdminCategory" class="">
                <i class="fa fa-fw fa-folder-open-o"></i> Categories
            </a>
        </li>
        <li>
            <a href="/Admin/AdminTopic" class="">
                <i class="fa fa-fw fa-file-text-o"></i> Topic
            </a>
        </li>
        <li>
            <a href="/Admin/AdminBooking" class="">
                <i class="fa fa-fw fa-user-plus"></i> Booking
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
            <a href="#" data-toggle="collapse" data-target="#tags">
                <i class="fa fa-fw fa-tags"></i> Tags <i class="fa fa-fw fa-caret-down"></i>
            </a>
            <ul id="tags" class="collapse">
                <li>
                    <a href="/Admin/AdminTag" class="">
                        Manage Tags
                    </a>
                </li>
                <li>
                    <a href="/Admin/AdminTag/MoveTags" class="">
                        Change Tags On Topics
                    </a>
                </li>
            </ul>

        </li>
        <li>
            <a href="/Admin/AdminBadge" class="">
                <i class="fa fa-fw fa-trophy"></i> Badges
            </a>
        </li>
        <li>
            <a href="#" data-toggle="collapse" data-target="#permissions">
                <i class="fa fa-fw fa-check-square-o"></i> Permissions <i class="fa fa-fw fa-caret-down"></i>
            </a>
            <ul id="permissions" class="collapse">
                <li>
                    <a href="/Admin/Permissions" class="">Manage Permissions</a>
                </li>
                <li>
                    <a href="/Admin/Permissions/PermissionTypes" class="">Add/Remove Permission Types</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#" data-toggle="collapse" data-target="#membership">
                <i class="fa fa-fw fa-users"></i> Membership <i class="fa fa-fw fa-caret-down"></i>
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
        <li>
            <a href="#" data-toggle="collapse" data-target="#spam">
                <i class="fa fa-fw fa-frown-o"></i> Spam Prevention <i class="fa fa-fw fa-caret-down"></i>
            </a>
            <ul id="spam" class="collapse">
                <li>
                    <a href="/Admin/BannedEmail" class="">Ban Emails</a>
                </li>
                <li>
                    <a href="/Admin/BannedWord" class="">Banned &amp; Stop Words</a>
                </li>
                <li>
                    <a href="/Admin/AdminSpam/Akismet" class="">Akismet</a>
                </li>
                <li>
                    <a href="/Admin/AdminSpam/RegistrationQuestion" class="">Registration Question</a>
                </li>
                <li>
                    <a href="/Admin/AdminSpam/SpamReporting" class="">Spam Reporting</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#" data-toggle="collapse" data-target="#language">
                <i class="fa fa-fw fa-language"></i> Languages <i class="fa fa-fw fa-caret-down"></i>
            </a>
            <ul id="language" class="collapse">
                <li>
                    <a href="/Admin/AdminLanguage/Create" class="">Add Language</a>
                </li>
                <li>
                    <a href="/Admin/AdminLanguage" class="">Edit Language</a>
                </li>
                <li>
                    <a href="/Admin/ImportExport/Languages" class="">Import / Export</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="/Admin/Settings/CustomCode" class=""><i class="fa fa-fw fa-code"></i> Custom Code</a>
        </li>
        <li>
            <a href="#" data-toggle="collapse" data-target="#batch">
                <i class="fa fa-fw fa-bolt"></i> Batch Tools <i class="fa fa-fw fa-caret-down"></i>
            </a>
            <ul id="batch" class="collapse">
                <li>
                    <a href="/Admin/Batch/BatchDeleteMembers" class="">Batch Delete Members</a>
                </li>
                <li>
                    <a href="/Admin/Batch/BatchMoveTopics" class="">Batch Move Topics</a>
                </li>
                <li>
                    <a href="/Admin/Batch/BatchDeletePrivateMessages" class="">Batch Delete Private Messages</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="/Admin/Log" class=""><i class="fa fa-fw fa-file-text-o"></i> Log</a>
        </li>
    </ul>
</div>
        </nav>