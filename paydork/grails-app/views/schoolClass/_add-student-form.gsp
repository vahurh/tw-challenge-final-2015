<g:form action="addStudent" name="create-form">		
	
	<div class = "row">
		<label for="name">Inimese nimi</label>
		<g:textField name="name" required = "true" value="${student?.name}" />
        <g:hasErrors  bean="${student}" field="name">
            <p class="error"><g:fieldError bean="${student}" field="name" /></p>
        </g:hasErrors>
	</div>
	
	<g:if test="${flash.message}">
		<p class = "error">${flash.message}</p>
	</g:if>
	
	<g:hiddenField name = "id" value = "${schoolClass.id}"/>
	
	<div class = "row submit">
		<g:submitButton class="btn btn-default form-button" name="class-create-button" value="Lisa" />
	</div>
	
</g:form>