package com.patient;
import java.net.*;
import java.io.*;

public class SendSMS 
{
	public String send(String mobile,String msg) throws Exception{
		  
        String str = "Message sending Failed!!";
        try 
        {
            String data=null;
            data = "username=sohamglobal&password=sms123&sendername=MSGMSG&mobileno="+mobile+"&message="+msg+"";
            System.out.println(data);
            DataInputStream input;
            if(data!=null)
            {
            URL url = new URL("http://bulksms.mysmsmantra.com:8080/WebSMS/SMSAPI.jsp");
            URLConnection conn = url.openConnection();
            conn.setDoOutput(true);
            OutputStreamWriter wr = new OutputStreamWriter(conn.getOutputStream());
            wr.write(data);
            wr.flush();

            InputStream in = conn.getInputStream();
            input = new DataInputStream(in);

            str = input.readLine();

            if(!str.equals(""))
            {
                 System.out.println(str);                      
            }                    
            else
            {
                System.out.println("retured str is null");                    
                System.out.println("             ");            
            }

                in.close();
            }             
        }
        catch (Exception e) 
        {           
            e.printStackTrace();        
        }
        
    return  str;
    }

}
