<g:form action="addStudent" name="create-form">		
	
	<g:hiddenField name = "id" value = "${schoolClass.id}"/>
	<g:hiddenField name = "studentId" value = "${student.id}"/>
	
	<g:submitButton class="" name="delete-student-button" value="Kustuta"/>
	
</g:form>