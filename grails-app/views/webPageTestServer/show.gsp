
<%@ page import="de.iteratec.osm.measurement.environment.WebPageTestServer" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'webPageTestServer.label', default: 'WebPageTestServer')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-webPageTestServer" class="first">
	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="webPageTestServer.label.label" default="Label" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: webPageTestServerInstance, field: "label")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="webPageTestServer.proxyIdentifier.label" default="Proxy Identifier" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: webPageTestServerInstance, field: "proxyIdentifier")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="webPageTestServer.dateCreated.label" default="Date Created" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${webPageTestServerInstance?.dateCreated}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="webPageTestServer.lastUpdated.label" default="Last Updated" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${webPageTestServerInstance?.lastUpdated}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="webPageTestServer.active.label" default="Active" /></td>
				
				<td valign="top" class="value"><g:formatBoolean boolean="${webPageTestServerInstance?.active}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="webPageTestServer.description.label" default="Description" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: webPageTestServerInstance, field: "description")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="webPageTestServer.baseUrl.label" default="Base Url" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: webPageTestServerInstance, field: "baseUrl")}</td>
				
			</tr>

			<tr class="prop">
				<td valign="top" class="name"><g:message code="webPageTestServer.apiKey.label" default="API Key" /></td>

				<td valign="top" class="value">${fieldValue(bean: webPageTestServerInstance, field: "apiKey")}</td>

			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="webPageTestServer.contactPersonName.label" default="Contact Person Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: webPageTestServerInstance, field: "contactPersonName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="webPageTestServer.contactPersonEmail.label" default="Contact Person Email" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: webPageTestServerInstance, field: "contactPersonEmail")}</td>
				
			</tr>
		
		</tbody>
	</table>
	<a href="<g:createLink controller="webPageTestServer" action="loadLocations" id="${webPageTestServerInstance.id}"/>" class="btn btn-info">
		<i class="icon-refresh"></i>
		<g:message code="de.iteratec.osm.measurement.environment.fetchlocations.button.label" default="Label" />
	</a>
</section>

</body>

</html>
