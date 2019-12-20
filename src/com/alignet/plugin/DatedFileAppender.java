// Decompiled Using: FrontEnd Plus v2.03 and the JAD Engine
// Available From: http://www.reflections.ath.cx
// Decompiler options: packimports(3) 
// Source File Name:   DatedFileAppender.java

package com.alignet.plugin;

import java.io.File;
import java.util.Calendar;
import java.util.Date;
import org.apache.log4j.*;
import org.apache.log4j.spi.ErrorHandler;
import org.apache.log4j.spi.LoggingEvent;

public class DatedFileAppender extends FileAppender
{

    public DatedFileAppender()
    {
        m_directory = "logs";
        m_prefix = "tomcat.";
        m_suffix = ".log";
        m_path = null;
        m_calendar = null;
        m_tomorrow = 0L;
    }

    public DatedFileAppender(String directory, String prefix, String suffix)
    {
        m_directory = "logs";
        m_prefix = "tomcat.";
        m_suffix = ".log";
        m_path = null;
        m_calendar = null;
        m_tomorrow = 0L;
        m_directory = directory;
        m_prefix = prefix;
        m_suffix = suffix;
        activateOptions();
    }

    public String getDirectory()
    {
        return m_directory;
    }

    public void setDirectory(String directory)
    {
        m_directory = directory;
    }

    public String getPrefix()
    {
        return m_prefix;
    }

    public void setPrefix(String prefix)
    {
        m_prefix = prefix;
    }

    public String getSuffix()
    {
        return m_suffix;
    }

    public void setSuffix(String suffix)
    {
        m_suffix = suffix;
    }

    public void activateOptions()
    {
        if(m_prefix == null)
            m_prefix = "";
        if(m_suffix == null)
            m_suffix = "";
        if(m_directory == null || m_directory.length() == 0)
            m_directory = ".";
        m_path = new File(m_directory);
        if(!m_path.isAbsolute())
        {
            String base = System.getProperty("user.dir");
            if(base != null)
                m_path = new File(base, m_directory);
        }
        m_path.mkdirs();
        if(m_path.canWrite())
            m_calendar = Calendar.getInstance();
    }

    public void append(LoggingEvent event)
    {
        if(super.layout == null)
        {
            super.errorHandler.error("No layout set for the appender named [" + super.name + "].");
            return;
        }
        if(m_calendar == null)
        {
            super.errorHandler.error("Improper initialization for the appender named [" + super.name + "].");
            return;
        }
        long n = System.currentTimeMillis();
        if(n >= m_tomorrow)
        {
            m_calendar.setTime(new Date(n));
            String datestamp = datestamp(m_calendar);
            tomorrow(m_calendar);
            m_tomorrow = m_calendar.getTime().getTime();
            File newFile = new File(m_path, m_prefix + datestamp + m_suffix);
            super.fileName = newFile.getAbsolutePath();
            super.activateOptions();
        }
        if(super.qw == null)
        {
            super.errorHandler.error("No output stream or file set for the appender named [" + super.name + "].");
            return;
        } else
        {
            subAppend(event);
            return;
        }
    }

    public static String datestamp(Calendar calendar)
    {
        int year = calendar.get(1);
        int month = calendar.get(2) + 1;
        int day = calendar.get(5);
        StringBuffer sb = new StringBuffer();
        if(year < 1000)
        {
            sb.append('0');
            if(year < 100)
            {
                sb.append('0');
                if(year < 10)
                    sb.append('0');
            }
        }
        sb.append(Integer.toString(year));
        sb.append('-');
        if(month < 10)
            sb.append('0');
        sb.append(Integer.toString(month));
        sb.append('-');
        if(day < 10)
            sb.append('0');
        sb.append(Integer.toString(day));
        return sb.toString();
    }

    public static void tomorrow(Calendar calendar)
    {
        int year = calendar.get(1);
        int month = calendar.get(2);
        int day = calendar.get(5) + 1;
        calendar.clear();
        calendar.set(year, month, day);
    }

    private String m_directory;
    private String m_prefix;
    private String m_suffix;
    private File m_path;
    private Calendar m_calendar;
    private long m_tomorrow;
}