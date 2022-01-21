<nav id="sidebar">
    <div class="sidebar_blog_1">
        <div class="sidebar-header">
            <div class="logo_section">
<%--                <a href=""><img class="logo_icon img-responsive" src="assets/images/logo/logo_icon.png" alt="#" /></a>--%>
            </div>
        </div>
        <div class="sidebar_user_info">
            <div class="icon_setting"></div>
            <div class="user_profle_side">
<%--                <div class="user_img"><img class="img-responsive" src="assets/images/layout_img/user_img.jpg" alt="#" /></div>--%>
                <div class="user_info">
                    <h6><%= session.getAttribute("user_name")%></h6>
                    <p><span class="online_animation"></span> Online</p>
                </div>
            </div>
        </div>
    </div>
    <div class="sidebar_blog_2">
        <h4>General</h4>
        <ul class="list-unstyled components">
            <li><a href="<%=request.getContextPath()%>/"><i class="fa fa-dashboard yellow_color"></i> <span>Dashboard</span></a></li>
            <li><a href="<%=request.getContextPath()%>/salles"><i class="fa fa-building orange_color"></i> <span>Salles</span></a></li>
            <li><a href="<%=request.getContextPath()%>/machines"><i class="fa fa-desktop blue1_color"></i> <span>Machines</span></a></li>
            <li><a href="<%=request.getContextPath()%>/machines?op=search_date"><i class="fa fa-calendar purple_color"></i> <span>Machines date</span></a></li>

        </ul>
    </div>
</nav>
