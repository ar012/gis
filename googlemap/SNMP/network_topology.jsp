<!-- start: Common Header -->
       <jsp:include page="/WEB-INF/view/common/commonheader.jsp" />
<!-- end: Common Header -->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cts" uri="/WEB-INF/custom.tld"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


 <style>
 
 </style>
  
<div class="wrap-content container" id="container">
	<!-- start: PAGE TITLE -->
		<jsp:include page="/WEB-INF/view/common/breadcrumb.jsp" /> 
	<!-- end: PAGE TITLE -->

	<div class="container-fluid container-fullw bg-white" >
		<%-- <div class="row">
			<div class="col-md-4">
				<cts:Select list="${map.companyCodes}" cssClass="" name="company_codes" value="${map.companyCode}"/>
				<cts:Hidden name="company_code"/>
			</div>
		</div><br> --%>
		
		
		Network Topology
		
		<div class="row">
			<div class="col-md-6">
				<label id="btn_company_select" class="mouse-pointer text-blue">Operator :</label>
                <label class="text-bold margin-left-10" id ="txt_company_name">[Operator Name]</label>
			</div>
		</div>
		
		
		<div class="row">
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
</div>

	

  <script>
  
  /*-start--------Select Company and get its data--------------*/
  $('#btn_company_select').on('click', function(){
      
     ShowModal("hrm/ed/company/searchcompanyshow?action_type_code=SELECT&actioncallback=loadCompany");
  });

  function loadCompany(data){

     var company = JSON.parse(unescape(data));

     $('#txt_company_name').text(company.companyName);
      
      $("#btn_company_select").attr('src','assets/images/system/company_logo/'+company.id+'.png');
      
     HideModal('search-modal');
  }
  /*-end--------Select Company and get its data--------------*/
  
    
  </script>


  

<!-- start: Common Footer -->
      <jsp:include page="/WEB-INF/view/common/commonfooter.jsp" />
<!-- end: Common Footer -->