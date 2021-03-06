<%@ page import="de.iteratec.osm.report.chart.Event" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
  <r:require modules="event" />
</head>

<body>

<section id="create-event" class="first">

	<g:hasErrors bean="${eventInstance}">
	<div class="alert alert-error">
		<g:renderErrors bean="${eventInstance}" as="list" />
	</div>
	</g:hasErrors>
	
	<g:form action="save" class="form-horizontal" >
		<fieldset class="form">
			<g:render template="form"/>
		</fieldset>
		<div class="form-actions">
			<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            <button class="btn" type="reset"><g:message code="default.button.reset.label" default="Reset" /></button>
		</div>
	</g:form>
	
</section>
		
  <r:script>
    $(document).ready(doOnDomReady());
  </r:script>
</body>

</html>
