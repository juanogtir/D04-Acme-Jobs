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
	<acme:form-textbox code="employer.job.form.label.referenceNumber" path="referenceNumber" placeholder="EEEE-JJJJ"/>
	<acme:form-textbox code="employer.job.form.label.title" path="title" />
	<acme:form-moment code="employer.job.form.label.deadline" path="deadline" />
	<acme:form-double code="employer.job.form.label.salary" path="salary" />
	<acme:form-textbox code="employer.job.form.label.moreInfo" path="moreInfo" />
	<acme:form-textbox code="employer.job.form.label.status" path="status" />
	<acme:menu-separator />
	<acme:form-panel code="employer.job.form.label.descriptor">
		<acme:form-textbox code="employer.job.form.label.descriptionDescriptor" path="descriptionDescriptor" />
	</acme:form-panel>
	
	
	<acme:form-panel code="employer.job.form.label.duties">
	<acme:menu-separator />
	
	<!-- Duties -->
	<jstl:forEach items="${dutiesCollection}" var="item">
		
<jstl:if test="${readonly == null}">
	<jstl:set var="readonly" value="false"/>
</jstl:if>

<!-- Título del Duty -->
<div class="form-group">
	<label for="${item.title}">
		<acme:message code="employer.job.form.label.dutyTitle"/>
	</label>		
   	<input 
   		id="${item.title}"
   		name="${item.title}"
       	value="<acme:print value="${item.title}"/>"
       	type="text" 
       	class="form-control"
       	<jstl:if test="${readonly}">
       		readonly
       	</jstl:if>
	/>
	<acme:form-errors path="${item.title}"/>			
</div>

<!-- Descripcion del Duty -->
<div class="form-group">
	<label for="${item.description}">
		<acme:message code="employer.job.form.label.dutyDescription"/>
	</label>		
   	<input 
   		id="${item.description}"
   		name="${item.description}"
       	value="<acme:print value="${item.description}"/>"
       	type="text" 
       	class="form-control"
       	<jstl:if test="${readonly}">
       		readonly
       	</jstl:if>
	/>
	<acme:form-errors path="${item.description}"/>			
</div>


<!-- Time amount del Duty -->

<div class="form-group">
	<label for="${item.timeAmount}">
		<acme:message code="employer.job.form.label.dutyTimeAmount"/>
	</label>
	<input 
		id="${item.timeAmount}" 
		name="${item.timeAmount}"
		value="<acme:print value="${item.timeAmount}"/>"
		type="text"
		class="form-control"
		placeHolder="${item.timeAmount}"
		<jstl:if test="${readonly}">
       		readonly
       	</jstl:if>
	/>
	<acme:form-errors path="${item.timeAmount}"/>
</div>
		<acme:menu-separator />
	</jstl:forEach>
	</acme:form-panel>
	

	<acme:form-return code="employer.job.form.button.return" />
</acme:form>
