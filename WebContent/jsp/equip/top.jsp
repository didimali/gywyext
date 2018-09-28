﻿<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<title>E巡通大数据统计分析系统</title>
    <!-- Bootstrap Styles-->
    <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="${pageContext.request.contextPath}/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="${pageContext.request.contextPath}/css/custom-styles.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/mystyle.css" rel="stylesheet" />
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lib/jquery.json-2.2.min.js"></script>
</head>

<body>
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <a class="navbar-brand" href="/gywyext/index.html"><i class="fa fa-gear"></i> <strong>公元物业E巡通</strong></a>
            </div>
			<div>
				<a class="topspan" href="#/equipBaseInfo"><h4 class="fa fa-dashboard">设备基本信息</h4></a>
				<a class="topspan" href="equipRealInfo/index.jsp#/equipRealInfo"><h4 class="fa fa-tasks">设备实时状态信息</h4></a>
				<a class="topspan" href="javascript:;"><h4 class="fa fa-bell">设备报警信息</h4></a>
			</div>
        </nav>
	<section class="containner">
	<div class="overlayer"></div>
	
	        <script>
        $(document).ready(function () {
    		$("#sideNav").click(function(){
    			if($(this).hasClass('closed')){
    				$('.navbar-side').animate({left: '0px'});
    				$(this).removeClass('closed');
    				$('#page-wrapper').animate({'margin-left' : '260px'});
    				
    			}
    			else{
    			    $(this).addClass('closed');
    				$('.navbar-side').animate({left: '-260px'});
    				$('#page-wrapper').animate({'margin-left' : '0px'}); 
    			}
    		});
        });

        $(window).bind("load resize", function () {
            if ($(this).width() < 768) {
                $('div.sidebar-collapse').addClass('collapse')
            } else {
                $('div.sidebar-collapse').removeClass('collapse')
            }
        });
        </script>
