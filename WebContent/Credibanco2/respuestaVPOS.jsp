<%@ page import="com.alignet.bean.VPOS20Bean" %>
<%@ page import="com.alignet.plugin.DecriptarXMLPluginCredibanco2" %>
<%
	java.util.Hashtable ht = new java.util.Hashtable();
ht.put("XMLRES", request.getParameter("XMLRES"));
ht.put("DIGITALSIGN", request.getParameter("DIGITALSIGN"));
//ht.put("IDACQUIRER",request.getParameter("IDACQUIRER"));
//ht.put("IDCOMMERCE",request.getParameter("IDCOMMERCE"));
ht.put("SESSIONKEY", request.getParameter("SESSIONKEY"));
ht.put("Root", session.getServletContext().getRealPath(""));
//String xml=com.alignet.vppruebas.DecriptarXMLPlugin.decriptarXML(ht);
//response.setContentType("text/xml");
VPOS20Bean vPOSBean = DecriptarXMLPluginCredibanco2.decriptarXML(ht);
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
<TITLE>CTESTN1001 - Respuesta</TITLE>
</HEAD>
<BODY>
<table border="1">
	<tr>
		<td>AcquirerId</td>
		<td><%=vPOSBean.getAcquirerId()%>&nbsp;</td>
	</tr>
	<tr>
		<td>AuthorizationCode</td>
		<td><%=vPOSBean.getAuthorizationCode()%>&nbsp;</td>
	</tr>
	<tr>
		<td>AuthorizationResult</td>
		<td><%=vPOSBean.getAuthorizationResult()%>&nbsp;</td>
	</tr>
	<tr>
		<td>ErrorCode</td>
		<td><%=vPOSBean.getErrorCode()%>&nbsp;</td>
	</tr>
	<tr>
		<td>PurchaseCurrencyCode</td>
		<td><%=vPOSBean.getPurchaseCurrencyCode()%>&nbsp;</td>
	</tr>
	<tr>
		<td>PurchaseOperationNumber</td>
		<td><%=vPOSBean.getPurchaseOperationNumber()%>&nbsp;</td>
	</tr>
	<tr>
		<td>ErrorMessage</td>
		<td><%=vPOSBean.getErrorMessage()%>&nbsp;</td>
	</tr>
	<tr>
		<td>PurchaseAmount</td>
		<td><%=vPOSBean.getPurchaseAmount()%>&nbsp;</td>
	</tr>
	<tr>
		<td>BillingFirstName</td>
		<td><%=vPOSBean.getBillingFirstName()%>&nbsp;</td>
	</tr>
	<tr>
		<td>BillingLastName</td>
		<td><%=vPOSBean.getBillingLastName()%>&nbsp;</td>
	</tr>
	<tr>
	<tr>
		<td>Reserved1</td>
		<td><%=vPOSBean.getReserved1()%>&nbsp;</td>
	</tr>
	<tr>
		<td>Reserved2</td>
		<td><%=vPOSBean.getReserved2()%>&nbsp;</td>
	</tr>
	<tr>
		<td>Reserved3</td>
		<td><%=vPOSBean.getReserved3()%>&nbsp;</td>
	</tr>
	<tr>
		<td>Reserved4</td>
		<td><%=vPOSBean.getReserved4()%>&nbsp;</td>
	</tr>
	<tr>
		<td>Reserved5</td>
		<td><%=vPOSBean.getReserved5()%>&nbsp;</td>
	</tr>
	<tr>
		<td>Observations</td>
		<td><%=vPOSBean.getAdditionalObservations()%>&nbsp;</td>
	</tr>
</table>
</BODY>
</HTML>

