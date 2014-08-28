<%@ page import="novoblog.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="comment.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${commentInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'url', 'error')} required">
	<label for="url">
		<g:message code="comment.url.label" default="Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="url" required="" value="${commentInstance?.url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="comment.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${commentInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'body', 'error')} required">
	<label for="body">
		<g:message code="comment.body.label" default="Body" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="body" required="" value="${commentInstance?.body}"/>

</div>

