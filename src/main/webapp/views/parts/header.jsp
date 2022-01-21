<div class="topbar">
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="full">
            <button type="button" id="sidebarCollapse" class="sidebar_toggle"><i class="fa fa-bars"></i></button>
            <div class="right_topbar">
                <div class="icon_info">
<%--                    <ul>--%>
<%--                        <li><a href="#"><i class="fa fa-bell-o"></i><span class="badge">2</span></a></li>--%>
<%--                        <li><a href="#"><i class="fa fa-question-circle"></i></a></li>--%>
<%--                        <li><a href="#"><i class="fa fa-envelope-o"></i><span class="badge">3</span></a></li>--%>
<%--                    </ul>--%>
                    <ul class="user_profile_dd">
                        <li>
                            <a class="dropdown-toggle" data-toggle="dropdown">
<%--                                <img class="img-responsive rounded-circle"--%>
<%--                                                                                   src="assets/images/layout_img/user_img.jpg"--%>
<%--                                                                                   alt="#"/>--%>
                                <span class="name_user"><%= session.getAttribute("user_name")%></span></a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="<%=request.getContextPath()%>/profile">My Profile</a>
                                <form method="post" action="<%=request.getContextPath()%>/login?op=logout">
                                    <button class="dropdown-item border-0 " href="<%=request.getContextPath()%>/login?op=logout" style="background-color: transparent;font-size: 15px;color: #15283c;padding-left: 15px;cursor: pointer">
                                        Log Out
                                        <i class="fa fa-sign-out"></i></button>
                                </form>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </nav>
</div>
