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

		<jstl:forEach items="${messagesCollection}" var="item">

			<jstl:if test="${readonly == null}">
				<jstl:set var="readonly" value="false" />
			</jstl:if>

			<!-- Usuario del Message 
			<div class="form-group">
				<label for="${item.user}"> <acme:message code="authenticated.thread.form.label.messageUser" />
				</label> <input id="${item.user}" name="${item.user}" val-ue="<acme:print value="${item.user}"/>" type="text" class="form-control"
					<jstl:if test="${readonly}">
               readonly
           </jstl:if> />
				<acme:form-errors path="${item.user}" />
			</div>-->

			<!-- Título del Message -->
			<div class="form-group">
				<label for="${item.title}"> <acme:message code="authenticated.thread.form.label.messageTitle" />
				</label> <input id="${item.title}" name="${item.title}" value="<acme:print value="${item.title}"/>" type="text" class="form-control"
					<jstl:if test="${readonly}">
               readonly
           </jstl:if> />
				<acme:form-errors path="${item.title}" />
			</div>

			<!-- Fecha de creacion del Message -->
			<div class="form-group">
				<label for="${item.moment}"> <acme:message code="authenticated.thread.form.label.messageMoment" />
				</label> <input id="${item.moment}" name="${item.moment}" value="<acme:print value="${item.moment}"/>" type="text" class="form-control"
					<jstl:if test="${readonly}">
               readonly
           </jstl:if> />
				<acme:form-errors path="${item.moment}" />
			</div>

			<!-- Tags del Message -->

			<div class="form-group">
				<label for="${item.tags}"> <acme:message code="authenticated.thread.form.label.messageTags" />
				</label> <input id="${item.tags}" name="${item.tags}" val-ue="<acme:print value="${item.tags}"/>" type="text" class="form-control"
					placeHolder="${item.tags}" <jstl:if test="${readonly}">
               readonly
           </jstl:if> />
				<acme:form-errors path="${item.tags}" />
			</div>

			<!-- Cuerpo del Message -->
			<div class="form-group">
				<label for="${item.body}"> <acme:message code="authenticated.thread.form.label.messageBody" />
				</label> <input id="${item.body}" name="${item.body}" val-ue="<acme:print value="${item.body}"/>" type="text" class="form-control"
					<jstl:if test="${readonly}">
               readonly
           </jstl:if> />
				<acme:form-errors path="${item.body}" />
			</div>
			<acme:menu-separator />
		</jstl:forEach>

	</acme:form-panel>




	<acme:form-return code="authenticated.thread.form.button.return" />
</acme:form>
