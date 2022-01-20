<!DOCTYPE html>
<html lang="en">
<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>Dashboard</title>
    <!-- site icon -->
    <%--      <link rel="icon" href="<%=request.getContextPath()%>/images/fevicon.png" type="image/png" />--%>
    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/WEB-INF/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <!-- site css -->
    <style>
        /*------------------------------------------------------------------
   File Name: style.css
   Template Name: Pluto - Responsive HTML5 Template
   Created By: html.design
   Envato Profile: https://themeforest.net/user/htmldotdesign
   Website: https://html.design
   Version: 1.0
-------------------------------------------------------------------*/

        /*------------------------------------------------------------------
            [Table of contents]

            1. import fonts
            2. import files
            3. basic
            4. header
            5. content section
            6. Progressbar
            7. Table style
            8. Social icon
            9. Pie charts
            10. Testimonial slider
            11. Blog Section
            12. Dashboard Style 2
            13. Footer
            14. Widgets section
            15. Calendar section
            16. General Elements
                -> tabbar style 1
                -> tabbar style 2
                -> tabbar style 3
                -> button section
                -> pagination
                -> model bt
            17. Gallery Section
            18. Icons
            19. Invoice
            20. Price table
            21. Mail
            22. Price table page
            23. Contact page
            24. Progress bar
            25. Login Section
            26. Error
            27. Map

        -------------------------------------------------------------------*/

        /*------------------------------------------------------------------
            1. import fonts
        -------------------------------------------------------------------*/

        @import url('https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,600,700,900');
        @import url('https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i');
        @import url('https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i');
        @import url('https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,500i,700,700i');
        @import url('https://fonts.googleapis.com/css?family=Arvo:400,400i,700,700i');
        @import url('https://fonts.googleapis.com/css?family=Rajdhani:300,400,500,600,700');

        /*------------------------------------------------------------------
            2. import files
        -------------------------------------------------------------------*/

        @import url(<%=request.getContextPath()%> /assets/css/animate.css);
        @import url(<%=request.getContextPath()%> /assets/css/flaticon.css);
        @import url(<%=request.getContextPath()%> /assets/css/font_awesome.min.css);

        /*------------------------------------------------------------------
            3. basic
        -------------------------------------------------------------------*/

        * {
            margin: 0;
            padding: 0;
            outline: none !important;
        }

        html,
        body {
            color: #898989;
            font-size: 14px;
            font-family: 'Poppins', sans-serif;
            line-height: normal;
            font-weight: 300;
            overflow-x: hidden !important;
        }

        body.demos .section {
            background: url(<%=request.getContextPath()%>/assets/images/layout_img/bg1.png) repeat top center #f2f3f5;
        }

        body.demos .section-title img {
            max-width: 280px;
            display: block;
            margin: 10px auto;
        }

        body.demos .service-widget h3 {
            border-bottom: 1px solid #ededed;
            font-size: 18px;
            padding: 20px 0;
            background-color: #ffffff;
        }

        body.demos .service-widget {
            margin: 0 0 30px;
            padding: 30px;
            background-color: #fff
        }

        body.demos .container-fluid {
            max-width: 1080px
        }

        a {
            color: #1f1f1f;
            text-decoration: none !important;
            outline: none !important;
            -webkit-transition: all .3s ease-in-out;
            -moz-transition: all .3s ease-in-out;
            -ms-transition: all .3s ease-in-out;
            -o-transition: all .3s ease-in-out;
            transition: all .3s ease-in-out;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            letter-spacing: 0;
            font-weight: normal;
            position: relative;
            padding: 0;
            font-weight: normal;
            line-height: normal;
            color: #1f1f1f;
            margin: 0
        }

        h1 {
            font-size: 24px
        }

        .small_heading.main-heading h2 {
            font-size: 21px;
        }

        .small_heading.main-heading::after {
            top: 18px;
        }

        .small_heading.main-heading {
            margin-bottom: 20px;
            width: 100%;
        }

        .img-responsive {
            max-width: 100%;
        }

        h3 {
            font-size: 18px
        }

        h4 {
            font-size: 16px
        }

        h5 {
            font-size: 14px
        }

        h6 {
            font-size: 13px
        }

        h1 a,
        h2 a,
        h3 a,
        h4 a,
        h5 a,
        h6 a {
            color: #212121;
            text-decoration: none !important;
            opacity: 1
        }

        a {
            color: #898989;
            text-decoration: none;
            outline: none;
        }

        a,
        .btn {
            text-decoration: none !important;
            outline: none !important;
            -webkit-transition: all .3s ease-in-out;
            -moz-transition: all .3s ease-in-out;
            -ms-transition: all .3s ease-in-out;
            -o-transition: all .3s ease-in-out;
            transition: all .3s ease-in-out;
        }

        .btn-custom {
            margin-top: 20px;
            background-color: transparent;
            border: 2px solid #ddd;
            padding: 12px 40px;
            font-size: 16px;
        }

        .btn-success {
            color: #fff;
            background-color: #1ed085;
            border-color: #1ed085;
        }

        ul {
            list-style-type: none;
            padding: 0px;
            margin: 0px;
        }


        /*--
        a.btn {
            min-width: 170px;
            height: 40px;
            border-radius: 100px;
            padding: 0;
            text-align: center;
            line-height: 40px;
            border: none;
            font-size: 14px;
            font-weight: 600;
            text-transform: uppercase;
            margin-top: 10px;
        }
        --*/

        .red_bg {
            background: #ff4748;
        }

        .blue_bg {
            background: #36a9e2;
        }

        .yellow_bg {
            background: #fabb3d;
        }

        .green_bg {
            background: #79c347;
        }

        .green_bg2 {
            background: #1ed085;
        }

        .purple_bg {
            background: #8e68ef;
        }

        .padding_top_10 {
            padding-top: 10px !important;
        }

        .padding_top_20 {
            padding-top: 20px !important;
        }

        .padding-bottom_0 {
            padding-bottom: 0 !important;
        }

        .padding-bottom_1 {
            padding-bottom: 10px !important;
        }

        .padding-bottom_2 {
            padding-bottom: 20px !important;
        }

        .padding-bottom_3 {
            padding-bottom: 30px !important;
        }

        .padding-bottom_4 {
            padding-bottom: 40px !important;
        }

        .padding-bottom_5 {
            padding-bottom: 50px !important;
        }

        .padding_infor_info {
            padding: 35px 35px;
            float: left;
            width: 100%;
        }

        .color_black p,
        .color_black ul,
        .color_black ul li {
            color: #000;
        }

        button i {
            color: #fff;
        }

        .lead {
            font-size: 18px;
            line-height: 30px;
            color: #767676;
            margin: 0;
            padding: 0;
        }

        blockquote {
            margin: 20px 0 20px;
            padding: 30px;
        }

        .light_silver {
            background: #f2f1f1;
        }

        h2 {
            font-size: 30px;
            color: #000;
            line-height: 20px;
            font-weight: 700;
            position: relative;
        }

        h3 {
            font-size: 24px;
            color: #000;
            line-height: normal;
            font-weight: 700;
            text-transform: uppercase;
        }

        h4 {
            font-size: 18px;
            color: #000;
            line-height: 21px;
            font-weight: 600;
            text-transform: none;
            margin-bottom: 15px;
        }

        h5 {
            font-size: 15px;
            font-weight: 700;
            text-transform: uppercase;
            margin: 0;
            line-height: normal;
            color: #000;
        }

        p {
            color: #58718a;
            font-size: 14px;
            line-height: 21px;
        }

        button,
        input,
        select,
        textarea,
        option {
            font-family: 'Poppins', sans-serif;
        }

        a#submit {
            z-index: 1;
        }

        a:hover,
        a:focus {
            color: #2a3a4b;
            text-decoration: none;
        }

        .span1,
        .span2,
        .span3,
        .span4,
        .span5,
        .span6,
        .span7,
        .span8,
        .span9,
        .span10 {
            padding: 0 15px;
            float: left;
            min-height: 25px;
        }

        .border_radius_0 {
            border-radius: 0 !important;
        }

        .span1 {
            width: 10%;
        }

        .span2 {
            width: 20%;
        }

        .span3 {
            width: 30%;
        }

        .span4 {
            width: 40%;
        }

        .span5 {
            width: 50%;
        }

        .span6 {
            width: 60%;
        }

        .span7 {
            width: 70%;
        }

        .span8 {
            width: 80%;
        }

        .span9 {
            width: 90%;
        }

        .span10 {
            width: 100%;
        }

        .container {
            width: 1200px;
        }

        .section_padding {
            padding: 80px 0 100px;
        }

        .layout_2_padding {
            padding: 100px 0 80px;
        }

        .full {
            width: 100%;
            float: left;
        }

        .brown_color {
            color: #795548 !important;
        }

        .brown_bg {
            background: #795548 !important;
        }

        .blue1_color {
            color: #2196f3 !important;
        }

        .blue1_bg {
            background: #2196f3 !important;
        }

        .orange_color {
            color: #ff5722 !important;
        }

        .orange_bg {
            background: #ff5722 !important;
        }

        .purple_color {
            color: #673ab7 !important;
        }

        .purple_bg {
            background: #673ab7 !important;
        }

        .purple_color2 {
            color: #3f51b5 !important;
        }

        .purple_bg2 {
            background: #3f51b5 !important;
        }

        .blue2_color {
            color: #03a9f4 !important;
        }

        .blue2_bg {
            background: #03a9f4 !important;
        }

        .red_color {
            color: #e91e63 !important;
        }

        .red_bg {
            background: #e91e63 !important;
        }

        .yellow_color {
            color: #ff9800 !important;
        }

        .yellow_bg {
            background: #ff9800 !important;
        }

        .purple_color2 {
            color: #9c27b0 !important;
        }

        .purple_bg2 {
            background: #9c27b0 !important;
        }

        .orange_color2 {
            color: #f44336 !important;
        }

        .orange_bg2 {
            background: #f44336 !important;
        }

        .green_color {
            color: #009688 !important;
        }

        .green_bg {
            background: #009688 !important;
        }

        .heading1 h2 {
            line-height: normal;
            font-size: 21px;
            font-weight: 400;
            margin: 0;
            padding-left: 0;
            color: #15283c;
            letter-spacing: 0px;
        }

        .margin_top_50 {
            margin-top: 50px;
        }

        .margin_top_30 {
            margin-top: 30px;
        }

        .margin_0 {
            margin: 0 !important;
        }

        .center {
            display: flex;
            justify-content: center;
        }

        .verticle_center {
            display: flex;
            align-items: center;
        }

        .dropdown-item {
            font-size: 13px;
        }

        .column img {
            width: 100%;
        }

        .max_w-50 {
            max-width: 50px;
        }


        /*------------------------------------------------------------------
            4. header
        -------------------------------------------------------------------*/

        .full_container {
            width: 100%;
            max-width: 100%;
            padding: 0;
            margin: 0;
        }

        .inner_container {
            padding: 0;
            margin: 0;
            display: flex;
        }


        /*==============
            - topbar
        ==============*/

        .topbar {
            position: fixed;
            width: 100%;
            padding-left: 280px;
            z-index: 2;
            background: #15283c;
            top: 0;
            transition: ease all 0.3s;
            left: 0;
        }

        #sidebar.active + #content .topbar {
            padding-left: 90px;
        }

        .topbar .navbar {
            margin: 0;
        }

        .right_topbar {
            float: right;
            padding: 0;
        }

        .icon_info {
            float: left;
            width: 100%;
        }

        .icon_info ul {
            float: left;
            width: auto;
            list-style: none;
            margin: 0;
        }

        .icon_info ul li {
            float: left;
            width: 35px;
            height: 35px;
            border-radius: 100%;
            text-align: center;
            line-height: 35px;
            position: relative;
            margin: 15px 0 0 5px;
        }

        .icon_info ul li .fa-question-circle {
            font-size: 21px;
            position: relative;
            top: 1px;
        }

        .icon_info ul li a {
            color: #fff;
            font-size: 18px;
            font-weight: normal;
        }

        .icon_info ul li a img {
            width: 35px;
        }

        .icon_info ul.user_profile_dd li {
            width: auto;
        }

        .icon_info ul.user_profile_dd > li span {
            font-size: 13px;
            font-weight: 500;
            color: #fff;
            padding: 0 35px 0 10px;
        }

        .icon_info ul.user_profile_dd li > a::after {
            color: #fff;
            top: 13px;
            right: 28px;
            display: block;
            position: absolute;
            transform: translateY(-50%);
            content: "\f107";
            font-family: 'fontawesome';
            border: none;
            font-size: 18px;
        }

        .icon_info ul.user_profile_dd {
            float: left;
            margin: 0 0 0 25px;
        }

        .icon_info ul.user_profile_dd li a {
            cursor: pointer;
        }

        .icon_info ul.user_profile_dd > li {
            width: auto;
            border-radius: 0;
            background: #ff5722;
            margin: 0;
            padding: 12px 0 12px 20px;
            height: auto;
        }

        .sidebar_toggle {
            border: none;
            padding: 14px 26px 14px;
            font-size: 21px;
            background: #ff5722;
            margin-right: 0;
            cursor: pointer;
            float: left;
        }

        .icon_info span.badge {
            font-size: 10px;
            line-height: 16px;
            padding: 2px 6px;
            position: absolute;
            right: -2px;
            top: -7px;
            background: #ff5722;
            border-radius: 100%;
            color: #fff;
            font-weight: 600;
            width: 19px;
            height: 19px;
        }

        .icon_info ul.user_profile_dd li div a {
            font-size: 15px;
            color: #15283c;
            padding: 4px 15px;
            border-bottom: none;
            line-height: normal;
        }

        .icon_info ul.user_profile_dd li div a span {
            font-size: 13px;
            color: #15283c;
            font-weight: normal;
            padding: 0;
            transition: all .3s ease-in-out;
            line-height: normal;
        }

        .icon_info ul.user_profile_dd li div a:hover,
        .icon_info ul.user_profile_dd li div a:focus {
            background: #243147;
            color: #fff;
        }

        .icon_info ul.user_profile_dd li div a:hover span,
        .icon_info ul.user_profile_dd li div a:focus span {
            color: #fff;
        }

        .user_profile_dd .dropdown-menu {
            position: absolute;
            top: 100%;
            right: 0;
            z-index: 1000;
            float: left;
            padding: 10px 6px;
            margin: 0;
            font-size: 15px;
            color: #212529;
            text-align: left;
            list-style: none;
            background-color: #fff;
            background-clip: padding-box;
            border-radius: 0;
            width: 100%;
            box-shadow: -1px 1px 4px -2px rgba(0, 0, 0, 0.2);
            border: none;
        }


        /**-- sidebar --**/

        .navbar-btn {
            box-shadow: none;
            outline: none !important;
            border: none;
        }

        .line {
            width: 100%;
            height: 1px;
            border-bottom: 1px dashed #ddd;
            margin: 40px 0;
        }

        i,
        span {
            display: inline-block;
        }

        #sidebar {
            min-width: 280px;
            max-width: 280px;
            background-color: #15283c;
            color: #fff;
            transition: all 0.3s;
            position: relative;
            z-index: 11;
            box-shadow: 0 0 3px 0px rgba(0, 0, 0, 0.4);
            float: left;
            width: 100%;
            background-image: url('assets/images/layout_img/pattern_h.png');
            position: fixed;
            height: 100%;
            overflow: auto;
        }

        .sidebar_blog_1,
        .sidebar_blog_2,
        .sidebar_blog_3 {
            float: left;
            width: 100%;
        }

        #sidebar ul li a {
            text-align: left;
        }

        #sidebar .sidebar-header strong {
            display: none;
            font-size: 1.8em;
        }

        #sidebar ul.components {
            padding: 15px 0;
            margin: 0;
            float: left;
            width: 100%;
        }

        #sidebar ul li a {
            padding: 15px 25px;
            display: block;
            font-size: 14px;
            color: rgba(255, 255, 255, 0.9);
            font-weight: 300;
        }

        #sidebar ul li a:hover,
        #sidebar ul li a:focus {
            color: rgba(255, 255, 255, 0.95);
        }

        #sidebar ul.components li {
            position: relative;
        }

        #sidebar ul.components ul {
            background: #214162;
            padding: 20px 0;
        }

        #sidebar ul.components ul li a {
            font-size: 13px;
            color: rgba(255, 255, 255, .7);
            padding: 7px 35px;
        }

        #sidebar ul.components ul li a:hover {
            color: #fff;
            background: transparent;
            padding-left: 45px;
        }

        #sidebar ul li a i {
            margin-right: 20px;
            width: 15px;
            font-size: 20px;
            float: left;
        }

        .bottom_sidebar ul li {
            float: left;
            width: 50%;
            list-style: none;
        }

        a[data-toggle="collapse"] {
            position: relative;
        }

        #content {
            width: 100%;
            min-height: 100vh;
            transition: ease all 0.3s;
            position: relative;
            padding: 60px 25px 25px 305px;
            background: #f8f8f8;
        }

        .page_title {
            background: #fff;
            margin-top: 0;
            margin-bottom: 30px;
            padding: 25px 35px 22px 38px;
            box-shadow: 1px 0 5px rgba(0, 0, 0, 0.1);
            margin-left: -40px;
            margin-right: -40px;
            position: relative;
        }

        .page_title h2 {
            font-size: 20px;
            font-weight: 500;
            color: #15283c;
        }

        #sidebar.active + #content {
            padding-left: 115px;
        }

        .topbar .navbar {
            padding: 0;
            background: #15283c;
            border: none;
            border-radius: 0;
        }

        .user_profle_side {
            display: flex;
        }

        .sidebar_user_info {
            padding: 15px 25px;
            background: #214162;
        }

        .user_img img {
            border-radius: 100% 100%;
        }

        .user_info {
            margin: 0 0 0 15px;
            padding-top: 15px;
        }

        .online_animation {
            width: 12px;
            height: 12px;
            background: #1ed085;
            border-radius: 100%;
            margin-top: 0;
            position: relative;
            top: 1px;
            -webkit-animation: online 2s infinite;
            /* Safari 4.0 - 8.0 */
            animation: online 2s infinite
        }


        /* Safari 4.0 - 8.0 */

        @-webkit-keyframes online {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes online {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        .user_info p {
            font-size: 13px;
            font-weight: 500;
            color: #1ed085;
            margin: 0;
        }

        .user_info h6 {
            font-size: 17px;
            font-weight: 500;
            color: #fff;
            letter-spacing: 0;
        }

        .user_img {
            width: 75px;
            height: 75px;
            float: left;
        }

        .logo_section {
            padding: 0;
            width: auto;
            text-align: center;
            background: transparent;
            float: left;
        }

        .logo_section img {
            height: 42px;
            padding: 0;
            margin: 8px 15px 0;
        }

        #sidebar.active .logo_section a {
            width: 100%;
            display: flex;
            justify-content: center;
        }

        .logo_section img.logo_icon {
            margin: 0;
            text-align: center;
            padding: 8px 8px;
            height: 60px;
        }

        #sidebar h4 {
            background: #15283c;
            margin: 0;
            padding: 21px 25px 19px;
            font-weight: 500;
            font-size: 18px;
            color: #fff;
            border-bottom: solid #ff5722 1px;
        }


        /*------------------------------------------------------------------
            5. content section
        -------------------------------------------------------------------*/

        .content_inner_section {
            background: #fff;
            box-shadow: 0 0 3px 0px rgba(0, 0, 0, 0.4);
            padding: 25px 30px;
        }

        .content_inner_section .top_page_header {
            width: 100%;
        }

        .content_inner_section .top_page_header .page_title {
            float: left;
        }

        .content_inner_section .top_page_header .page_title h3 {
            font-size: 21px;
            font-weight: 500;
            text-transform: none;
            color: #222;
        }

        .page_menu_cont {
            width: auto;
            float: right;
        }

        .page_menu_cont ul {
            list-style: none;
            float: left;
            width: 100%;
        }

        .page_menu_cont ul li {
            float: left;
            font-size: 17px;
            margin: 0 15px;
        }

        .counter_section {
            min-height: auto;
            display: block;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
            border: 0px solid #e7e7e7;
            padding: 30px 35px;
            background: #fff;
            border-radius: 5px;
            min-height: 125px;
            display: flex;
        }

        .couter_icon span {
            width: 100%;
            text-align: center;
            color: #fff;
            font-size: 14px;
            margin-top: 5px;
            padding: 0 5px;
            font-weight: 500;
        }

        .couter_icon span {
            width: 100%;
        }

        .couter_icon i {
            color: #fff;
            font-size: 50px;
            line-height: normal;
            width: 100%;
            float: left;
            text-align: center;
        }

        .couter_icon {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0;
            float: left;
            margin: 8px 0 8px;
        }

        .couter_icon > div {
            border-right: solid rgba(255, 255, 255, 0.3) 1px;
            padding-right: 35px;
        }

        .counter_no {
            padding: 0 12px;
            align-content: center;
            align-items: center;
            float: right;
            width: 100%;
        }

        .counter_no p.total_no {
            margin: 0;
            font-size: 45px;
            float: left;
            width: 100%;
            line-height: normal;
            font-weight: 600;
            color: #455a64;
            text-align: right;
            font-size: 24px;
            font-weight: 400;
        }

        .counter_no .head_couter {
            float: left;
            width: 100%;
            color: #99abb4;
            font-weight: 300;
            margin: 0px 0 0 0;
            font-size: 20px;
            text-align: right;
        }

        .counter_no .counter_desrp {
            margin: 0;
            color: #fff;
            line-height: 18px;
        }

        #myChart-top {
            box-shadow: 10px 10px 5px -4px rgba(224, 224, 224, 0.6);
        }

        .zc-ref {
            display: none;
        }

        #myChart-wrapper {
            margin: auto;
        }

        #graph1 {
            margin-top: 10px;
        }

        #rebenue {
        }

        .graph_revenue {
            padding: 0;
            margin-top: 0;
            min-height: auto;
        }

        .graph_head {
            padding: 18px 25px 15px;
            float: left;
            width: 100%;
            border-bottom: solid #f3f3f3 2px;
        }

        .heading1 {
            float: left;
            padding: 0 0 20px 0;
            width: 100%;
            margin-top: 50px;
        }

        .graph_head .heading1 {
            float: left;
            padding: 0;
            width: auto;
        }

        .heading2 {
            background: #fff;
            padding: 15px 25px;
            margin: 20px 0 0 0;
            border-bottom: solid #ff5722 2px;
        }

        .heading2 h3 {
            font-size: 20px;
            text-transform: none;
            font-weight: 600;
            position: relative;
            color: #15283c;
            font-family: 'Raleway', sans-serif;
        }

        .time_form {
            float: right;
            margin: 6px 0 0;
        }

        .time_form form {
            float: left;
            width: 100%;
        }

        .time_form form .field {
            float: left;
            margin-right: 0;
            margin-left: 12px;
        }

        .time_form form .field label {
            margin-right: 12px;
            margin-bottom: 0;
            font-size: 15px;
            color: #999;
        }

        .time_form form .field input {
            border: solid #ddd 1px;
            font-size: 13px;
            font-weight: 500;
            color: #666;
            padding: 6px 10px;
            border-radius: 0;
        }

        .btn.focus,
        .btn:focus {
            box-shadow: none;
        }

        .mail-option .dropdown-menu {
            padding: 10px;
            border-radius: 0;
            font-size: 14px;
            font-weight: 400;
            border: solid #ddd 1px;
        }

        .mail-option .dropdown-menu li {
            margin: 10px 0;
        }

        .mail-option .dropdown-menu {
            padding: 4px 15px;
            border-radius: 0;
            font-size: 14px;
            font-weight: 400;
            border: solid #ddd 1px;
            margin-top: 5px;
        }

        .mail-option .btn-group a.btn {
            border-radius: 0 !important;
            background: #fff;
            padding: 8px 14px;
            color: #666;
            font-size: 14px;
        }


        /*------------------------------------------------------------------
            6. Progressbar
        -------------------------------------------------------------------*/

        .progress_bar {
            padding: 15px 40px 50px 40px;
        }

        .progress.skill-bar {
            background: #e9ecef;
            border-radius: 0;
            height: 10px;
            margin-top: 2px;
            border-radius: 10px;
        }

        .progress.skill-bar .progress-bar {
            background-color: #1ed085;
            box-shadow: inset 0 -2px 0 rgba(0, 0, 0, .15);
        }

        .skill {
            font-size: 14px;
            color: #455a64;
            margin-top: 20px;
            font-weight: 500;
        }

        .skill .info_valume {
            float: right;
        }


        /*------------------------------------------------------------------
            7. Table style
        -------------------------------------------------------------------*/

        .table_format.strp table {
            border-radius: 8px 8px 0 0;
            overflow: hidden;
            color: #666;
        }

        .table_format.strp thead th {
            background: #15283c;
            border: none;
            color: #fff;
            vertical-align: middle;
            font-weight: 400;
            text-transform: capitalize;
            line-height: 1;
            padding: 22px 40px;
            white-space: nowrap;
            font-size: 16px;
        }

        .table_format.strp tbody th,
        .table_format.strp tbody td {
            font-size: 15px;
            padding: 20px 40px;
            vertical-align: middle;
            font-weight: 400;
            /*transform: capitalize;*/
            line-height: 1;
            /*width: white-space;*/
        }

        .top_countries_section {
            background-color: #ff4748;
            border-radius: 8px;
            padding: 25px 40px;
            background-image: -webkit-linear-gradient(90deg, #396afc 0%, #2948ff 100%);
        }

        .top_countries_section ul {
            list-style: none;
        }

        .top_countries_section ul li {
            color: #fff;
            padding: 14px 5px;
            float: left;
            width: 100%;
            border-bottom: solid rgba(255, 255, 255, .2) 1px;
        }

        .top_countries_section ul li span.country_name {
            float: left;
        }

        .top_countries_section ul li span.country_counter {
            float: right;
        }

        .area_chart {
            padding: 30px 0 30px 30px;
            width: 97%;
        }

        .margin_bottom_30 {
            margin-bottom: 30px;
        }

        .white_shd {
            background: #fff;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
            border-radius: 5px;
            margin-top: 0;
        }

        .dark_bg {
            background: #214162;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
            border-radius: 5px;
            margin-top: 0;
        }

        .dark_bg .graph_head {
            border-bottom: solid rgba(255, 255, 255, .1) 2px;
        }

        .dark_bg h2 {
            color: #fff;
        }


        /*------------------------------------------------------------------
            8. Social icon
        -------------------------------------------------------------------*/

        .socile_icons {
            border-radius: 5px;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
            background: #fff;
            min-height: 165px;
        }

        .social_icon {
            width: 100%;
            text-align: center;
            font-size: 45px;
            background: black;
            padding: 10px 0 8px;
            color: #fff;
            background: #222;
        }

        .fb .social_icon {
            background: #3b5998;
        }

        .tw .social_icon {
            background: #00aced;
        }

        .linked .social_icon {
            background: #0077B5;
        }

        .google_p .social_icon {
            background: #d34836;
        }

        .socile_icons .social_cont {
            float: left;
            text-align: center;
            width: 100%;
            padding: 15px 0 15px;
        }

        .socile_icons .social_cont ul {
            margin: 0;
            list-style: none;
        }

        .socile_icons .social_cont ul li {
            float: left;
            width: 50%;
            font-size: 18px;
            color: #455a64;
            line-height: 24px;
        }

        .socile_icons .social_cont ul li span {
            float: left;
            width: 100%;
            color: #99abb4;
            font-size: 17px;
            font-weight: 300;
        }

        .socile_icons .social_cont ul li span strong {
            font-weight: 600;
            color: #455a64;
            font-size: 18px;
        }


        /*------------------------------------------------------------------
            9. Pie charts
        -------------------------------------------------------------------*/


        /**  **/

        #canvas-holder {
            width: 100%;
            margin-top: 50px;
            text-align: center;
        }

        #chartjs-tooltip {
            opacity: 1;
            position: absolute;
            background: rgba(0, 0, 0, .7);
            color: white;
            border-radius: 3px;
            -webkit-transition: all .1s ease;
            transition: all .1s ease;
            pointer-events: none;
            -webkit-transform: translate(-50%, 0);
            transform: translate(-50%, 0);
        }

        .chartjs-tooltip-key {
            display: inline-block;
            width: 10px;
            height: 10px;
            margin-right: 10px;
        }


        /*------------------------------------------------------------------
            10. Testimonial slider
        -------------------------------------------------------------------*/

        #testimonial_slider.carousel {
            width: 86%;
            margin: 35px 7% 35px;
        }

        #testimonial_slider .carousel-inner {
            padding: 0;
            text-align: center;
        }

        #testimonial_slider.carousel .item {
            color: #999;
            font-size: 14px;
            text-align: center;
            overflow: hidden;
            min-height: auto;
        }

        #testimonial_slider.carousel .item a {
            color: #eb7245;
        }

        #testimonial_slider.carousel .img-box {
            width: 120px;
            height: 120px;
            margin: 0 auto;
            border-radius: 50%;
        }

        #testimonial_slider.carousel .img-box img {
            width: 100%;
            height: 100%;
            display: block;
            border-radius: 50%;
        }

        #testimonial_slider.carousel .testimonial {
            padding: 30px 0 10px;
            color: rgba(255, 255, 255, .7);
            font-size: 15px;
            line-height: 24px;
        }

        #testimonial_slider.carousel .overview {
            text-align: center;
            padding-bottom: 5px;
            font-size: 14px;
            color: #1ed085;
            font-weight: 500;
            line-height: 14px;
        }

        #testimonial_slider.carousel .overview b {
            color: #fff;
            font-size: 16px;
            text-transform: none;
            display: block;
            padding-bottom: 5px;
            font-weight: 500;
        }

        #testimonial_slider.carousel .star-rating i {
            font-size: 18px;
            color: #ffdc12;
        }

        #testimonial_slider.carousel .carousel-control {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background: #fff;
            text-shadow: none;
            top: 0;
            opacity: 1;
        }

        #testimonial_slider.carousel .carousel-control i {
            font-size: 20px;
            margin-right: 2px;
            color: #15283c;
            margin-top: -2px;
        }

        #testimonial_slider.carousel .carousel-control.left {
            left: auto;
            right: 40px;
        }

        #testimonial_slider.carousel .carousel-control.right i {
            margin-right: -2px;
            margin-top: -2px;
        }

        #testimonial_slider.carousel .carousel .carousel-indicators {
            bottom: 15px;
        }

        #testimonial_slider.carousel .carousel-indicators li,
        #testimonial_slider.carousel .carousel-indicators li.active {
            width: 11px;
            height: 11px;
            margin: 1px 5px;
            border-radius: 50%;
        }

        #testimonial_slider.carousel .carousel-indicators li {
            background: #e2e2e2;
            border-color: transparent;
        }

        #testimonial_slider.carousel .carousel-indicators li.active {
            border: none;
            background: #888;
        }


        /*------------------------------------------------------------------
            11. Blog Section
        -------------------------------------------------------------------*/

        .dash_head {
            background-image: url('<%=request.getContextPath()%>/assets/images/layout_img/pattern_h.png');
            font-weight: normal;
            height: auto;
            border-radius: 5px 5px 0 0;
            padding: 35px 45px 32px;
            background-size: cover;
            background-color: #214162;
            position: relative;
        }

        .dash_head h3 {
            color: #fff;
            text-transform: none;
            font-weight: 400;
            font-size: 22px;
        }

        .dash_blog {
            min-height: 650px;
            background: #fff;
            border-radius: 5px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
            float: left;
            width: 100%;
            margin-bottom: 15px;
        }

        .plus_green_bt {
            position: absolute;
            right: 0;
            bottom: -54px;
        }

        .plus_green_bt a {
            background: #1ed085;
            color: #fff;
            width: 45px;
            height: 45px;
            float: right;
            border-radius: 50%;
            text-align: center;
            line-height: 45px;
            font-size: 28px;
            font-weight: 500;
        }

        .dash_blog_inner .list_cont {
            border-bottom: 1px solid #f2f2f2;
            padding: 25px 40px;
        }

        .dash_blog_inner .list_cont p {
            margin: 2px 0 0 0;
            font-size: 16px;
            color: #455a64;
        }

        .task_list {
            float: left;
            width: 100%;
            list-style: none;
            margin: 0;
        }

        .task_list li {
            padding: 20px 40px;
            border-bottom: solid #eee 1px;
            line-height: normal;
            font-size: 16px;
            border-left: solid 5px #666;
        }

        .main_bt {
            min-width: 125px;
            height: auto;
            float: left;
            background: #1ed085;
            text-align: center;
            color: #fff;
            padding: 10px 25px;
            font-size: 16px;
            border-radius: 5px;
            border: none;
            transition: ease all 0.5s;
            cursor: pointer;
            font-weight: 300;
        }

        button.main_bt {
            float: none;
            margin: 0;
        }

        .main_bt:hover,
        .main_bt:focus {
            background: #ff5722;
            color: #fff;
        }

        .task_list li a {
            color: #99abb4;
            font-size: 16px;
        }

        .task_list li strong {
            font-weight: 600;
            color: #455a64;
        }

        .task_list li:nth-child(1) {
            border-left-color: #ff9800;
        }

        .task_list li:nth-child(2) {
            border-left-color: #2196f3;
        }

        .task_list li:nth-child(3) {
            border-left-color: #673ab7;
        }

        .task_list li:nth-child(4) {
            border-left-color: #e91e63;
        }

        .task_list li:nth-child(5) {
            border-left-color: #1ed085;
        }

        .msg_list li:nth-child(1) {
            border-left-color: #ff9800;
        }

        .msg_list li:nth-child(2) {
            border-left-color: #2196f3;
        }

        .msg_list li:nth-child(3) {
            border-left-color: #673ab7;
        }

        .msg_list li:nth-child(4) {
            border-left-color: #e91e63;
        }

        .msg_list li:nth-child(5) {
            border-left-color: #1ed085;
        }

        .task_list_main {
            float: left;
            width: 100%;
        }

        .read_more {
            float: left;
            width: 100%;
            margin: 30px 0;
        }

        .dash_blog_inner {
            float: left;
            width: 100%;
        }

        .msg_list_main {
            float: left;
            width: 100%;
        }

        .msg_list_main ul {
            list-style: none;
            float: left;
            width: 100%;
        }

        .msg_list_main ul li {
            padding: 22px 40px;
            border-bottom: solid #eee 1px;
            line-height: normal;
            font-size: 14px;
            border-left: solid 5px #666;
            float: left;
            width: 100%;
            display: flex;
            position: relative;
        }

        .msg_list_main ul li span .time_ago {
            position: absolute;
            right: 40px;
            top: 25px;
        }

        .msg_list_main ul li span p {
            margin: 0;
        }

        .msg_list_main ul li span .name_user {
            font-size: 16px;
            font-weight: 500;
            color: #455a64;
            float: left;
            width: 100%;
            margin-bottom: 0;
            margin-top: 5px;
        }

        .msg_list_main ul li span .msg_user {
            font-size: 15px;
            font-weight: 300;
            color: #99abb4;
        }

        .msg_list_main ul li > span:nth-child(1) {
            margin-right: 20px;
        }

        .msg_list_main ul li > span img {
            width: 70px;
            border-radius: 100%;
        }

        .msg_list li:nth-child(4) {
            border-bottom: none;
        }


        /*------------------------------------------------------------------
            12. Dashboard Style 2
        -------------------------------------------------------------------*/

        .dashboard_2 .social_icon {
            float: left;
            width: 50%;
            height: 148px;
        }

        .dashboard_2 .socile_icons {
            border-radius: 5px;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
            background: #fff;
            min-height: auto;
        }

        .dashboard_2 .social_icon {
            line-height: 135px;
            font-size: 60px;
        }

        .dashboard_2 .social_cont {
            float: left;
            width: 50%;
            padding: 15px 15px;
        }

        .dashboard_2 .social_cont ul li {
            float: left;
            width: 100%;
            font-size: 18px;
            color: #455a64;
            line-height: 24px;
            text-align: right;
            margin-bottom: 10px;
            padding: 0 20px;
        }

        .dashboard_2 .dash_blog {
            padding: 25px;
        }

        #chart-0,
        #chart-1,
        #chart-2,
        #chart-3 {
            height: 380px;
        }


        /*------------------------------------------------------------------
            13. Footer
        -------------------------------------------------------------------*/

        .footer {
            min-height: 65px;
            background: #fff;
            margin-top: 30px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
            border-radius: 5px;
            width: 100%;
        }

        .footer p {
            margin: 0;
            line-height: normal;
            text-align: center;
            font-size: 14px;
            font-weight: 300;
            color: #214162;
            padding: 25px 15px;
        }


        /*------------------------------------------------------------------
            14. Widgets section
        -------------------------------------------------------------------*/

        .info_people {
            padding: 35px;
            display: flex;
        }

        .info_people .p_info_img {
            width: 30%;
        }

        .info_people .p_info_img img {
            width: 100%;
            border-radius: 5px;
        }

        .info_people .user_info_cont {
            width: 60%;
            padding-left: 30px;
            padding-top: 25px;
        }

        .info_people .user_info_cont h4 {
            font-weight: 500;
            margin-bottom: 5px;
        }

        .info_people .user_info_cont p {
            margin: 0;
            font-size: 15px;
            font-weight: 400;
        }

        .info_people .user_info_cont p.p_status {
            font-weight: 600;
            color: #ff5722;
            margin-top: 10px;
        }

        .widget_progress_bar {
            padding: 40px 40px 50px 40px;
        }

        .widget_progress_bar .progress_no {
            font-size: 24px;
            color: #15283c;
            font-weight: 500;
            line-height: normal;
            margin: 0;
        }

        .widget_progress_bar .progress_head {
            font-size: 15px;
            font-weight: 400;
            color: #666;
            padding: 0;
        }

        .widget_progress_bar .progress_bar {
            padding: 0;
        }

        .widget_progress_bar .progress_bar .skill {
            margin-top: 5px;
        }


        /*------------------------------------------------------------------
            15. Calendar section
        -------------------------------------------------------------------*/

        .calendar {
            float: left;
            width: 100%;
        }

        .calendar table.unstackable {
            display: inline-table;
            width: 100%;
        }

        .calendar table.unstackable thead tr:nth-child(1) th {
            font-weight: 500;
            text-shadow: 1px 1px 1px rgba(0, 0, 0, .5);
            border: none;
            color: #fff;
            text-align: center;
            background: #1ed085;
            font-size: 21px;
            padding: 15px 0;
        }

        .calendar table.unstackable thead tr:nth-child(2) {
            background: #666;
            border: none;
            color: #fff;
        }

        .calendar table.unstackable thead tr:nth-child(2) th {
            font-weight: 500;
            text-align: center;
            border: none;
        }

        .calendar table.unstackable tbody tr {
            text-align: center;
            font-size: 15px;
        }

        .calendar table.unstackable thead tr:nth-child(1) th .prev.link {
            position: absolute;
            left: 30px;
            font-size: 32px;
            font-weight: 600;
            top: 6px;
            cursor: pointer;
        }

        .calendar table.unstackable thead tr:nth-child(1) th .next.link {
            position: absolute;
            right: 30px;
            font-size: 32px;
            font-weight: 600;
            top: 6px;
            cursor: pointer;
        }

        .link.disabled {
            opacity: 0.4;
        }

        .calendar tr {
            position: relative;
        }

        i.icon.chevron.left::before {
            content: "\f104";
        }

        i.icon.chevron.right::before {
            content: "\f105";
        }

        i.icon,
        i.icons {
            font-size: 1em;
        }

        i.icon {
            font-family: fontawesome;
            font-style: normal;
            font-weight: 400;
            text-align: center;
        }


        /*------------------------------------------------------------------
            16. General Elements
        -------------------------------------------------------------------*/

        .link.today {
            background: #ff5722;
            color: #fff;
            font-weight: 600;
        }


        /** tabbar style 1 **/

        .tabbar {
            float: left;
            width: 100%;
        }

        .tab-content {
            padding: 20px 0;
        }

        .tab-content p {
            margin: 0;
            line-height: normal;
            font-size: 14px;
            font-weight: 300;
        }

        .tabbar .nav-tabs {
            border-bottom: solid #eee 1px;
        }

        .tabbar nav div.nav-tabs .nav-link {
            border-radius: 0;
            padding: 8px 20px;
            font-size: 14px;
            font-weight: 300;
        }


        /** tabbar style 2 **/

        .tab_style2 .tabbar nav div.nav-tabs .nav-link.active {
            background: #ff5722;
            color: #fff;
            border-color: #ff5722;
        }


        /** tabbar style 3 **/

        .tab_style3 #v-pills-tab {
            float: left;
            width: auto;
            min-width: 120px;
        }

        .tab_style3 #v-pills-tabContent {
            float: left;
            width: 80%;
            padding: 0 20px;
        }

        .tab_style3 .tabbar {
            display: flex;
        }

        .tab_style3 div.tabbar div.nav-pills .nav-link.active {
            background: #ff5722;
            color: #fff;
            border-color: #ff5722;
        }


        /** button section **/

        .btn {
            font-size: 14px;
        }

        .button_sction {
            float: left;
            width: 100%;
        }

        .button_sction .button_block {
            float: left;
            margin: 5px;
        }

        .button_sction .button_block button {
            margin: 0;
        }


        /** pagination **/

        .pagination .btn {
            background: #1ed085;
            color: #fff;
            border-color: #1ed085;
            width: 45px;
            height: 40px;
            font-size: 14px;
            font-weight: 500;
        }

        .pagination.button_section {
            margin: 5px;
        }

        .pagination .btn.active,
        .pagination .btn:hover,
        .pagination .btn:focus {
            background: #333;
            border-color: #333;
        }


        /**-- model bt --**/

        .model_bt {
            padding: 11px 20px 10px;
        }

        .dropdown_section {
            float: left;
            margin: 5px;
        }


        /*------------------------------------------------------------------
            17. Gallery Section
        -------------------------------------------------------------------*/

        .gallery_section_inner .column {
            background: #fff;
            box-shadow: 0 0 13px -10px #000;
            overflow: hidden;
        }

        .heading_section {
            border-top: solid #1ed085 2px;
            background: #15283c;
        }

        .heading_section h4 {
            color: #fff;
            margin: 0;
            font-weight: 200;
            text-align: center;
            padding: 16px 0 16px;
            font-size: 15px;
        }


        /*------------------------------------------------------------------
            18. Icons
        -------------------------------------------------------------------*/

        .fontawesome-icons-list .fw_icon a {
            transition: ease all 0.2s;
        }

        .fw_icon a {
            float: left;
            width: 100%;
            padding: 10px 15px;
            font-size: 14px;
            border-radius: 2px;
            color: rgba(21, 40, 60, 0.6);
        }

        .fw_icon a i {
            width: 25px;
            text-align: center;
            margin-right: 5px;
            font-size: 17px;
        }

        .fontawesome-icons-list .fw_icon a:hover,
        .fontawesome-icons-list .fw_icon a:focus {
            background-color: #1ed085;
            color: #fff;
            text-decoration: none;
            transform: scale(1.1);
        }

        .fw_icon {
            width: 20%;
        }

        .fontawesome-icons-list .fw_icon:nth-child(2n+2) {
            background: #f9f9f9;
        }


        /*------------------------------------------------------------------
            19. Invoice
        -------------------------------------------------------------------*/

        h2.invoice_head {
            font-size: 22px;
            font-weight: 500;
            color: #222;
        }

        h2.invoice_head small {
            font-size: 13px;
            font-weight: 500;
        }

        .heading1 h2 i {
            position: relative;
            top: 1px;
        }

        .invoice_blog h4 {
            color: #15283c;
            background: #f8f8f8;
            padding: 15px 20px;
            font-weight: 400;
            font-size: 18px;
        }

        .invoice_blog p {
            margin: 0;
            padding: 0 20px;
            line-height: 26px;
        }

        .invoice_blog p strong {
            font-weight: 500;
            color: #15283c;
        }

        .table_row thead {
            border: none;
        }

        .table_row thead tr {
            border: none;
            background: #f8f8f8;
            color: #15283c;
        }

        .table_row thead tr th {
            border: none;
            font-size: 15px;
            font-weight: 500;
            padding: 14px 25px 14px;
            color: #15283c;
            text-transform: uppercase;
        }

        .invoice_page .table-striped tbody tr:nth-of-type(2n+2) {
            background-color: #f8f8f8;
        }

        .invoice_page .table-striped tbody tr:nth-of-type(2n+1) {
            background-color: #fff;
        }

        .table_row tbody {
        }

        .table_row tbody tr {
            border: none;
        }

        .table_row tbody tr td {
            font-size: 14px;
            font-weight: 400;
            padding: 12px 25px 12px;
            border: none;
            color: #58718a;
        }


        /*------------------------------------------------------------------
            20. Price table
        -------------------------------------------------------------------*/

        .price_table table.table {
            margin: 0;
        }

        .payment_option {
            list-style: none;
            float: left;
            width: 100%;
        }

        .payment_option li {
            display: inline;
            float: left;
            margin-right: 10px;
            border-radius: 5px;
        }

        .price_table table th {
            font-weight: 500;
        }

        .price_table table th,
        .price_table table td {
            border: none;
            padding: 10px 15px;
            font-size: 14px;
            color: #666;
            vertical-align: middle;
        }

        p.note_cont {
            float: left;
            width: 100%;
            border: solid #1ed085 1px;
            padding: 11px 20px;
            border-radius: 3px;
            color: #1ed085;
            background: rgba(30, 208, 133, 0.05);
            margin-top: 15px;
        }


        /*------------------------------------------------------------------
            21. Mail
        -------------------------------------------------------------------*/

        .mail-box {
            border-collapse: collapse;
            border-spacing: 0;
            display: table;
            table-layout: fixed;
            width: 100%;
        }

        .mail-box aside {
            display: table-cell;
            float: none;
            height: 100%;
            padding: 0;
            vertical-align: top;
        }

        .mail-box .sm-side {
            background: #fff;
            border-radius: 0;
            width: 20%;
        }

        .mail-box .lg-side {
            background: none repeat scroll 0 0 #fff;
            border-radius: 0 4px 4px 0;
            width: 80%;
        }

        .mail-box .sm-side .user-head {
            background: #214162;
            border-radius: 0;
            color: #fff;
            min-height: 80px;
            padding: 11px 25px;
            float: left;
            width: 100%;
        }

        .user-head .inbox-avatar {
            float: left;
            width: 65px;
            margin-right: 5px;
        }

        .user-head .inbox-avatar img {
            border-radius: 100%;
        }

        .user-head .user-name {
            display: inline-block;
            margin: 0 0 0 10px;
        }

        .user-head .user-name h5 {
            font-size: 16px;
            font-weight: 400;
            margin-bottom: -5px;
            margin-top: 10px;
            text-transform: none;
        }

        .user-head .user-name h5 a {
            color: #fff;
        }

        .user-head .user-name span a {
            color: #1ed085;
            font-size: 13px;
        }

        a.mail-dropdown {
            background: none repeat scroll 0 0 #80d3d9;
            border-radius: 2px;
            color: #01a7b3;
            font-size: 10px;
            margin-top: 20px;
            padding: 3px 5px;
        }

        .inbox-body {
            padding: 20px;
            float: left;
            width: 100%;
        }

        .labels-category {
            float: left;
            width: 100%;
            padding: 20px 0 20px 0;
        }

        .btn-compose {
            background: #1ed085;
            color: #fff;
            padding: 12px 0;
            text-align: center;
            width: 100%;
            font-size: 15px;
            font-weight: 500;
        }

        .btn-compose:hover {
            background: #ff5722;
            color: #fff;
        }

        ul.inbox-nav {
            display: inline-block;
            margin: 0;
            padding: 0 0 20px 0;
            width: 100%;
        }

        .labels-info {
            float: left;
            width: 100%;
            padding: 20px;
        }

        ul.labels-category li {
            float: left;
            width: 100%;
            margin: 5px 0;
            padding: 0 20px;
        }

        ul.labels-category li a:hover {
            color: #1ed085;
        }

        .inbox-divider {
            border-bottom: 1px solid #ddd;
        }

        ul.inbox-nav li {
            display: inline-block;
            line-height: 45px;
            width: 100%;
        }

        ul.inbox-nav li a {
            display: inline-block;
            line-height: 48px;
            padding: 0 20px;
            width: 100%;
            font-size: 15px;
        }

        ul.inbox-nav li a:hover,
        ul.inbox-nav li.active a,
        ul.inbox-nav li a:focus {
            background: #214162;
            color: #fff;
        }

        ul.inbox-nav li a:hover i,
        ul.inbox-nav li.active a i,
        ul.inbox-nav li a:focus i {
            color: #fff;
        }

        ul.inbox-nav li a i {
            color: #6a6a6a;
            font-size: 18px;
            padding-right: 10px;
            position: relative;
            top: 1px;
        }

        ul.inbox-nav li a span.label {
        }

        ul.labels-info li h4 {
            color: #5c5c5e;
            font-size: 13px;
            padding-left: 15px;
            padding-right: 15px;
            padding-top: 5px;
            text-transform: uppercase;
        }

        ul.labels-category li h4 {
            margin: 0 0 10px 0;
            font-size: 21px;
            font-weight: 400;
            line-height: normal;
        }

        ul.labels-info li {
            margin: 0;
        }

        ul.labels-category li i {
            font-size: 12px;
            position: relative;
            top: -2px;
            margin-right: 5px;
        }

        ul.labels-info li a {
            border-radius: 0;
            color: #6a6a6a;
        }

        ul.labels-info li a:hover,
        ul.labels-info li a:focus {
            background: none repeat scroll 0 0 #d5d7de;
            color: #6a6a6a;
        }

        ul.labels-info li a i {
            padding-right: 10px;
        }

        .nav.nav-pills.nav-stacked.labels-info p {
            color: #9d9f9e;
            font-size: 11px;
            margin-bottom: 0;
            padding: 0 22px;
        }

        .inbox-head {
            background: #f6f6f6;
            border-radius: 0;
            color: #fff;
            min-height: 80px;
            padding: 24px 30px 24px;
            background-size: cover;
            background-position: center center;
        }

        .inbox-head h3 {
            display: inline-block;
            font-weight: 500;
            margin: 0;
            padding-top: 3px;
            text-transform: none;
            letter-spacing: 0;
            color: #15283c;
            font-size: 21px;
        }

        .inbox-head .sr-input {
            border: medium none;
            border-radius: 0;
            box-shadow: none;
            color: #222;
            float: left;
            height: 40px;
            padding: 0 20px;
            font-size: 14px;
            font-weight: 500;
            width: 210px;
        }

        .inbox-head .sr-btn {
            background: #ff5722;
            border: medium none;
            border-radius: 0;
            color: #fff;
            height: 40px;
            padding: 0;
            width: 40px;
        }

        .table-inbox {
            border: 1px solid #d3d3d3;
            margin-bottom: 0;
        }

        .table-inbox tr td {
            padding: 12px !important;
        }

        .table-inbox tr td:hover {
            cursor: pointer;
        }

        .table-inbox tr td .fa-star.inbox-started,
        .table-inbox tr td .fa-star:hover {
            color: #f78a09;
        }

        .table-inbox tr td .fa-star {
            color: #d5d5d5;
        }

        .table-inbox tr.unread td {
            background: none repeat scroll 0 0 #f7f7f7;
            font-weight: 400;
            font-size: 13px;
        }

        ul.inbox-pagination {
            float: right;
        }

        ul.inbox-pagination li {
            float: left;
        }

        .mail-option {
            display: inline-block;
            margin-bottom: 10px;
            width: 100%;
        }

        .mail-option .chk-all,
        .mail-option .btn-group {
            margin-right: 5px;
        }

        .mail-option .chk-all,
        .mail-option .btn-group a.btn {
            background: none repeat scroll 0 0 #fcfcfc;
            border: 1px solid #e7e7e7;
            border-radius: 3px !important;
            color: #afafaf;
            display: inline-block;
            padding: 5px 10px;
        }

        .inbox-pagination a.np-btn {
            background: #1ed085;
            border: 1px solid #1ed085;
            border-radius: 0;
            color: #fff;
            display: inline-block;
            padding: 0 15px;
            font-size: 20px;
        }

        .mail-option .chk-all input[type="checkbox"] {
            margin-top: 0;
        }

        .mail-option .btn-group a.all {
            border: medium none;
            padding: 0;
        }

        .inbox-pagination a.np-btn {
            margin-left: 5px;
        }

        .inbox-pagination li span {
            display: inline-block;
            margin-right: 10px;
            margin-top: 7px;
            font-size: 14px;
        }

        .fileinput-button {
            background: none repeat scroll 0 0 #eeeeee;
            border: 1px solid #e6e6e6;
        }

        .inbox-body .modal .modal-body input,
        .inbox-body .modal .modal-body textarea {
            border: 1px solid #e6e6e6;
            box-shadow: none;
        }

        .btn-send,
        .btn-send:hover {
            background: none repeat scroll 0 0 #00a8b3;
            color: #fff;
        }

        .btn-send:hover {
            background: none repeat scroll 0 0 #009da7;
        }

        .modal-header h4.modal-title {
            font-family: "Open Sans", sans-serif;
            font-weight: 300;
        }

        .modal-body label {
            font-family: "Open Sans", sans-serif;
            font-weight: 400;
        }

        .heading-inbox h4 {
            border-bottom: 1px solid #ddd;
            color: #444;
            font-size: 18px;
            margin-top: 20px;
            padding-bottom: 10px;
        }

        .sender-info {
            margin-bottom: 20px;
        }

        .sender-info img {
            height: 30px;
            width: 30px;
        }

        .sender-dropdown {
            background: none repeat scroll 0 0 #eaeaea;
            color: #777;
            font-size: 10px;
            padding: 0 3px;
        }

        .view-mail a {
            color: #ff6c60;
        }

        .attachment-mail {
            margin-top: 30px;
        }

        .attachment-mail ul {
            display: inline-block;
            margin-bottom: 30px;
            width: 100%;
        }

        .attachment-mail ul li {
            float: left;
            margin-bottom: 10px;
            margin-right: 10px;
            width: 150px;
        }

        .attachment-mail ul li img {
            width: 100%;
        }

        .attachment-mail ul li span {
            float: right;
        }

        .attachment-mail .file-name {
            float: left;
        }

        .attachment-mail .links {
            display: inline-block;
            width: 100%;
        }

        .fileinput-button {
            float: left;
            margin-right: 4px;
            overflow: hidden;
            position: relative;
        }

        .fileinput-button input {
            cursor: pointer;
            direction: ltr;
            font-size: 23px;
            margin: 0;
            opacity: 0;
            position: absolute;
            right: 0;
            top: 0;
            transform: translate(-300px, 0px) scale(4);
        }

        .fileupload-buttonbar .btn,
        .fileupload-buttonbar .toggle {
            margin-bottom: 5px;
        }

        .files .progress {
            width: 200px;
        }

        .table thead th {
            font-weight: 400;
        }

        .table-hover tbody tr.unread:hover,
        .table-hover tbody tr.unread:focus {
            color: #333;
        }

        .table-hover tbody tr:hover,
        .table-hover tbody tr:focus {
            background-color: #1ed085 !important;
            color: #fff;
        }

        .view-message.inbox-small-cells i {
            font-size: 17px;
        }

        ul.labels-category li p {
            margin: 0 0 5px 0;
            padding: 0 0 0 18px;
        }

        .fileupload-processing .fileupload-loading {
            display: block;
        }

        * html .fileinput-button {
            line-height: 24px;
            margin: 1px -3px 0 0;
        }

        * + html .fileinput-button {
            margin: 1px 0 0;
            padding: 2px 15px;
        }

        @media (max-width: 767px) {
            .files .btn span {
                display: none;
            }

            .files .preview * {
                width: 40px;
            }

            .files .name * {
                display: inline-block;
                width: 80px;
                word-wrap: break-word;
            }

            .files .progress {
                width: 20px;
            }

            .files .delete {
                width: 60px;
            }
        }


        /*------------------------------------------------------------------
            22. Price table page
        -------------------------------------------------------------------*/

        .price_table_head h2 {
            line-height: normal;
            color: #fff;
            text-align: center;
            font-weight: 400;
            padding: 18px 20px;
            font-size: 24px;
        }

        .cont_table_price_blog {
            text-align: center;
        }

        .cont_table_price_blog p {
            font-size: 24px;
            line-height: normal;
            margin: 0;
            padding: 15px 0;
            font-weight: 400;
            border-bottom: solid #ddd 1px;
        }

        .cont_table_price ul {
            text-align: center;
            line-height: normal;
            padding: 20px 0 10px;
            float: left;
            width: 100%;
            background: #f8f8f8;
        }

        .cont_table_price li {
            margin: 10px 0;
            float: left;
            width: 100%;
            padding-bottom: 5px;
            font-size: 15px;
            font-weight: 300;
        }

        .cont_table_price ul li:last-child {
            border-bottom: none;
        }

        .cont_table_price_blog p span.price_no {
            font-size: 60px;
            font-weight: 600;
        }

        .price_table_bottom {
            float: left;
            width: 100%;
        }

        .price_table_head {
            margin: -1px -1px 0;
        }

        .table_price {
            border: solid #ddd 1px;
            padding-bottom: 35px;
            margin-bottom: 20px;
        }

        .price_table_bottom {
            float: left;
            width: 100%;
            border-top: solid #ddd 1px;
            padding-top: 35px;
        }


        /*------------------------------------------------------------------
            23. Contact page
        -------------------------------------------------------------------*/

        .contact_blog {
            float: left;
            width: 100%;
            border: solid #ddd 1px;
            border-radius: 3px;
            padding: 30px;
        }

        .contact_blog h4.brief {
            font-size: 15px;
            font-weight: 300;
            color: #455a64;
            margin: -5px 0 5px;
            line-height: normal;
        }

        .contact_inner {
            float: left;
            width: 100%;
        }

        .contact_inner .left {
            width: 70%;
            float: left;
            padding-right: 20px;
        }

        .contact_inner .right {
            width: 30%;
            float: left;
        }

        .contact_inner h3 {
            font-weight: 600;
            text-transform: none;
            font-size: 20px;
            margin-bottom: 10px;
            color: #455a64;
        }

        .contact_inner p {
            font-size: 13px;
            margin: 0 0 10px 0;
        }

        .contact_inner p strong {
            font-weight: 600;
        }

        .contact_inner .list-unstyled {
            list-style: none;
        }

        .contact_inner .list-unstyled li {
            float: left;
            margin-right: 15px;
            font-size: 14px;
            color: #58718a;
            width: 100%;
        }

        .profile_contacts img {
            border-radius: 100%;
            border: 1px solid #ddd;
            padding: 4px;
        }

        .bottom_list {
            float: left;
            width: 100%;
            border-top: solid #ddd 1px;
            margin-top: 20px;
            padding-top: 20px;
        }

        .bottom_list .left_rating {
            float: left;
            width: auto;
        }

        .bottom_list .right_button {
            float: right;
        }

        .bottom_list .left_rating p.ratings {
            margin: 0;
            font-size: 16px;
            padding: 7px 0;
        }

        .bottom_list .left_rating p.ratings a {
        }

        .fa.fa-star {
            color: #ff9800;
        }

        .profile_img {
            float: left;
            margin-right: 20px;
        }

        .profile_contant {
            float: left;
            padding: 0 20px 20px 20px;
            width: 100%;
        }

        .tab-content .msg_list_main ul li {
            padding-top: 15px;
            padding-bottom: 15px;
        }

        .tab-content .msg_list_main ul li {
            border-left: none;
            padding-left: 15px;
            padding-right: 0;
        }

        .user_progress_bar .progress_bar {
            padding: 0;
        }

        .dis_flex {
            display: flex;
        }

        td ul.list-inline li {
            display: inline;
            margin: 0 5px;
        }


        /*------------------------------------------------------------------
            24. Progress bar
        -------------------------------------------------------------------*/

        .progress-bar {
            background-color: #1ed085;
            box-shadow: inset 0 -2px 0 rgba(0, 0, 0, .15);
        }

        .progress {
            display: flex;
            height: 10px;
            overflow: hidden;
            font-size: .75rem;
            background-color: #fff;
            border-radius: 10px;
        }

        .projects .btn.btn-success {
            background: #1ed085;
            color: #fff;
            font-size: 12px;
            border: none;
            font-weight: 400;
            padding: 6px 15px;
            border-radius: 50px;
        }

        table.projects tr td:first-child {
            text-align: center;
        }

        .table.projects thead.thead-dark th {
            background: #15283c;
            font-weight: 300;
            padding: 15px 15px;
        }

        .table.projects tbody td {
            padding: 15px 15px;
        }

        .table-responsive-sm {
            overflow: auto;
        }


        /*------------------------------------------------------------------
            25. Login Section
        -------------------------------------------------------------------*/

        .login {
            background: #eee;
        }

        .full_height {
            height: 100vh;
        }

        .login_section {
            max-width: 640px;
            background: #fff;
            min-height: 540px;
            width: 100%;
            box-shadow: 0px 0 10px -8px #000;
            margin: 0px;
            padding: 0;
            border-radius: 10px;
            overflow: hidden;
        }

        .logo_login {
            padding: 50px 0;
            background-position: center center;
            position: relative;
        }

        .logo_login::after {
            content: "";
            display: block;
            width: 100%;
            height: 100%;
            position: absolute;
            background: rgba(21, 40, 60, .8);
            top: 0px;
            left: 0;
        }

        .logo_login div {
            position: relative;
            z-index: 1;
        }

        .login_form {
            padding: 50px 50px;
            float: left;
            width: 100%;
        }

        .login_form form {
            float: left;
            width: 100%;
        }

        .login_form form .field {
            display: flex;
            margin: 0;
        }

        .login_form form .field label.label_field {
            margin: 0 30px 0 0;
            width: 115px;
            line-height: 45px;
            text-align: right;
            height: 45px;
            font-weight: 300;
            font-size: 15px;
        }

        .login_form form .field {
            display: block;
            margin: 0 0 20px;
        }

        .login_form form .field input {
            border-top: none;
            border-left: none;
            border-right: none;
            border-bottom: solid #ddd 2px;
            width: 395px;
            float: right;
            padding: 10px;
            line-height: normal;
            font-weight: 300;
            transition: ease all 0.5s;
        }

        .login_form form .field input:hover,
        .login_form form .field input:focus {
            box-shadow: none;
        }

        .login_form .field label.form-check-label .form-check-input {
            width: auto;
        }

        .hidden {
            visibility: hidden;
        }

        .login_form .field label.form-check-label {
            margin-left: 20px;
            position: relative;
            top: 0;
        }

        .forgot {
            float: right;
            margin: 11px 0;
            position: relative;
            left: 0;
            color: #ff5722;
        }


        /*------------------------------------------------------------------
            26. Error
        -------------------------------------------------------------------*/

        .error_page h2 {
            font-size: 150px;
            line-height: 150px;
            text-align: center;
            font-weight: 300;
        }

        .error_page h3 {
            color: #444d5b;
            text-align: center;
            font-weight: 700;
            font-size: 50px;
            line-height: 50px;
            margin-bottom: 25px;
            text-shadow: none;
            margin-top: 10px;
        }

        .error_page h3 + p {
            font-size: 16px;
            margin-top: -10px;
            margin-bottom: 30px;
            text-align: center;
        }

        .error_404 {
            background: url('<%=request.getContextPath()%>/assets/images/layout_img/pattern_h.png');
            background-size: cover;
            background-color: #fff;
        }


        /*------------------------------------------------------------------
            27. Map
        -------------------------------------------------------------------*/

        #map {
            height: 100%;
            min-height: 720px;
        }

    </style>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/style01.css"/>
    <%--      <!-- responsive css -->--%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/responsive.css"/>
    <%--      <!-- color css -->--%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/colors.css"/>
    <%--      <!-- select bootstrap -->--%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/bootstrap-select.css"/>
    <%--      <!-- scrollbar css -->--%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/perfect-scrollbar.css"/>
    <%--      <!-- custom css -->--%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/custom.css"/>
    <%--      <!--[if lt IE 9]>-->--%>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <%--      <![endif]-->--%>
</head>
<body class="dashboard dashboard_1">
<div class="full_container">
    <div class="inner_container">
        <!-- Sidebar  -->
        <%@include file="views/parts/sidenav.jsp" %>
        <!-- end sidebar -->
        <!-- right content -->
        <div id="content">
            <!-- topbar -->
            <%@include file="views/parts/header.jsp" %>
            <!-- end topbar -->
            <!-- dashboard inner -->
            <div class="midde_cont">
                <div class="container-fluid">
                    <div class="row column_title">
                        <div class="col-md-12">
                            <div class="page_title">
                                <h2>Dashboard</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row column1">
                        <div class="col-md-6 col-lg-3">
                            <div class="full counter_section margin_bottom_30">
                                <div class="couter_icon">
                                    <div>
                                        <i class="fa fa-user yellow_color"></i>
                                    </div>
                                </div>
                                <div class="counter_no">
                                    <div>
                                        <p class="total_no">2500</p>
                                        <p class="head_couter">Welcome</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="full counter_section margin_bottom_30">
                                <div class="couter_icon">
                                    <div>
                                        <i class="fa fa-clock-o blue1_color"></i>
                                    </div>
                                </div>
                                <div class="counter_no">
                                    <div>
                                        <p class="total_no">123.50</p>
                                        <p class="head_couter">Average Time</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="full counter_section margin_bottom_30">
                                <div class="couter_icon">
                                    <div>
                                        <i class="fa fa-cloud-download green_color"></i>
                                    </div>
                                </div>
                                <div class="counter_no">
                                    <div>
                                        <p class="total_no">1,805</p>
                                        <p class="head_couter">Collections</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="full counter_section margin_bottom_30">
                                <div class="couter_icon">
                                    <div>
                                        <i class="fa fa-comments-o red_color"></i>
                                    </div>
                                </div>
                                <div class="counter_no">
                                    <div>
                                        <p class="total_no">54</p>
                                        <p class="head_couter">Comments</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row column1 social_media_section">
                        <div class="col-md-6 col-lg-3">
                            <div class="full socile_icons fb margin_bottom_30">
                                <div class="social_icon">
                                    <i class="fa fa-facebook"></i>
                                </div>
                                <div class="social_cont">
                                    <ul>
                                        <li>
                                            <span><strong>35k</strong></span>
                                            <span>Friends</span>
                                        </li>
                                        <li>
                                            <span><strong>128</strong></span>
                                            <span>Feeds</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="full socile_icons tw margin_bottom_30">
                                <div class="social_icon">
                                    <i class="fa fa-twitter"></i>
                                </div>
                                <div class="social_cont">
                                    <ul>
                                        <li>
                                            <span><strong>584k</strong></span>
                                            <span>Followers</span>
                                        </li>
                                        <li>
                                            <span><strong>978</strong></span>
                                            <span>Tweets</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="full socile_icons linked margin_bottom_30">
                                <div class="social_icon">
                                    <i class="fa fa-linkedin"></i>
                                </div>
                                <div class="social_cont">
                                    <ul>
                                        <li>
                                            <span><strong>758+</strong></span>
                                            <span>Contacts</span>
                                        </li>
                                        <li>
                                            <span><strong>365</strong></span>
                                            <span>Feeds</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="full socile_icons google_p margin_bottom_30">
                                <div class="social_icon">
                                    <i class="fa fa-google-plus"></i>
                                </div>
                                <div class="social_cont">
                                    <ul>
                                        <li>
                                            <span><strong>450</strong></span>
                                            <span>Followers</span>
                                        </li>
                                        <li>
                                            <span><strong>57</strong></span>
                                            <span>Circles</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- graph -->
                    <div class="row column2 graph margin_bottom_30">
                        <div class="col-md-l2 col-lg-12">
                            <div class="white_shd full">
                                <div class="full graph_head">
                                    <div class="heading1 margin_0">
                                        <h2>Extra Area Chart</h2>
                                    </div>
                                </div>
                                <div class="full graph_revenue">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="content">
                                                <div class="area_chart">
                                                    <canvas height="120" id="canvas"></canvas>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end graph -->
                    <div class="row column3">
                        <!-- testimonial -->
                        <div class="col-md-6">
                            <div class="dark_bg full margin_bottom_30">
                                <div class="full graph_head">
                                    <div class="heading1 margin_0">
                                        <h2>Testimonial</h2>
                                    </div>
                                </div>
                                <div class="full graph_revenue">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="content testimonial">
                                                <div id="testimonial_slider" class="carousel slide"
                                                     data-ride="carousel">
                                                    <!-- Wrapper for carousel items -->
                                                    <div class="carousel-inner">
                                                        <div class="item carousel-item active">
                                                            <div class="img-box"><img
                                                                    src="assets/images/layout_img/user_img.jpg" alt="">
                                                            </div>
                                                            <p class="testimonial">Sed ut perspiciatis unde omnis iste
                                                                natus error sit voluptatem accusantium doloremque
                                                                laudantium, totam rem aperiam, eaque ipsa quae..</p>
                                                            <p class="overview"><b>Michael Stuart</b>Seo Founder</p>
                                                        </div>
                                                        <div class="item carousel-item">
                                                            <div class="img-box"><img
                                                                    src="<%=request.getContextPath()%>/assets/images/layout_img/user_img.jpg"
                                                                    alt=""></div>
                                                            <p class="testimonial">Sed ut perspiciatis unde omnis iste
                                                                natus error sit voluptatem accusantium doloremque
                                                                laudantium, totam rem aperiam, eaque ipsa quae..</p>
                                                            <p class="overview"><b>Michael Stuart</b>Seo Founder</p>
                                                        </div>
                                                        <div class="item carousel-item">
                                                            <div class="img-box"><img
                                                                    src="<%=request.getContextPath()%>/assets/images/layout_img/user_img.jpg"
                                                                    alt=""></div>
                                                            <p class="testimonial">Sed ut perspiciatis unde omnis iste
                                                                natus error sit voluptatem accusantium doloremque
                                                                laudantium, totam rem aperiam, eaque ipsa quae..</p>
                                                            <p class="overview"><b>Michael Stuart</b>Seo Founder</p>
                                                        </div>
                                                    </div>
                                                    <!-- Carousel controls -->
                                                    <a class="carousel-control left carousel-control-prev"
                                                       href="#testimonial_slider" data-slide="prev">
                                                        <i class="fa fa-angle-left"></i>
                                                    </a>
                                                    <a class="carousel-control right carousel-control-next"
                                                       href="#testimonial_slider" data-slide="next">
                                                        <i class="fa fa-angle-right"></i>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end testimonial -->
                        <!-- progress bar -->
                        <div class="col-md-6">
                            <div class="white_shd full margin_bottom_30">
                                <div class="full graph_head">
                                    <div class="heading1 margin_0">
                                        <h2>Progress Bar</h2>
                                    </div>
                                </div>
                                <div class="full progress_bar_inner">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="progress_bar">
                                                <!-- Skill Bars -->
                                                <span class="skill" style="width:73%;">Facebook <span
                                                        class="info_valume">73%</span></span>
                                                <div class="progress skill-bar ">
                                                    <div class="progress-bar progress-bar-animated progress-bar-striped"
                                                         role="progressbar" aria-valuenow="73" aria-valuemin="0"
                                                         aria-valuemax="100" style="width: 73%;">
                                                    </div>
                                                </div>
                                                <span class="skill" style="width:62%;">Twitter <span
                                                        class="info_valume">62%</span></span>
                                                <div class="progress skill-bar">
                                                    <div class="progress-bar progress-bar-animated progress-bar-striped"
                                                         role="progressbar" aria-valuenow="62" aria-valuemin="0"
                                                         aria-valuemax="100" style="width: 62%;">
                                                    </div>
                                                </div>
                                                <span class="skill" style="width:54%;">Instagram <span
                                                        class="info_valume">54%</span></span>
                                                <div class="progress skill-bar">
                                                    <div class="progress-bar progress-bar-animated progress-bar-striped"
                                                         role="progressbar" aria-valuenow="54" aria-valuemin="0"
                                                         aria-valuemax="100" style="width: 54%;">
                                                    </div>
                                                </div>
                                                <span class="skill" style="width:82%;">Google plus <span
                                                        class="info_valume">82%</span></span>
                                                <div class="progress skill-bar">
                                                    <div class="progress-bar progress-bar-animated progress-bar-striped"
                                                         role="progressbar" aria-valuenow="82" aria-valuemin="0"
                                                         aria-valuemax="100" style="width: 82%;">
                                                    </div>
                                                </div>
                                                <span class="skill" style="width:48%;">Other <span class="info_valume">48%</span></span>
                                                <div class="progress skill-bar">
                                                    <div class="progress-bar progress-bar-animated progress-bar-striped"
                                                         role="progressbar" aria-valuenow="48" aria-valuemin="0"
                                                         aria-valuemax="100" style="width: 48%;">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end progress bar -->
                    </div>
                    <div class="row column4 graph">
                        <div class="col-md-6">
                            <div class="dash_blog">
                                <div class="dash_blog_inner">
                                    <div class="dash_head">
                                        <h3><span><i class="fa fa-calendar"></i> 6 July 2018</span><span
                                                class="plus_green_bt"><a href="#">+</a></span></h3>
                                    </div>
                                    <div class="list_cont">
                                        <p>Today Tasks for Ronney Jack</p>
                                    </div>
                                    <div class="task_list_main">
                                        <ul class="task_list">
                                            <li><a href="#">Meeting about plan for Admin Template 2018</a><br><strong>10:00
                                                AM</strong></li>
                                            <li><a href="#">Create new task for Dashboard</a><br><strong>10:00
                                                AM</strong></li>
                                            <li><a href="#">Meeting about plan for Admin Template 2018</a><br><strong>11:00
                                                AM</strong></li>
                                            <li><a href="#">Create new task for Dashboard</a><br><strong>10:00
                                                AM</strong></li>
                                            <li><a href="#">Meeting about plan for Admin Template 2018</a><br><strong>02:00
                                                PM</strong></li>
                                        </ul>
                                    </div>
                                    <div class="read_more">
                                        <div class="center"><a class="main_bt read_bt" href="#">Read More</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="dash_blog">
                                <div class="dash_blog_inner">
                                    <div class="dash_head">
                                        <h3><span><i class="fa fa-comments-o"></i> Updates</span><span
                                                class="plus_green_bt"><a href="#">+</a></span></h3>
                                    </div>
                                    <div class="list_cont">
                                        <p>User confirmation</p>
                                    </div>
                                    <div class="msg_list_main">
                                        <ul class="msg_list">
                                            <li>
                                                <span><img
                                                        src="<%=request.getContextPath()%>/assets/images/layout_img/msg2.png"
                                                        class="img-responsive" alt="#"/></span>
                                                <span>
                                          <span class="name_user">John Smith</span>
                                          <span class="msg_user">Sed ut perspiciatis unde omnis.</span>
                                          <span class="time_ago">12 min ago</span>
                                          </span>
                                            </li>
                                            <li>
                                                <span><img
                                                        src="<%=request.getContextPath()%>/assets/images/layout_img/msg3.png"
                                                        class="img-responsive" alt="#"/></span>
                                                <span>
                                          <span class="name_user">John Smith</span>
                                          <span class="msg_user">On the other hand, we denounce.</span>
                                          <span class="time_ago">12 min ago</span>
                                          </span>
                                            </li>
                                            <li>
                                                <span><img
                                                        src="<%=request.getContextPath()%>/assets/images/layout_img/msg2.png"
                                                        class="img-responsive" alt="#"/></span>
                                                <span>
                                          <span class="name_user">John Smith</span>
                                          <span class="msg_user">Sed ut perspiciatis unde omnis.</span>
                                          <span class="time_ago">12 min ago</span>
                                          </span>
                                            </li>
                                            <li>
                                                <span><img
                                                        src="<%=request.getContextPath()%>/assets/images/layout_img/msg3.png"
                                                        class="img-responsive" alt="#"/></span>
                                                <span>
                                          <span class="name_user">John Smith</span>
                                          <span class="msg_user">On the other hand, we denounce.</span>
                                          <span class="time_ago">12 min ago</span>
                                          </span>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="read_more">
                                        <div class="center"><a class="main_bt read_bt" href="#">Read More</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- footer -->
                <%@include file="views/parts/footer.jsp" %>
            </div>
            <!-- end dashboard inner -->
        </div>
    </div>
</div>
<!-- jQuery -->
<script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/popper.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
<!-- wow animation -->
<script src="<%=request.getContextPath()%>/assets/js/animate.js"></script>
<!-- select country -->
<script src="<%=request.getContextPath()%>/assets/js/bootstrap-select.js"></script>
<!-- owl carousel -->
<script src="<%=request.getContextPath()%>/assets/js/owl.carousel.js"></script>
<!-- chart js -->
<script src="<%=request.getContextPath()%>/assets/js/Chart.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/Chart.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/utils.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/analyser.js"></script>
<!-- nice scrollbar -->
<script src="<%=request.getContextPath()%>/assets/js/perfect-scrollbar.min.js"></script>
<script>
    var ps = new PerfectScrollbar('#sidebar');
</script>
<!-- custom js -->
<script src="<%=request.getContextPath()%>/assets/js/chart_custom_style1.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/custom.js"></script>
</body>
</html>