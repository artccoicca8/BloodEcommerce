// Decompiled Using: FrontEnd Plus v2.03 and the JAD Engine
// Available From: http://www.reflections.ath.cx
// Decompiler options: packimports(3) 
// Source File Name:   ALGFcdInitAdmin.java

package com.alignet.plugin;

import java.security.Security;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import org.apache.log4j.*;
import org.apache.log4j.spi.LoggerRepository;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

public class ALGFcdInitAdmin extends HttpServlet   implements Servlet {

    public ALGFcdInitAdmin()
    {
    }

    public void init()
        throws ServletException
    {
        super.init();
        String rutaReal = getServletContext().getRealPath("\\") + getInitParameter("log4j-configFile");
        PropertyConfigurator.configureAndWatch(rutaReal, 10000L);
        NDC.push("");
        log.info("Iniciando Logger ....");
        Security.addProvider(new BouncyCastleProvider());
        try
        {
            Thread.sleep(1000L);
        }
        catch(InterruptedException interruptedexception) { }
    }

    public void destroy()
    {
        NDC.remove();
        Logger.getRootLogger().getLoggerRepository().shutdown();
        super.destroy();
    }

    protected static Logger log = Logger.getLogger("TRANS");
    protected static Logger logger = Logger.getLogger("TRANSDXML");
    protected static String idUser = new String();

}