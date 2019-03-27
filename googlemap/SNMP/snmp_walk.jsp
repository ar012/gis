<!-- start: Common Header -->
       <jsp:include page="/WEB-INF/view/common/commonheader.jsp" />
<!-- end: Common Header -->

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cts" uri="/WEB-INF/custom.tld"%>


<div class="wrap-content container" id="container">
	<!-- start: PAGE TITLE -->
		<jsp:include page="/WEB-INF/view/common/breadcrumb.jsp" /> 
	<!-- end: PAGE TITLE -->
	
	<div class="container-fluid container-fullw bg-white" >
		
		<div class="row">
			<div class="col-md-12">
				<c:forEach var="list" items="${map.deviceStatusList}">
					<p>${list}</p>
				</c:forEach>
			</div>
		</div>	
		
		<div class="row margin-top-10">
			<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
				<jsp:include page="/WEB-INF/view/common/footerbuttons.jsp" />
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
				<cts:Submit cssClass="print pull-right" name="&nbsp;Print" spanClass="fa fa-print" onclick="printDiv(this)" />
			</div>
		</div>
	</div>
</div>

<!-- start: Common Footer -->
    <jsp:include page="/WEB-INF/view/common/commonfooter.jsp" />
<!-- end: Common Footer -->

