<g:if test='${flash.message}'>
	<p class='error'>
		${flash.message}
	</p>
</g:if>

<form action='${postUrl}' method='POST' class='text-center' id = "loginForm">

	<div class="row">
		<label for="j_username">Kasutajanimi</label>
		<g:textField name="j_username" autofocus = "${true}"/>
	</div>

	<div class="row">
		<label for="username">Salasõna</label>
		<g:passwordField name="j_password" />
	</div>
	
	<div class = "row">
		<input type='checkbox' class='chk' name='${rememberMeParameter}'
			id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if> />
		<label for='remember_me'>Jäta mind meelde</label>
	</div>
	
	<input type="submit" class="btn btn-default form-button" id = "loginButton" name="loginButton"
			value="Logi sisse" />
</form>