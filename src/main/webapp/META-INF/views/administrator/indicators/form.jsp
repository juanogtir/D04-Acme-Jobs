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

<link rel="stylesheet" href="libraries/acme/css/chart.css"/>

<script type="text/javascript" src="libraries/chart.js/2.7.2/js/chart.min.js"></script>

<acme:form readonly="true">
	
	<!-- Listing indicators -->
	<acme:form-panel code="administrator.indicators.form.label.listIndicators">
		<acme:form-double code="administrator.indicators.form.label.averageJobsPerEmployer" path="averageJobsPerEmployer"/>
		<acme:form-double code="administrator.indicators.form.label.averageApplicationsPerEmployer" path="averageApplicationsPerEmployer"/>
		<acme:form-double code="administrator.indicators.form.label.averageApplicationsPerWorker" path="averageApplicationsPerWorker"/>
	</acme:form-panel>
	
	<h2>
		<acme:message code="administrator.indicators.form.label.chart"/>
	</h2>	
	
	<div>
		<canvas id="canvas2"></canvas>
	</div>
	
	<script type="text/javascript">
		$(document).ready(function() {
			var data = {
				labels : ["PENDING","ACCEPTED","REJECTED"],
				datasets : [
					{
						label: 'Applications',
						data : [
							<jstl:out value="${ratioPendingApplications}"/>,
							<jstl:out value="${ratioAcceptedApplications}"/>,
							<jstl:out value="${ratioRejectedApplications}"/>,
						],
						backgroundColor : 'LightSkyBlue'
						
					},
					{
						label: 'Jobs',
						data2 : [
							<jstl:out value="${ratioPendingJobs}"/>,
							<jstl:out value="${ratioAcceptedJobs}"/>,
							<jstl:out value="${ratioRejectedJobs}"/>,
						],
						backgroundColor : 'LightGreen'
					}
				]
			};
			var options = {
				scales : {
					yAxes : [
						{
							ticks : {
								suggestedMin : 0.0,
								suggestedMax : 1.0
							}
						}
					]
				}
			};
			var canvas,context;
			canvas = document.getElementById("canvas2");
			context = canvas.getContext("2d");
			new Chart(context, {
				type : "bar",
				data : data,
				options : options
			});
			
		});
	</script>
	
  	<acme:form-return code="administrator.indicators.form.button.return"/>
</acme:form>


	

