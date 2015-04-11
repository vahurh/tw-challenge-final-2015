<g:form action="create" name="create-form">		
	
	<div class = "row">
		<label for="name">Klassinimi</label>
		<g:textField name="name" required = "true" value="${schoolClass?.name}" />
        <g:hasErrors  bean="${schoolClass}" field="name">
            <p class="error"><g:fieldError bean="${user}" field="name" /></p>
        </g:hasErrors>
	</div>
	
	<g:if test="${flash.message}">
		<p class = "error">${flash.message}</p>
	</g:if>
	
	<div class = "row submit">
		<g:submitButton class="btn btn-default form-button" name="class-create-button" value="Loo klass" />
	</div>
	
</g:form>