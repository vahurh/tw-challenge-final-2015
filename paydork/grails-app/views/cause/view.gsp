<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>SchoolWallet</title>
	</head>
	
	<body>
		
		<section class = "container">
			<div class = "cause">
				<div class = "col-xs-12 col-sm-6 left">
					<asset:image class = "img-responsive main-img" src = "${cause.image}"/>
					<div class = "user-area">
						<g:link controller = "user" action = "view" class = "user-link">
							<img class = "img-circle" src = "${cause.schoolClass.teacher.avatar}"/>
							${cause.schoolClass.teacher.name}
						</g:link>
					</div>
				</div>
				
				<div class = "col-xs-12 col-sm-6 right">
					<h1>${cause.name}</h1>
					<p class = "description">${cause.description}</p>
					
					<g:render template = "cause-details"/>
				</div>
			</div>
			
			<div class = "col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 students">
				<g:each in = "${1..students.size()}" var = "i">
					<div class = "row student">
						<div class = "col-xs-7">
							<p class = "name">${i}) ${students[i-1].name}</p>
						</div>
						<div class = "col-xs-5">
							<p class = "status text-right">
								<g:if test = "${false}">
									<span class="glyphicon glyphicon-ok"></span>
								</g:if>
								<g:else>
									<span class="glyphicon glyphicon-remove"></span>
								</g:else>
							</p>
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
