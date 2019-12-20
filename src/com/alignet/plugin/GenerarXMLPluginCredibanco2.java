package com.alignet.plugin;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Hashtable;

import com.alignet.bean.VPOS20Bean;
import com.alignet.plugin.exception.InvalidVPOSParameterException;
import com.alignet.plugin.exception.PlugInVPOSException;


public class GenerarXMLPluginCredibanco2 {

	public GenerarXMLPluginCredibanco2() {
	}
	

	final static String  VECTOR_INI ="aec811159abe0125";	
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public static Hashtable generarXML(Hashtable h) {
		System.out.println("LLego encripta ");
		System.out.println(" =============== GenerarXML - Inicio =============== ");
		String ruta = h.get("Root").toString();
		System.out.println("Ruta: " + ruta);
		VPOS20Bean vPOSBean = new VPOS20Bean();
		
		try {
			
			String  operationNumber = (String)h.get("PurchaseOperationNumber") ;
			System.out.println("**** NUMERO DE OPERACION   : "+operationNumber);
			
			vPOSBean.setAcquirerId((String)h.get("AcquirerId"));
            vPOSBean.setCommerceId((String)h.get("CommerceId"));
            vPOSBean.setPurchaseOperationNumber(operationNumber);
            vPOSBean.setPurchaseAmount((String)h.get("PurchaseAmount"));
            vPOSBean.setPurchaseCurrencyCode((String)h.get("PurchaseCurrencyCode"));
            vPOSBean.setPurchaseTerminalCode((String)h.get("PurchaseTerminalCode"));
            vPOSBean.setPurchasePlanId((String)h.get("PurchasePlanId"));
            
            
            vPOSBean.setPurchaseQuotaId((String)h.get("PurchaseQuotaId"));
			if(!((String)h.get("PurchaseShippingCharges")).equals("")){
				vPOSBean.setPurchaseShippingCharges((String)h.get("PurchaseShippingCharges"));
			}
			if(!((String)h.get("PurchaseShipperCode")).equals("")){
				vPOSBean.setPurchaseShipperCode((String)h.get("PurchaseShipperCode"));
			}
			if(!((String)h.get("PurchaseIva")).equals("")){
				vPOSBean.setPurchaseIva((String)h.get("PurchaseIva"));
			}
			if(!((String)h.get("PurchaseIvaReturn")).equals("")){
				vPOSBean.setPurchaseIvaReturn((String)h.get("PurchaseIvaReturn"));
			}
            vPOSBean.setPurchaseLanguage((String)h.get("PurchaseLanguage"));
			if(!((String)h.get("PurchaseIpAddress")).equals("")){
				vPOSBean.setPurchaseIpAddress((String)h.get("PurchaseIpAddress"));
			}
            vPOSBean.setBillingFirstName((String)h.get("BillingFirstName"));
            vPOSBean.setBillingLastName((String)h.get("BillingLastName"));
            vPOSBean.setBillingCountry((String)h.get("BillingCountry"));
            vPOSBean.setBillingCity((String)h.get("BillingCity"));
            vPOSBean.setBillingEmail(((String)h.get("BillingEmail")));
            vPOSBean.setBillingPhoneNumber(((String)h.get("BillingPhoneNumber")));
            vPOSBean.setBillingCelPhoneNumber((String)h.get("BillingCelPhoneNumber"));
			if(!((String)h.get("BillingGender")).equals("")){
				vPOSBean.setBillingGender((String)h.get("BillingGender"));
			}
			if(!((String)h.get("BillingAddress")).equals("")){
				vPOSBean.setBillingAddress((String)h.get("BillingAddress"));
			}
			
			if(!((String)h.get("BillingState")).equals("")){  
				vPOSBean.setBillingState((String)h.get("BillingState"));
			}
			if(!((String)h.get("BillingPostalCode")).equals("")){  
				vPOSBean.setBillingPostalCode((String)h.get("BillingPostalCode"));
			}
			
//			vPOSBean.setShippingState("Estado XYZ");
//			vPOSBean.setShippingPostalCode("0001");
			
			
			if(!((String)h.get("BillingBirthday")).equals("")){
				vPOSBean.setBillingBirthday((String)h.get("BillingBirthday"));
			}
			if(!((String)h.get("BillingOutIdentifierCity")).equals("")){
				vPOSBean.setBillingOutIdentifierCity((String)h.get("BillingOutIdentifierCity"));
			}
			if(!((String)h.get("BillingDateIdentifierDate")).equals("")){
				vPOSBean.setBillingDateIdentifierDate((String)h.get("BillingDateIdentifierDate"));
			}
			if(!((String)h.get("BillingNationality")).equals("")){
				vPOSBean.setBillingNationality((String)h.get("BillingNationality"));
			}
			
			vPOSBean.setShippingCountry((String)h.get("ShippingCountry"));         
			vPOSBean.setShippingCity((String)h.get("ShippingCity"));          
			vPOSBean.setShippingAddress((String)h.get("ShippingAddress")); 
			
			if(!((String)h.get("ShippingReceptionMethod")).equals("")){
				vPOSBean.setShippingReceptionMethod((String)h.get("ShippingReceptionMethod"));
			}
			if(!((String)h.get("ShippingReceiverName")).equals("")){
				vPOSBean.setShippingReceiverName((String)h.get("ShippingReceiverName"));
			}
			
			if(!((String)h.get("ShippingReceiverLastName")).equals("")){ 
				vPOSBean.setShippingReceiverLastName((String)h.get("ShippingReceiverLastName"));
			} 
			
			if(!((String)h.get("ShippingReceiverIdentifier")).equals("")){
				vPOSBean.setShippingReceiverIdentifier((String)h.get("ShippingReceiverIdentifier"));
			}
			if(!((String)h.get("TransactionTrace")).equals("")){
				vPOSBean.setTransactionTrace((String)h.get("TransactionTrace"));
			} 
			if(!((String)h.get("FingerPrint")).equals("")){
				vPOSBean.setFingerPrint((String)h.get("FingerPrint"));
			}
            vPOSBean.setAdditionalObservations((String)h.get("AdditionalObservations"));
			
         //   vPOSBean.addTax((String)h.get("TaxName1"), (String)h.get("TaxAmount1"));
			
			System.out.println("tax " +(String)h.get("TaxName2")+" /monto "+(String)h.get("TaxAmount2"));
			vPOSBean.addTax("IAC", "100");
			//vPOSBean.addTax("TASA_AERO", "500");
			
			
//			vPOSBean.addFlight((String)h.get("FlightAirlineCode"),(String)h.get("FlightDepartureAirport"), 
//            (String)h.get("FlightArriveAirport"), (String)h.get("FlightDepartureDate"), 
//            (String)h.get("FlightDepartureTime"), (String)h.get("FlightArriveDate"), 
//            (String)h.get("FlightArriveTime"), (String)h.get("FlightReservation"),"","");
//			
//				
//			if(!((String)h.get("AirportCodeDeparture")).equals("")){
//				vPOSBean.addAirport((String)h.get("AirportCodeDeparture"), (String)h.get("AirportCityDeparture"), 
//            	(String)h.get("AirportCountryDeparture"));
//			}
//			if(!((String)h.get("AirportCodeArrive")).equals("")){
//				vPOSBean.addAirport((String)h.get("AirportCodeArrive"), (String)h.get("AirportCityArrive"), 
//            	(String)h.get("AirportCountryArrive"));
//			}
//			if(!((String)h.get("PassengerFirstName")).equals("")||!((String)h.get("PassengerLastName")).equals("")){
//				vPOSBean.addPassenger((String)h.get("PassengerFirstName"), (String)h.get("PassengerLastName"), 
//            	(String)h.get("PassengerDocumentType"), (String)h.get("PassengerDocumentNumber"),
//            	(String)h.get("PassengerAgencyCode"));
//			}
			if(!((String)h.get("GoodName")).equals("")){
				vPOSBean.addGood((String)h.get("GoodName"), (String)h.get("GoodDescription"),
            	(String)h.get("GoodQuantity"), (String)h.get("GoodUnitprice"));
			}
			
			vPOSBean.addProduct((String)h.get("ProductItem"), (String)h.get("ProductCode"),
            	(String)h.get("ProductAmount"), (String)h.get("ProductPromotionCode"));
			
			vPOSBean.addAdministrativeRate((String)h.get("AdministrativeRateAmount"), (String)h.get("AdministrativeRateIva"),
			(String)h.get("AdministrativeRateIvaReturn"), (String)h.get("AdministrativeRateCode"));								                               
				
			if(!((String)h.get("Reserved1")).equals("")){
				vPOSBean.setReserved1((String)h.get("Reserved1"));
			}
			if(!((String)h.get("Reserved2")).equals("")){
				vPOSBean.setReserved2((String)h.get("Reserved2"));
			}
			if(!((String)h.get("Reserved3")).equals("")){
				vPOSBean.setReserved3((String)h.get("Reserved3"));
			}
			if(!((String)h.get("Reserved4")).equals("")){
				vPOSBean.setReserved4((String)h.get("Reserved4"));
			}
			if(!((String)h.get("Reserved5")).equals("")){
				vPOSBean.setReserved5((String)h.get("Reserved5"));
			}
		} catch (InvalidVPOSParameterException e) {
			e.printStackTrace();
		}
		
		try {
			FileReader r1 = null;
			FileReader r2 = null;
			
			r1 = new FileReader(ruta+ "/WEB-INF/llavesAlignet2/LLAVE.VPOS.CRB.CRYPTO.1024.PKCS1_NET.txt");//ok 
			r2 = new FileReader(ruta+ "/WEB-INF/llavesComercio/PrivadasComercioLlavedeFirma.txt");	//	10013003
			
//			r1 = new FileReader(ruta+ "/WEB-INF/llavesAlignet2/LLAVE.VPOS.CRB.CRYPTO.1024.PKCS1.txt");//ok 
//			r2 = new FileReader(ruta+ "/WEB-INF/llavesComercio/LLAVE_FIRM_PRIV.txt");	//	10013003

			Send20 send = new Send20(r1, r2, VECTOR_INI);
			send.execute(vPOSBean);
		} catch (PlugInVPOSException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		System.out.println("XML ENCRIPTADO  :"+  vPOSBean.getCipheredXML());
		System.out.println("CIPHERED SIGNATUE  :"+vPOSBean.getCipheredSignature());
		System.out.println("LLAVE DE SESSION ENCRIPTADA   :"+vPOSBean.getCipheredSessionKey());
		Hashtable ht = new Hashtable();
		ht.put("AcquirerId", (String) h.get("AcquirerId"));
		ht.put("CommerceId", (String) h.get("CommerceId"));
		ht.put("XML", vPOSBean.getCipheredXML());
		ht.put("SIGNATURE", vPOSBean.getCipheredSignature());
		ht.put("SESSIONKEY", vPOSBean.getCipheredSessionKey());
		System.out.println(" =============== GenerarXML - Fin =============== ");
		return ht;
	}
}