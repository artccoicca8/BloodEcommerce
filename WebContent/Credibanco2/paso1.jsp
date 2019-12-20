<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<head>
<%@ page 
language="java"
contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR" content="IBM WebSphere Studio">
<meta http-equiv="Content-Style-Type" content="text/css">
<title>Comercio Prueba Credibanco - Paso 1</title>

<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript">

function cambioAdmRate(sel) {

	console.log("llega");
	if (sel.value=="0"){
	    $("#AdministrativeRateAmount").val('');
	    $("#AdministrativeRateIva").val('');
	    $("#AdministrativeRateIvaReturn").val('');
	    $("#AdministrativeRateCode").val('');
	}else {
	   $("#AdministrativeRateAmount").val('18000');
	   $("#AdministrativeRateIva").val('300');
	   $("#AdministrativeRateIvaReturn").val('200');
	   $("#AdministrativeRateCode").val('99');
	}
}
</script>

</head>

<BODY>
<form name="paso1" id="paso1" action="../Credibanco2/paso2.jsp" method="post">
<table width="863" height=1100>
	<tr>
		<td>* AcquirerId: &nbsp;</td>
		<td bgcolor="red"><select name="AcquirerId">
			<option value="1">1 - CREDIBANCO TESTING</option>
		</select></td>
	</tr>
	<tr>
		<td>* CommerceId: &nbsp;</td>
		<td bgcolor="red"><select name="CommerceId">
			<option value="1809">1809 - BLOODSEEKER   - TESTING - NORMAL</option>
			<option value="1809">0000 - PUDGE	      - TESTING - RESTAURANTE</option>
			<option value="1809">0000 - SPIRIT BRAKER - TESTING - AGENCIA DE VIAJE</option>
			<option value="1913">0000 - BATRIDER      - TESTING - AEROLINEA</option>
			<option value="1298">0000 - NET      - TESTING - </option>
		</select></td>
	</tr>
	<tr>
		<td>* PurchaseOperationNumber: &nbsp;</td>
		<td bgcolor="red"><input type="text" name="PurchaseOperationNumber" value="<%=new Long(System.currentTimeMillis()).toString().substring(4)%>"></td>
	</tr>
	<tr>
		<td>* PurchaseAmount: &nbsp;</td>
		<td bgcolor="red"><input type="text" name="PurchaseAmount" value = "10000"></td>
	</tr>
	<tr>
		<td>* PurchaseCurrencyCode: &nbsp;</td>
		<td bgcolor="red"><select name="PurchaseCurrencyCode">
			<option value="170">170-Colombian Peso</option>
		</select></td>
	</tr>
	<tr>
		<td>* PurchaseIpAddress: &nbsp;</td>
		<td bgcolor="red"><input type="text" name="PurchaseIpAddress" value = "172.19.44.54"></td>
	</tr>
	<tr>
		<td>* PurchaseLanguage:&nbsp;</td>
		<td bgcolor="red"><input type="text" name="PurchaseLanguage" value="SP"></td>
	</tr>
	<tr>
		<td>* PurchaseTerminalCode:&nbsp;</td>
		<td bgcolor="red"><input type="text" name= "PurchaseTerminalCode" value="2907891"></td>
		<!-- <td bgcolor="red"><input type="text" name= "PurchaseTerminalCode" value="10013005"></td> -->
	</tr>  
		<tr>
		<td>* PurchasePlanId:&nbsp;</td>
		<td bgcolor="red"><input type="text" name= "PurchasePlanId" value="01"></td>
	</tr>
		<tr>
		<td>* PurchaseQuotaId:&nbsp;</td>
		<td bgcolor="red"><input type="text" name= "PurchaseQuotaId" value="001"></td>
	</tr>
	<!-- inicio doble transaccion  -->
		<tr>
		<td>* Doble Transaccion: &nbsp;</td>
		<td bgcolor="orange">
		<select name="two" onchange="cambioAdmRate(this);">
			<option value="0">========NO========</option>
			<option value="1">========SI========</option>
		</select></td>
	</tr>
	
	
	 <tr>
		<td>** AdministrativeRateAmount:&nbsp;</td>
		<td bgcolor="orange"><input type="text" name="AdministrativeRateAmount" value="" id="AdministrativeRateAmount"></td>
	</tr>
	
	<tr>
		<td>** AdministrativeRateIva:&nbsp;</td>
		<td bgcolor="orange"><input type="text" name="AdministrativeRateIva" value="" id="AdministrativeRateIva"></td>
	</tr>
	
	<tr>
		<td>** AdministrativeRateIvaReturn:&nbsp;</td>
		<td bgcolor="orange"><input type="text" name="AdministrativeRateIvaReturn" value="" id="AdministrativeRateIvaReturn"></td>
	</tr>	
	
	<tr>
		<td>** AdministrativeRateCode:&nbsp;</td>
		<td bgcolor="orange"><input type="text" name="AdministrativeRateCode" value="" id="AdministrativeRateCode"></td>
	</tr> 
	
	<!-- fin doble transaccion  -->	
	
	<tr>
		<td>* PurchaseShippingCharges:&nbsp;</td>
		<td><input type="text" name= "PurchaseShippingCharges" ></td>
	</tr>
		<tr>
		<td>* PurchaseShipperCode:&nbsp;</td>
		<td><input type="text" name= "PurchaseShipperCode" ></td>
	</tr>
		<tr>
		<td>* PurchaseIva:&nbsp;</td>
		<td><input type="text" name= "PurchaseIva" value="100"></td>
	</tr>
		<tr>
		<td>* PurchaseIvaReturn:&nbsp;</td>
		<td><input type="text" name= "PurchaseIvaReturn" value="200"></td>
	</tr>
	<tr>
		<td>* BillingFirstName: &nbsp;</td>
		<td bgcolor="red"><input type="text" name="BillingFirstName" value="Pablo"></td>
	</tr>
	<tr>
		<td>* BillingLastName: &nbsp;</td>
		<td bgcolor="red"><input type="text" name="BillingLastName" value="Barrientos"></td>
	</tr>
	
	<tr>
		<td>* BillingCountry: &nbsp;</td>
		<td bgcolor="red"><input type="text" name="BillingCountry" value="PE"></td>
	</tr>
	
	<tr>
		<td>* BillingCity: &nbsp;</td>
		<td bgcolor="red"><input type="text" name="BillingCity" value="Lima"></td>
	</tr>
	
	<tr>
		<td>** BillingState: &nbsp;</td>
		<td bgcolor="red"><input type="text" name="BillingState" value="Estado XYZ"></td>
	</tr>
	
	<tr>
		<td>** BillingPostalCode: &nbsp;</td>
		<td bgcolor="red"><input type="text" name="BillingPostalCode" value="0001"></td>
	</tr>	
	
	<tr>
		<td>* BillingPhoneNumber: &nbsp;</td>
		<td bgcolor="red"><input type="text" name="BillingPhoneNumber" value="016109500"></td>
	</tr>
	<tr>
		<td>* BillingCelPhoneNumber: &nbsp;</td>
		<td bgcolor="red"><input type="text" name="BillingCelPhoneNumber" value="999999999"></td>
	</tr>
	<tr>
		<td>* BillingGender: &nbsp;</td>
		<td><input type="text" name="BillingGender" value="M"></td>
	</tr>
	<tr>
		<td>* BillingEmail: &nbsp;</td>
		<td bgcolor="red"><input type="text" name="BillingEmail" value="raul.barrientos@alignet.com"></td>
	</tr>
	<tr>
		<td>* BillingAddress: &nbsp;</td>
		<td><input type="text" name="BillingAddress" value="Av Casimiro Ulloa 333"></td>
	</tr>
	<tr>
		<td>* BillingBirthday: &nbsp;</td>
		<td><input type="text" name="BillingBirthday" value="2012-04-03"></td>
	</tr>
	<tr>
		<td>* BillingOutIdentifierCity: &nbsp;</td>
		<td><input type="text" name="BillingOutIdentifierCity"></td>
	</tr>
	<tr>
		<td>* BillingDateIdentifierDate: &nbsp;</td>
		<td><input type="text" name="BillingDateIdentifierDate" value="2013-02-11"></td>
	</tr>
	<tr>
		<td>* BillingNationality: &nbsp;</td>
		<td><input type="text" name="BillingNationality" value="PE"></td>
	</tr>	

	<tr>
		<td>** ShippingCountry: &nbsp;</td>
		<td><input type="text" name="ShippingCountry" value="CO"></td>
	</tr>
	
	<tr>
		<td>** ShippingCity: &nbsp;</td>
		<td><input type="text" name="ShippingCity" value="Bogota"></td>
	</tr>
	
	<tr>
		<td>** ShippingState: &nbsp;</td>
		<td bgcolor="red"><input type="text" name="ShippingState" value="Estado XYZ"></td>
	</tr>
	
	<tr>
		<td>** ShippingPostalCode: &nbsp;</td>
		<td bgcolor="red"><input type="text" name="ShippingPostalCode" value="0001"></td>
	</tr>	
	
	<tr>
		<td>** ShippingAddress: &nbsp;</td>
		<td><input type="text" name="ShippingAddress" value="Jr. Carabelli"></td>
	</tr>

	<tr>
		<td>* ShippingReceiverName: &nbsp;</td>
		<td><input type="text" name="ShippingReceiverName" value="Rigoberto"></td>
	</tr>
	
	<tr>
		<td>** ShippingReceiverLastName: &nbsp;</td>
		<td><input type="text" name="ShippingReceiverLastName" value="Pineda"></td>
	</tr>
		
	<tr>
		<td>* ShippingReceiverIdentifier: &nbsp;</td>
		<td><input type="text" name="ShippingReceiverIdentifier" ></td>
	</tr>
	
	<tr>
		<td>* ShippingReceptionMethod: &nbsp;</td>
		<td><input type="text" name="ShippingReceptionMethod" ></td>
	</tr>
	
	<tr>
		<td>* TransactionTrace:&nbsp;</td>
		<td><input type="text" name="TransactionTrace" value="PC"></td>
	</tr>
	<tr>
		<td>* FingerPrint:&nbsp;</td>
		<td><input type="text" name="FingerPrint" ></td>
	</tr>
	<tr>
		<td>* AdditionalObservations:&nbsp;</td>
		<td><input type="text" name="AdditionalObservations" value="cafe"></td>
	</tr>
	<tr>
		<td>* TaxName1:&nbsp;</td>
		<td><input type="text" name="TaxName1" value="PROPINA"></td>
	</tr>
	<tr>
		<td>* TaxAmount1:&nbsp;</td>
		<td><input type="text" name="TaxAmount1" value="100"></td>
	</tr>
	<tr>
		<td>* TaxName2:&nbsp;</td>
		<td><input type="text" name="TaxName2" value="IAC"></td>
	</tr>
	<tr>
		<td>* TaxAmount2:&nbsp;</td>
		<td><input type="text" name="TaxAmount2" value="100"></td>
	</tr>
	<!-- <tr>
		<td>* FlightAirlineCode:&nbsp;</td>
		<td bgcolor="blue"><input type="text" name="FlightAirlineCode" value=" "></td>
	</tr>
	<tr>
		<td>* FlightDepartureAirport:&nbsp;</td>
		<td bgcolor="blue"><input type="text" name="FlightDepartureAirport" value="DEP"></td>
	</tr>
	<tr>
		<td>* FlightArriveAirport:&nbsp;</td>
		<td bgcolor="blue"><input type="text" name="FlightArriveAirport"  value="ARR"></td>
	</tr>
	<tr>
		<td>* FlightDepartureDate:&nbsp;</td>
		<td bgcolor="blue"><input type="text" name="FlightDepartureDate"  value="2013-07-01"></td>
	</tr>
	<tr>
		<td>* FlightDepartureTime:&nbsp;</td>
		<td bgcolor="blue"><input type="text" name="FlightDepartureTime"  value="07:29 am"></td>
	</tr>
	<tr>
		<td>* FlightArriveDate:&nbsp;</td>
		<td bgcolor="blue"><input type="text" name="FlightArriveDate"  value="2013-07-02"></td>
	</tr>
	<tr>
		<td>* FlightArriveTime:&nbsp;</td>
		<td bgcolor="blue"><input type="text" name="FlightArriveTime"  value="12:43 pm"></td>
	</tr>
	<tr>
		<td>* FlightReservation:&nbsp;</td>
		<td bgcolor="blue"><input type="text" name="FlightReservation" value="?¿?¿"></td>
	</tr>
	
	<tr>
		<td>* AirportCodeDeparture:&nbsp;</td>
		<td bgcolor="yellow"><input type="text" name="AirportCodeDeparture" value="DEP"></td>
	</tr>
	<tr>
		<td>* AirportCityDeparture:&nbsp;</td>
		<td bgcolor="yellow"><input type="text" name="AirportCityDeparture" value="Lima"></td>
	</tr>
	<tr>
		<td>* AirportCountryDeparture:&nbsp;</td>
		<td bgcolor="yellow"><input type="text" name="AirportCountryDeparture" value="PE"></td>
	</tr>
	<tr>
		<td>* AirportCodeArrive:&nbsp;</td>
		<td bgcolor="yellow"><input type="text" name="AirportCodeArrive" value="ARR"></td>
	</tr>
	<tr>
		<td>* AirportCityArrive:&nbsp;</td>
		<td bgcolor="yellow"><input type="text" name="AirportCityArrive" value="Bogotá"></td>
	</tr>
	<tr>
		<td>* AirportCountryArrive:&nbsp;</td>
		<td bgcolor="yellow"><input type="text" name="AirportCountryArrive" value="CO"></td>
	</tr>
	<tr>
		<td>* PassengerFirstName:&nbsp;</td>
		<td bgcolor="green"><input type="text" name="PassengerFirstName" value="Ludovico"></td>
	</tr>
	<tr>
		<td>* PassengerLastName:&nbsp;</td>
		<td bgcolor="green"><input type="text" name="PassengerLastName" value="Salcedo"></td>
	</tr>
	<tr>
		<td>* PassengerDocumentType:&nbsp;</td>
		<td bgcolor="green"><input type="text" name="PassengerDocumentType" value="1"></td>
	</tr>
	<tr>
		<td>* PassengerDocumentNumber:&nbsp;</td>
		<td bgcolor="green"><input type="text" name="PassengerDocumentNumber" value="54643573456445"></td>
	</tr>
	<tr>
		<td>* PassengerAgencyCode:&nbsp;</td>
		<td bgcolor="green"><input type="text" name="PassengerAgencyCode" value=" "></td>
	</tr> -->
	<tr>
		<td>* GoodName:&nbsp;</td>
		<td bgcolor="black"><input type="text" name="GoodName"></td>
	</tr>
	<tr>
		<td>* GoodDescription:&nbsp;</td>
		<td bgcolor="black"><input type="text" name="GoodDescription"></td>
	</tr>
	<tr>
		<td>* GoodQuantity:&nbsp;</td>
		<td bgcolor="black"><input type="text" name="GoodQuantity"></td>
	</tr>
	<tr>
		<td>* GoodUnitprice:&nbsp;</td>
		<td bgcolor="black"><input type="text" name="GoodUnitprice"></td>
	</tr>
	<tr>
		<td>* ProductItem:&nbsp;</td>
		<td bgcolor="brown"><input type="text" name="ProductItem"></td>
	</tr>
		<tr>
		<td>* ProductCode:&nbsp;</td>
		<td bgcolor="brown"><input type="text" name="ProductCode"></td>
	</tr>
		<tr>
		<td>* ProductAmount:&nbsp;</td>
		<td bgcolor="brown"><input type="text" name="ProductAmount"></td>
	</tr>
		<tr>
		<td>* ProductPromotionCode:&nbsp;</td>
		<td bgcolor="brown"><input type="text" name="ProductPromotionCode"></td>
	</tr>
	
	
	<tr>
		<td>* Reservado 1:&nbsp;</td>
		<td bgcolor="blue"><input type="text" name="Reserved1" value="1"></td>
	</tr>
	<tr>
		<td>* Reservado 2:&nbsp;</td>
		<td bgcolor="blue"><input type="text" name="Reserved2" value="2"></td>
	</tr>
	<tr>
		<td>* Reservado 3:&nbsp;</td>
		<td bgcolor="blue"><input type="text" name="Reserved3" value="3"></td>
	</tr>
	<tr>
		<td>* Reservado 4:&nbsp;</td>
		<td bgcolor="blue"><input type="text" name="Reserved4" value="4"></td>
	</tr>
	<tr>
		<td>* Reservado 5:&nbsp;</td>
		<td bgcolor="blue"><input type="text" name="Reserved5" value="5"></td>
	</tr>
	<tr>
		<td colspan="2"><input type="submit" name="boton" value="Enviar"></td>
	</tr>
</table>
</form>
</BODY>
</HTML>
