<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>SchoolWallet</title>
	</head>
	
	<body>
		
		<section class = "container">
			<div class="col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 form-wrap school-class">
				<h1 class = "class-name text-center">${schoolClass.name}</h1>
				<p class = "text-center">Õpilaste arv: <span class="badge">${students.size()}</span></p>
				<div class = "students">
					<g:each in = "${students}" var = "student">
						<p class = "student-name">${student.name}<g:link class = "error" controller = "schoolClass" action = "deleteStudent" params = "[id: schoolClass.id, studentId: student.id]">Kustuta</g:link></p>
					</g:each>
				</div>
				<g:render template = "add-student-form"/>
			</div>
		</section>
						
<g:javascript>
$(document).ready(function() {
	
});
</g:javascript>
	</body>
</html>
