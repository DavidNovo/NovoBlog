<%@ page import="novoblog.Post" %>



<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="post.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${postInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'teaser', 'error')} required">
	<label for="teaser">
		<g:message code="post.teaser.label" default="Teaser" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="teaser" required="" value="${postInstance?.teaser}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'content', 'error')} required">
	<label for="content">
		<g:message code="post.content.label" default="Content" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="content" required="" value="${postInstance?.content}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'published', 'error')} ">
	<label for="published">
		<g:message code="post.published.label" default="Published" />
		
	</label>
	<g:checkBox name="published" value="${postInstance?.published}" />

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="post.comments.label" default="Comments" />
		
	</label>
	<g:select name="comments" from="${novoblog.Comment.list()}" multiple="multiple" optionKey="id" size="5" value="${postInstance?.comments*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'datePublished', 'error')} required">
	<label for="datePublished">
		<g:message code="post.datePublished.label" default="Date Published" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="datePublished" precision="day"  value="${postInstance?.datePublished}"  />

</div>

