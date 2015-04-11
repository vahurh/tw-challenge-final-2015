	<g:form action="create" name="create-trip-form">		
		
		<div class = "row">
			<label for="cityFrom">Kust tuled</label>
			<g:textField name="cityFrom" required = "true" value="${trip?.cityFrom}" />
            <g:hasErrors  bean="${trip}" field="cityFrom">
                <p class="error"><g:fieldError bean="${trip}" field="cityFrom" /></p>
            </g:hasErrors>
		</div>
		
		<div class = "row">
			<label for="cityFrom">Kuhu lähed</label>
			<g:textField name="cityTo" required = "true" value="${trip?.cityTo}" />
            <g:hasErrors  bean="${trip}" field="cityTo">
                <p class="error"><g:fieldError bean="${trip}" field="cityTo" /></p>
            </g:hasErrors>
		</div>
				
		<div class = "row">
			<label for="tripDate">Kuupäev (päev.kuu.aasta, nt 24.03.2014)</label>
			<g:textField id = "datePicker" required="true" name="tripDate" value = "${tripDate}"/>
            <g:hasErrors  bean="${trip}" field="tripDate">
                <p class="error"><g:fieldError bean="${trip}" field="tripDate" /></p>
            </g:hasErrors>
		</div>
		
		<div class = "row">
			<label for="tripTime">Kellaaeg (tunnid:minutid, nt: 14:30)</label>
			<g:textField name="tripTime" required = "true" value = "${timeString}"/>
            <g:hasErrors  bean="${trip}" field="tripDate">
                <p class="error"><g:fieldError bean="${trip}" field="tripDate" /></p>
            </g:hasErrors>
		</div>
				
		<div class = "row">
			<label for="seatPrice">Koha hind (€)</label>
			<g:textField name="seatPrice" required = "true" value="${trip?.seatPrice}" />
            <g:hasErrors  bean="${trip}" field="seatPrice">
                <p class="error"><g:fieldError bean="${trip}" field="seatPrice" /></p>
            </g:hasErrors>
		</div>
		
		<div class = "row">
			<label for="freeSpots">Vabu kohti autos</label>
			<g:textField name="freeSpots" required = "true" value="${trip?.freeSpots}" />
            <g:hasErrors  bean="${trip}" field="freeSpots">
                <p class="error"><g:fieldError bean="${trip}" field="freeSpots" /></p>
            </g:hasErrors>
		</div>

		<div class = "row">
			<label for="comment">Lisainfo (valikuline)</label>
			<g:textArea name="comment" value="${trip?.comment}" />
            <g:hasErrors  bean="${trip}" field="comment">
                <p class="error"><g:fieldError bean="${trip}" field="comment" /></p>
            </g:hasErrors>
		</div>
		
		<g:if test="${flash.message}">
			<p class = "error">${flash.message}</p>
		</g:if>
		
		<div class = "row submit">
			<g:submitButton class="btn btn-default form-button" id = "createButton" name="trip-create-button" value="Tee sõit" />
		</div>
		
	</g:form>