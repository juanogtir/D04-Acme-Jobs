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
	<acme:form-integer code="administrator.dashboard.form.label.totalNumberOfAnnouncements" path="totalNumberOfAnnouncements"/>
	<acme:form-integer code="administrator.dashboard.form.label.totalNumberOfCompanyRecords" path="totalNumberOfCompanyRecords"/>
	<acme:form-integer code="administrator.dashboard.form.label.totalNumberOfInvestorRecords" path="totalNumberOfInvestorRecords"/>
	
	
	<!-- Reward -->
	<acme:form-panel code="administrator.dashboard.form.label.rewardInformation">
		<acme:form-double code="administrator.dashboard.form.label.minimumReward" path="minimumReward"/>
		<acme:form-double code="administrator.dashboard.form.label.maximumReward" path="maximumReward"/>
		<acme:form-double code="administrator.dashboard.form.label.averageReward" path="averageReward"/>
		<acme:form-double code="administrator.dashboard.form.label.standardDesviationReward" path="standardDesviationReward"/>
	</acme:form-panel>
	
	<!-- Offer -->
	<acme:form-panel code="administrator.dashboard.form.label.offerInformation">
		<acme:form-double code="administrator.dashboard.form.label.minimumOffer" path="minimumOffer"/>
		<acme:form-double code="administrator.dashboard.form.label.maximumOffer" path="maximumOffer"/>
		<acme:form-double code="administrator.dashboard.form.label.averageOffer" path="averageOffer"/>
		<acme:form-double code="administrator.dashboard.form.label.standardDesviationOffer" path="standardDesviationOffer"/>
	</acme:form-panel>
	
	<div class="graficas">
	     <div class="chart">
	       <acme:form-label code="administrator.dashboard.form.label.chartTitle" path="chartTitle"/>
	       <canvas id="chart1" ></canvas>
	     </div>
	</div>
	
	
  	<acme:form-return code="administrator.dashboard.form.button.return"/>
</acme:form>


	<script src="libraries/acme/js/chart.js" charset="utf-8"></script>
	<script type="text/javascript">
	
		var companyEtiquetes = new Array();
		<jstl:forEach items="${companySectors}" var="item">
			companyEtiquetes.push("${item}");
		</jstl:forEach>
	
		var companyData = new Array();	
		<jstl:forEach items="${numberCompanys}" var="item">
			companyData.push(${item});
		</jstl:forEach>
	
		var inversorEtiquetes = new Array();
		<jstl:forEach items="${investorSectors}" var="item">
			inversorEtiquetes.push("${item}");
		</jstl:forEach>
	
		var inversorData = new Array();	
		<jstl:forEach items="${numberInvestors}" var="item">
			inversorData.push(${item});
		</jstl:forEach>
		
		
		var ctx = document.getElementById('chart1');	

		var data = [companyData, inversorData];
		var ets = [companyEtiquetes, inversorEtiquetes];
		var labels = ["Empresas","Inversores"];
		var title = "Empresas/Inversores por sector";
		
		//console.log(data);
		//console.log(ets);
		var chart = construyeGrafica(ctx, "bar", data,ets,labels, "",[false,false]);

	</script>

