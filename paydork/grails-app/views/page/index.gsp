<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>SchoolWallet</title>
	</head>
	
	<body>

		<section class = "container-fluid full-width">
            <asset:image src="blackboard.png"/>
            </section>
            <section class = "container index">
            <h1 class = "text-center">We make it simple for students to collect money for:</h1>
            <div data-scroll-index="0" class = "col-xs-12 col-sm-4">
                <asset:image class = "img-circle img-responsive" src = "bear.jpg"/>
            </div>
            <div class = "col-xs-12 col-sm-4">
                <asset:image class = "img-circle img-responsive" src = "ski.jpg"/>
            </div>
            <div class = "col-xs-12 col-sm-4">
                <asset:image class = "img-circle img-responsive" src = "textbook.jpg"/>
            </div>

            <p class = "text-center"><a href = "/paydork/user/register" class = "btn btn-success index-button form-button">Get started</a></p>
		</section>

<g:javascript>
/*
if ($(window).width() >= 768) {
	$(window).resize(function() {
	  var vh = $(window).height();
	  $('.index-full-height').height(vh-10);
	});
}
*/

$(window).trigger('resize');

$(document).ready(function() {
	
});
</g:javascript>
	</body>
</html>
