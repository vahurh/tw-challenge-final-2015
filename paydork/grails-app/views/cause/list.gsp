<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>ClassWallet</title>
	</head>
	
	<body>
		
		<section class = "container">
		
			<g:each in = "${causes}" var = "cause">
				<div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 form-wrap">
					<p class = "text-center cause-link">
						<g:link controller = "cause" action = "view" params = "[id: cause.id]">${cause.name}</g:link>
					</p>
					<p class = "text-center">Õpilaste arv: <span class="badge">${cause.students().size()}</span></p>
					<p class = "text-center">Maksumus: <strong>${cause.price}</strong></p>
				</div>
			</g:each>
			
		</section>
						
<g:javascript>
$(document).ready(function() {
	
});
</g:javascript>
	</body>
</html>
