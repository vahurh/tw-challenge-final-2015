	<g:form action="create" name="create-cause-form">		
		
		<div class = "row">
			<label for="name">Nimi</label>
			<g:textField name="name" required = "true" value="${cause?.name}" />
            <g:hasErrors  bean="${cause}" field="name">
                <p class="error"><g:fieldError bean="${cause}" field="name" /></p>
            </g:hasErrors>
		</div>
		
		<div class = "row">
			<label for="description">Kirjeldus</label>
			<g:textField name="description" required = "true" value="${cause?.description}" />
            <g:hasErrors  bean="${cause}" field="description">
                <p class="error"><g:fieldError bean="${cause}" field="description" /></p>
            </g:hasErrors>
		</div>
				
		<div class = "row">
			<label for="image">Pilt</label>
			<g:select from = "${['bear.jpg', 'ski.jpg', 'waterfall.jpg', 'cottage.jpg']}" name="image" value = "${cause?.image}"/>
            <g:hasErrors  bean="${cause}" field="image">
                <p class="error"><g:fieldError bean="${cause}" field="image" /></p>
            </g:hasErrors>
		</div>
		
		<div class = "row">
			<label for="schoolClass">Klass</label>
			<g:select from = "${schoolClasses}" name="schoolClass"/>
            <g:hasErrors  bean="${cause}" field="schoolClass">
                <p class="error"><g:fieldError bean="${cause}" field="schoolClass" /></p>
            </g:hasErrors>
		</div>
		
		<div class = "row">
			<label for="price">Hind kokku</label>
			<g:textField name="price" required = "true" value = "${cause?.price}"/>
            <g:hasErrors  bean="${cause}" field="price">
                <p class="error"><g:fieldError bean="${cause}" field="price" /></p>
            </g:hasErrors>
		</div>
		
		<g:if test="${flash.message}">
			<p class = "error">${flash.message}</p>
		</g:if>
		
		<div class = "row submit">
			<g:submitButton class="btn btn-default form-button" id = "createButton" name="trip-create-button" value="Tee sõit" />
		</div>
		
	</g:form>