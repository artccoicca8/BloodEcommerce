package com.alignet.plugin;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Hashtable;

import org.apache.log4j.NDC;

import com.alignet.bean.VPOS20Bean;
import com.alignet.plugin.exception.InvalidVPOSParameterException;
import com.alignet.plugin.exception.PlugInVPOSException;


public class DecriptarXMLPluginCredibanco2{

    public DecriptarXMLPluginCredibanco2(){    }
    
    
    

    final static String  LLAVES_ALIGNET  ="/WEB-INF/llavesAlignet2/LLAVE.VPOS.CRB.SIGN.1024.PKCS1.txt";
    final static String  COMERCIO_PRIVADO_CIFRADO  ="/WEB-INF/llavesComercio/PrivadasComercioLlavedeCifrado.txt";	
    final static String  VECTOR_INI ="aec811159abe0125";	//	10013003
    @SuppressWarnings("rawtypes")
	public static VPOS20Bean decriptarXML(Hashtable h){
    	
        NDC.push("");
       System.out.println(" =============== DecriptarXML Inicio =============== ");
        String ruta = h.get("Root").toString();
       System.out.println("Ruta: " + ruta);
       System.out.println("SESSIONKEY  : "+  (String)h.get("SESSIONKEY"));
       System.out.println("XMLRES  :  "+(String)h.get("XMLRES"));
       System.out.println("DIGITALSIGN  :  "+(String)h.get("DIGITALSIGN"));
        VPOS20Bean vPOSBean = new VPOS20Bean();
        
 
            vPOSBean.setCipheredSessionKey((String)h.get("SESSIONKEY"));
            vPOSBean.setCipheredXML((String)h.get("XMLRES"));
            vPOSBean.setCipheredSignature((String)h.get("DIGITALSIGN"));
            
        
        
        try {
            FileReader r1 = new FileReader(ruta + LLAVES_ALIGNET);
        	FileReader r5 = new FileReader(ruta + COMERCIO_PRIVADO_CIFRADO);
        	
        	System.out.println("LLAVES_ALIGNET : " + r1.toString());
        	System.out.println("COMERCIO_PRIVADO_CIFRADO : "+r5.toString());
            Receive20 receive = new Receive20(r1, r5, VECTOR_INI);
            receive.execute(vPOSBean);
            
           
        } catch(FileNotFoundException e){
            e.printStackTrace();
        }
        
//        boolean esFirmaValida = vPOSBean.isValidSign();
//        if(!esFirmaValida){
//        	System.out.println("La firma no es valida");
//        }
       System.out.println(" =============== DecriptarXML Fin =============== ");
        NDC.remove();
        return vPOSBean;
    }
}
