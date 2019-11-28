<%--
- form.jsp
-
- Copyright (c) 2019 Rafael Corchuelo.
-
- In keeping with the traditional purpose of furthering education and research, it is
- the policy of the copyright owner to permit non-commercial use and redistribution of
- this software. It has been tested carefully, but it is not guaranteed for any particular
- purposes.  The copyright owner does not offer any warranties or representations, nor do
- they accept any liabilities with respect to them.
--%>

<%@page language="java"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<acme:form>
	<acme:form-textbox code="authenticated.thread.form.label.title" path="title" />
	<acme:form-moment code="authenticated.thread.form.label.deadline" path="deadline" />
	<acme:menu-separator />
	
	<!-- Messages -->
	<acme:form-panel code="authenticated.thread.form.label.messages">

<jstl:if test="${placeholder == null}">
	<jstl:set var="placeholder" value=""/>	
</jstl:if>

<jstl:if test="${readonly == null}">
	<jstl:set var="readonly" value="false"/>
</jstl:if>

		<jstl:forEach items="${messagesCollection}" var="item">
		
		<!-- Título -->
<div class="form-group">
	<label for="${item.title}">
		<acme:message code="authenticated.thread.form.label.messages.title"/>
	</label>		
   	<input 
       	value="<acme:print value="${item.title}"/>"
       	type="text" 
       	class="form-control"
       	readonly
	/>
	<acme:form-errors path="${item.title}"/>			
</div>

			<!-- Body -->
<div class="form-group">
	<label for="${item.body}">
		<acme:message code="authenticated.thread.form.label.messages.body"/>
	</label>		
   	<input 
       	value="<acme:print value="${item.body}"/>"
       	type="text" 
       	class="form-control"
       	readonly
	/>
	<acme:form-errors path="${item.body}"/>			
</div>

			<!-- Tags -->
<jstl:if test="${item.tags != null}">		
<div class="form-group">
	<label for="${item.tags}">
		<acme:message code="authenticated.thread.form.label.messages.tags"/>
	</label>		
   	<input 
       	value="<acme:print value="${item.tags}"/>"
       	type="text" 
       	class="form-control"
       	readonly
	/>
	<acme:form-errors path="${item.tags}"/>			
</div>
</jstl:if>

			<!-- Deadline -->
<div class="form-group">
	<label for="${item.moment}">
		<acme:message code="authenticated.thread.form.label.messages.moment"/>
	</label>
	<input 
		value="<acme:print value="${item.moment}"/>"
		type="text"
		class="form-control"
       	readonly
	/>
	<acme:form-errors path="${item.moment}"/>
</div>

	<acme:menu-separator />
		</jstl:forEach>		
	</acme:form-panel>
				
	<acme:form-return code="authenticated.thread.form.button.return" />
</acme:form>
