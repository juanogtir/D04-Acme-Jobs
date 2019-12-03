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
	<acme:form-textbox code="employer.application.form.label.reference" path="reference" placeholder="EEEE-JJJJ:WWWW"/>
		<acme:form-textbox code="employer.application.form.label.referenceJob" path="referenceJob"/>
		<acme:form-textbox code="employer.application.form.label.JobEmployer" path="JobEmployer"/>
	<acme:form-moment code="employer.application.form.label.moment" path="moment"/>

	<jstl:if test="${command== 'show' || command== 'update' || command== 'delete'}">
		<acme:form-textbox code="employer.application.form.label.status" path="status" placeholder="pending, accepted, rejected"/>
	</jstl:if>
	
	<jstl:if test="${command== 'create'}">
		<acme:form-select code="employer.application.form.label.status" path="status">
		<acme:form-option code="employer.application.form.label.status.pending" value="pending"/>
		<acme:form-option code="employer.application.form.label.status.rejected" value="rejected"/>
		<acme:form-option code="employer.application.form.label.status.accepted" value="accepted" selected="true"/>
	</acme:form-select>
	</jstl:if>
	
	<acme:form-textarea code="employer.application.form.label.statement" path="statement"/>
	<acme:form-textarea code="employer.application.form.label.skills" path="skills"/>
	<acme:form-textarea code="employer.application.form.label.qualifications" path="qualifications"/>
	
  	<acme:form-return code="employer.application.form.button.return"/>
  	
</acme:form>
