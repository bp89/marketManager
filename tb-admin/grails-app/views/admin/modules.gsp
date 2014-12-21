<%--
  Created by IntelliJ IDEA.
  User: Baniya
  Date: 12/10/2014
  Time: 2:12 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="adminTemplate" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Modules</title>
    <!-- Custom CSS -->
    <link href="${resource(dir: 'css',file: 'modules.css')}" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

<!-- Modules Grid Section -->
<div id="modules">
    <div class="container-fluid col-lg-12 text-left ">

        <div class="row">

            <div class="col-md-5 col-sm-3 modules-item user smallBorder">
                <a href = "#"><h4><img src="${resource(dir: 'images',file: 'People_Icon.png')}" width="25px" height="25px">User</h4></a>
                <ul class="list-unstyled">
                    <a href = "#"><li> - Manage User</li></a>
                    <a href = "#"><li> - Manage Roles</li></a>
                </ul>
            </div>
            <div class="col-md-2">
            </div>

            <div class="col-md-5 col-sm-3 modules-item system Logs smallBorder">
                <a href = "#"><h4>System Logs</h4></a>
                <ul class="list-unstyled">
                    <a href = "#"><li> - Login Logs</li></a>
                    <a href = "#"><li> - System Logs</li></a>
                </ul>

            </div>
        </div>
        <div class="row">
            <div class="col-md-5 col-sm-3 modules-item contacts smallBorder">
                <a href = "#"><h4>Ad Builder</h4></a>
                <ul class="list-unstyled">
                    <a href = "${createLink(controller: 'directory',action: 'index')}"><li> - Manage Resources</li></a>
                    <a href = "#"><li> - Configure Display Settings</li></a>
                    <a href = "#"><li> - Configure Base Fields</li></a>
                </ul>

            </div>
            <div class="col-md-2">
            </div>

            <div class="col-md-5 col-sm-3 modules-item contacts smallBorder">
                <a href = "#"><h4>Contacts</h4></a>
                <ul class="list-unstyled">
                    <a href = "${createLink(controller: 'contactSource' , action: 'index')}"><li> - Configure Contact Category</li></a>
                    <a href = "${createLink(controller: 'contactType' , action: 'index')}"><li> - Configure Contact Type</li></a>
                    <a href = "${createLink(controller: 'contactSource' , action: 'index')}"><li> - Configure Contact Source</li></a>
                    <a href = "${createLink(controller: 'contactSource' , action: 'index')}"><li> - Configure Custom Contact Fields</li></a>
                </ul>

            </div>
        </div>
        <div class="row">
            <div class="col-md-5 col-sm-3 modules-item campaigns smallBorder">
                <a href = ""><h4>Campaigns</h4></a>
                <ul class="list-unstyled">
                    <a href = "#"><li> - Campaign Settings</li></a>
                </ul>
            </div>

            <div class="col-md-2">
            </div>

            <div class="col-md-5 col-sm-3 modules-item smallBorder">
                <a href = "#"><h4>Hidden Links</h4></a>
                <ul class="list-unstyled">
                    <a href = "#"><li> - System Settings</li></a>
                </ul>

            </div>
        </div>
    </div>
</div>

<!-- Plugin JavaScript -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="js/module.js"></script>
</body>
</html>
