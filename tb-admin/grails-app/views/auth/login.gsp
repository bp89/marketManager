<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <meta name="generator" content="Bootply" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link href="${resource(dir: 'css',file: 'bootstrap.css')}" rel="stylesheet">
  <!--[if lt IE 9]>
          <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
  <!-- CSS code from Bootply.com editor -->
  <style type="text/css">
  body{
    background: url("${resource(dir: 'images',file: 'slide4_bg.jpg')}");
  }
  #loginModal{
  }
  .modal-footer {   border-top: 0px; }
  </style>
  <g:javascript library="application"/>
  <r:require module="jquery"/>
  <r:layoutResources />
  
</head>
<body  >
%{--<div class="jumbotron">--}%
  %{--<div class="container-fluid">--}%
    %{--<h2>Topper Books</h2>--}%
    %{--<h6>Read what you want to.</h6>--}%
  %{--</div>--}%
%{--</div>--}%
<!--login modal-->
<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        %{--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>--}%
        <h1 class="text-center">Login</h1>
      </div>

      <div class="container">
        <span style="font-size: smaller;color: #116644">${flash.logoutMessage}</span>
        <span style="font-size: smaller;color: #116644">${flash.invalidLogin}</span>
        <div class="row">
          <div class="span4">

            <g:hasErrors bean="${loginCOInstance}">
              <g:eachError bean="${loginCOInstance}" var="error">
                <div class="alert">
                  <a class="close" data-dismiss="alert">×</a>
                  <strong>Error!</strong> <g:message error="${error}"/>
                </div>

              </g:eachError>
            </g:hasErrors>
          </div>
        </div>
      </div>
      <div class="modal-body">
        <form action="signIn" method="post" class="form col-md-12 center-block">
          <input type="hidden" name="targetUri" value="${targetUri}" />
          <div class="form-group">
            <g:textField name="username" id="username" placeholder="User Name" class="form-control input-lg" title="Please enter User Name." required="" value="${username}"/>
          </div>
          <div class="form-group">
            <g:passwordField name="passwordHash"  id="passwordHash"  placeholder="Password" class="form-control input-lg" title="Please enter Password." />
          </div>
          <div class="form-group">
            <input type="checkbox" name="rememberMe" value="${rememberMe}"/>
            <label for="rememberMe">Remember Me?</label>
          </div>
          <div class="form-group">
            <g:submitButton name="submit" value="Sign In" class="btn btn-primary btn-lg btn-block" />
            <span class="pull-right">
              %{--<g:link controller="user" action="create">New User? Sign Up</g:link>--}%
            </span>
            <span><g:link style='text-decoration:no-underline;font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif' controller="user" action="forgotPassword">Forgot Password?</g:link></span>%{--Need to access Forgot Password Links--}%
          </div>
        </form>
      </div>
      <div class="modal-footer">
        %{--<div class="col-md-12">
            <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
        </div>--}%
      </div>
    </div>
  </div>
</div>
<script type='text/javascript' src="${resource(dir: 'js',file: 'bootstrap.min.js')}"></script>
%{--<script type='text/javascript' src="${resource(dir: 'js',file: 'bootstrap-alert.js')}"></script>--}%
<r:layoutResources />
</body>
</html>
