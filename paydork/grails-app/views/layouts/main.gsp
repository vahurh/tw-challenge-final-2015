<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="ClassWallet"/></title>
		<link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'favico.ico')}" type="image/x-icon" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,500,700' rel='stylesheet' type='text/css'>
		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<script>$(function() { $.scrollIt(); });</script>
    <script src="jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="scrollIt.js" type="text/javascript"></script>
	<body>
		<nav class="navbar navbar-default">
          <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <g:link uri = "/" class="navbar-brand"><asset:image src = "logo.png"/></g:link>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav navbar-right">
                <li><a data-scroll-nav="0" >KUIDAS TÖÖTAB</a></li>
                <li><g:link controller = "page" action = "contact">KONTAKT</g:link></li>
                <sec:ifNotLoggedIn>
	                <li><g:link controller = "user" action = "register">REGISTREERI</g:link></li>
	                <li><g:link controller = "login" action = "index">LOGI SISSE</g:link></li>
	            </sec:ifNotLoggedIn>
	            <sec:ifLoggedIn>
	         	   <li><g:link controller = "schoolClass" action = "create">LISA KLASS</g:link></li>
	            	<li><g:link controller = "cause" action = "create">LOO MAKSE</g:link></li>
	                <li><g:link controller = "logout" action = "index">LOGI VÄLJA</g:link></li>
	            </sec:ifLoggedIn>
              </ul>
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>
		
		<div class = "main-body">
					
			<g:layoutBody/>
		
		</div>
<g:javascript>
$(document).ready(function() {			
});

</g:javascript>
</body>
</html>
