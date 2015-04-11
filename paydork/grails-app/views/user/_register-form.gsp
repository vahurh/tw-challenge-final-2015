<g:form action="register" name="register-form">		
	
	<div class = "row">
		<label for="username">Kasutajanimi</label>
		<g:textField name="username" required = "true" value="${user?.username}" />
        <g:hasErrors  bean="${user}" field="username">
            <p class="error"><g:fieldError bean="${user}" field="username" /></p>
        </g:hasErrors>
	</div>
	
	<div class = "row">
		<label for="password">Salasõna</label>
		<g:passwordField name="password" required = "true" value="${user?.password}" />
        <g:hasErrors  bean="${user}" field="password">
            <p class="error"><g:fieldError bean="${user}" field="password" /></p>
        </g:hasErrors>
	</div>
	
	<div class = "row">
		<label for="name">Nimi</label>
		<g:textField name="name" required = "true" value="${user?.name}" />
        <g:hasErrors  bean="${user}" field="name">
            <p class="error"><g:fieldError bean="${user}" field="name" /></p>
        </g:hasErrors>
	</div>
	
	<div class = "row">
		<label for="avatar">Profiilipildi link</label>
		<g:textField name="avatar" required = "true" value="${user?.avatar}" />
        <g:hasErrors  bean="${user}" field="avatar">
            <p class="error"><g:fieldError bean="${user}" field="avatar" /></p>
        </g:hasErrors>
	</div>

	
	<g:if test="${flash.message}">
		<p class = "error">${flash.message}</p>
	</g:if>
	
	<div class = "row submit">
		<g:submitButton class="btn btn-default form-button" name="user-register-button" value="Registreeri" />
	</div>
	
</g:form>