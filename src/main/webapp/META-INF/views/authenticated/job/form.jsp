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
	<acme:form-textbox code="authenticated.job.form.label.referenceNumber" path="referenceNumber" />
	<acme:form-textbox code="authenticated.job.form.label.title" path="title" />
	<acme:form-moment code="authenticated.job.form.label.deadline" path="deadline" />
	<acme:form-double code="authenticated.job.form.label.salary" path="salary" />
	<acme:form-textbox code="authenticated.job.form.label.moreInfo" path="moreInfo" />
	<acme:form-textbox code="authenticated.job.form.label.description" path="description" />
	<acme:form-textbox code="authenticated.job.form.label.status" path="status" />
	<acme:menu-separator />
	<acme:form-panel code="authenticated.job.form.label.descriptor">
		<acme:form-textbox code="authenticated.job.form.label.descriptionDescriptor" path="descriptionDescriptor" />
	</acme:form-panel>
	<acme:menu-separator />
	<acme:form-panel code="authenticated.job.form.label.duties">
	<jstl:forEach items="${dutiesCollection}" var="item">
   		<p>${item.title}</p><br/>
    	<p>${item.description}</p><br/>
    	<p>${item.timeAmount}</p><br/>
	</jstl:forEach>
	</acme:form-panel>
	
	
	
	<acme:form-return code="authenticated.job.form.button.return" />
</acme:form>
