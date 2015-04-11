<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>SchoolWallet</title>
	</head>
	
	<body>
		
		<section class = "container dashboard">
		
			<div class = "col-xs-12 col-sm-6">
				<h2 class = "text-center">Minu kogumised</h2>
				<g:each in = "${causes}" var = "cause">
					<div class="col-xs-12">
						<div class = "form-wrap">
							<p class = "text-center cause-link">
								<g:link controller = "cause" action = "view" params = "[id: cause.id]">${cause.name}</g:link>
							</p>
							<p class = "text-center"><strong>Maksumus:</strong> ${cause.price}</p>
							<p class = "text-center"><strong>Aegub:</strong> <g:formatDate format="dd-MM-yyyy" date="${cause.tripDate}"/> </p>
						</div>
					</div>
				</g:each>
			</div>
			
			<div class = "col-xs-12 col-sm-6">
				<h2 class = "text-center">Minu klassid</h2>
				<g:each in = "${classes}" var = "sc">
					<div class="col-xs-12">
						<div class = "form-wrap">
							<p class = "text-center cause-link">
								<g:link controller = "schoolClass" action = "view" params = "[id: sc.id]">${sc.name}</g:link>
							</p>
							<p class = "text-center">Õpilaste arv: <span class="badge">${sc.students.size()}</span></p>
							<p class = "text-center"><g:link controller = "schoolClass" action = "edit" params = "[id: sc.id]">Muuda</g:link></p>
						</div>
					</div>
				</g:each>
			</div>
			
		</section>
						
<g:javascript>
$(document).ready(function() {
	
});
</g:javascript>
	</body>
</html>
