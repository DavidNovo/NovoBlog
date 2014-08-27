<%@ page import="novoblog.Author" %>



<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="author.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${authorInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="author.url.label" default="Url" />
		
	</label>
	<g:field type="url" name="url" value="${authorInstance?.url}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="author.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${authorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'comment', 'error')} required">
	<label for="comment">
		<g:message code="author.comment.label" default="Comment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="comment" name="comment.id" from="${novoblog.Comment.list()}" optionKey="id" required="" value="${authorInstance?.comment?.id}" class="many-to-one"/>

</div>

