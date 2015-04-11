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
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,500,700' rel='stylesheet' type='text/css'>
		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
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
                <li><a href="#">KUIDAS TÖÖTAB</a></li>
                <li><a href="#">KONTAKT</a></li>
                <sec:ifNotLoggedIn>
	                <li><g:link controller = "user" action = "register">REGISTREERI</g:link></li>
	                <li><g:link controller = "login" action = "index">LOGI SISSE</g:link></li>
	            </sec:ifNotLoggedIn>
	            <sec:ifLoggedIn>
	            	<li><g:link controller = "cause" action = "create">LOO MAKSE</g:link></li>
	                <li><g:link controller = "logout" action = "index">LOGI VÄLJA</g:link></li>
	            </sec:ifLoggedIn>
                <li class="dropdown hidden">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Dropdown <span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                  </ul>
                </li>
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
