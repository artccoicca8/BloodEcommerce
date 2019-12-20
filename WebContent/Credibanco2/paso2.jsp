
<%@page import="com.alignet.plugin.GenerarXMLPluginCredibanco2"%>
<%java.util.Hashtable htXS = new java.util.Hashtable();
java.util.Hashtable ht = new java.util.Hashtable();
ht.put("AcquirerId", request.getParameter("AcquirerId"));
ht.put("CommerceId", request.getParameter("CommerceId"));
ht.put("PurchaseOperationNumber", request.getParameter("PurchaseOperationNumber"));
ht.put("PurchaseAmount", request.getParameter("PurchaseAmount")!= null && !request.getParameter("PurchaseAmount").trim().equals("")?   request.getParameter("PurchaseAmount"): "0"); 
ht.put("PurchaseCurrencyCode", request.getParameter("PurchaseCurrencyCode"));
ht.put("PurchaseIpAddress", request.getParameter("PurchaseIpAddress"));
ht.put("PurchaseLanguage", request.getParameter("PurchaseLanguage"));
ht.put("PurchaseTerminalCode", request.getParameter("PurchaseTerminalCode"));
ht.put("PurchasePlanId", request.getParameter("PurchasePlanId"));
ht.put("PurchaseQuotaId", request.getParameter("PurchaseQuotaId"));
ht.put("PurchaseShippingCharges", request.getParameter("PurchaseShippingCharges"));
ht.put("PurchaseShipperCode", request.getParameter("PurchaseShipperCode"));
ht.put("PurchaseIva", request.getParameter("PurchaseIva"));
ht.put("PurchaseIvaReturn", request.getParameter("PurchaseIvaReturn"));
ht.put("BillingFirstName", request.getParameter("BillingFirstName"));
ht.put("BillingLastName", request.getParameter("BillingLastName"));
ht.put("BillingCountry", request.getParameter("BillingCountry"));
ht.put("BillingCity", request.getParameter("BillingCity"));
ht.put("BillingPhoneNumber", request.getParameter("BillingPhoneNumber"));
ht.put("BillingCelPhoneNumber", request.getParameter("BillingCelPhoneNumber"));
ht.put("BillingGender", request.getParameter("BillingGender"));
ht.put("BillingEmail", request.getParameter("BillingEmail"));
ht.put("BillingAddress", request.getParameter("BillingAddress"));
ht.put("BillingBirthday", request.getParameter("BillingBirthday"));
ht.put("BillingOutIdentifierCity", request.getParameter("BillingOutIdentifierCity"));
ht.put("BillingDateIdentifierDate", request.getParameter("BillingDateIdentifierDate"));
ht.put("BillingNationality", request.getParameter("BillingNationality"));
ht.put("ShippingReceptionMethod", request.getParameter("ShippingReceptionMethod"));
ht.put("ShippingReceiverName", request.getParameter("ShippingReceiverName"));
ht.put("ShippingReceiverIdentifier", request.getParameter("ShippingReceiverIdentifier"));
ht.put("TransactionTrace", request.getParameter("TransactionTrace"));
ht.put("FingerPrint", request.getParameter("FingerPrint"));
ht.put("AdditionalObservations", request.getParameter("AdditionalObservations"));
/* ht.put("FlightAirlineCode", request.getParameter("FlightAirlineCode")); */
ht.put("TaxName1", request.getParameter("TaxName1"));
ht.put("TaxAmount1", request.getParameter("TaxAmount1"));
/* ht.put("FlightDepartureAirport", request.getParameter("FlightDepartureAirport"));
ht.put("FlightArriveAirport", request.getParameter("FlightArriveAirport"));
ht.put("FlightDepartureDate", request.getParameter("FlightDepartureDate"));
ht.put("FlightDepartureTime", request.getParameter("FlightDepartureTime"));
ht.put("FlightArriveDate", request.getParameter("FlightArriveDate"));
ht.put("FlightArriveTime", request.getParameter("FlightArriveTime"));
ht.put("FlightReservation", request.getParameter("FlightReservation"));
ht.put("AirportCodeDeparture", request.getParameter("AirportCodeDeparture"));
ht.put("AirportCityDeparture", request.getParameter("AirportCityDeparture"));
ht.put("AirportCountryDeparture", request.getParameter("AirportCountryDeparture"));
ht.put("AirportCodeArrive", request.getParameter("AirportCodeArrive"));
ht.put("AirportCityArrive", request.getParameter("AirportCityArrive"));
ht.put("AirportCountryArrive", request.getParameter("AirportCountryArrive"));
ht.put("PassengerFirstName", request.getParameter("PassengerFirstName"));
ht.put("PassengerLastName", request.getParameter("PassengerLastName"));
ht.put("PassengerDocumentType", request.getParameter("PassengerDocumentType"));
ht.put("PassengerDocumentNumber", request.getParameter("PassengerDocumentNumber"));
ht.put("PassengerAgencyCode", request.getParameter("PassengerAgencyCode")); */
ht.put("GoodName", request.getParameter("GoodName"));
ht.put("GoodDescription", request.getParameter("GoodDescription"));
ht.put("GoodQuantity", request.getParameter("GoodQuantity"));
ht.put("GoodUnitprice", request.getParameter("GoodUnitprice"));
ht.put("ProductItem", request.getParameter("ProductItem"));
ht.put("ProductCode", request.getParameter("ProductCode"));
ht.put("ProductAmount", request.getParameter("ProductAmount"));
ht.put("ProductPromotionCode", request.getParameter("ProductPromotionCode"));
ht.put("Reserved1", request.getParameter("Reserved1"));
ht.put("Reserved2", request.getParameter("Reserved2"));
ht.put("Reserved3", request.getParameter("Reserved3"));
ht.put("Reserved4", request.getParameter("Reserved4"));
ht.put("Reserved5", request.getParameter("Reserved5"));
ht.put("Root", session.getServletContext().getRealPath(""));


ht.put("BillingState", request.getParameter("BillingState"));
ht.put("BillingPostalCode", request.getParameter("BillingPostalCode"));
ht.put("ShippingCountry", request.getParameter("ShippingCountry"));
ht.put("ShippingCity", request.getParameter("ShippingCity"));
ht.put("ShippingAddress", request.getParameter("ShippingAddress"));
ht.put("ShippingReceiverLastName", request.getParameter("ShippingReceiverLastName"));

/* ht.put("AdministrativeRateAmount", request.getParameter("AdministrativeRateAmount"));
ht.put("AdministrativeRateIva", request.getParameter("AdministrativeRateIva"));
ht.put("AdministrativeRateIvaReturn", request.getParameter("AdministrativeRateIvaReturn"));
ht.put("AdministrativeRateCode", request.getParameter("AdministrativeRateCode")); */

htXS = GenerarXMLPluginCredibanco2.generarXML(ht);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
<%@ page 
language="java"
contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"
%>
<META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<META name="GENERATOR" content="IBM WebSphere Studio">
<META http-equiv="Content-Style-Type" content="text/css">
<TITLE>CTESTN1001 - Paso 2</TITLE>
<script language="Javascript">
function enviar(){
	document.f1.action=document.f1.URLVPOS.value;
	document.f1.boton01.disabled=true;
	document.f1.submit();
}
</script>
</HEAD>
<BODY>
<!--<form name="f1" id="f1" action="https://servicios.alignet.com/VPOS/MM/transactionStart.do" method="post">-->
<!--<form name="f1" id="f1" action="http://172.19.44.62:9080/VPOS/MM/transactionStart.do" method="post">-->
<form name="f1" id="f1" action="#" method="post">
<table border="0"> 
	<tr>
		<td>IDACQUIRER:</td>
		<td><input type="text" name="IDACQUIRER" value="<%=(String) htXS.get("AcquirerId")%>" id="AcquirerId"></td>
	</tr>
	<tr>
		<td>COMMERCE:</td>
		<td><input type="text" name="IDCOMMERCE" value="<%=(String) ht.get("CommerceId")%>" id="CommerceId"></td>
	</tr>
	<tr>
		<td>TERMINAL:</td>
		<td><input type="text" name="TERMINALCODE" value="<%=(String) ht.get("PurchaseTerminalCode")%>" id="PurchaseTerminalCode"></td>
	</tr>
	<tr>
		<td>XML:</td>
		<td><input type="text" name="XMLREQ" value="<%=(String) htXS.get("XML")%>" id="XMLREQ"></td>
	</tr>
	<tr>
		<td>SIGNATURE:</td>
		<td><input type="text" name="DIGITALSIGN" value="<%=(String) htXS.get("SIGNATURE")%>" id="SIGNATURE"></td>
	</tr>
	<tr>
		<td>SESSIONKEY:</td>
		<td><input type="text" name="SESSIONKEY" value="<%=(String) htXS.get("SESSIONKEY")%>" id="SESSIONKEY"></td>
	</tr>
	<tr>
		<td>URL VPOS</td>
		<td><select name="URLVPOS" id="URLVPOS">
			<option	value="https://testecommerce.credibanco.com/vpos2/MM/transactionStart20.do">Credibanco TEST</option>
			<option	value="https://testecommerce.credibanco.com/RECAUDO/MM/transactionStart20.do">Credibanco  RECAUDO TEST</option>
			<option	value="http://172.19.202.98:9087/vpos2/MM/transactionStart20.do">Credibanco WAS 8.5</option>
		</select></td>
	</tr>
	<tr>
		<td colspan="2" align="center"><input type="button" name="boton01"
			value="Enviar" onclick="enviar();" ondblclick="enviar();"></td>
	</tr>
</table>
</form>
</BODY>
</HTML>
