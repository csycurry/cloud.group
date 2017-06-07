package com.csy.util;

import java.security.GeneralSecurityException;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sun.mail.util.MailSSLSocketFactory;
 
public class SendMailUtil{
     
    // 设置服务器
    private static String KEY_SMTP = "mail.host";
    private static String VALUE_SMTP = "smtp.qq.com";
    // 服务器验证
    private static String KEY_PROPS = "mail.smtp.auth";
    private static String VALUE_PROPS = "true";
    // 发件人用户名、密码
    private String SEND_USER = "444712707@qq.com";
    private String SEND_UNAME = "444712707";
    private String SEND_PWD = "ITchen@0571.cn";
    private String key = "idzllduafgwicbda";
    // 建立会话
    private MimeMessage message;
    private Session session;
 
    /*
     * 初始化方法
     */
    public SendMailUtil() {
    	Properties props = new Properties();
	    // 发送服务器需要身份验证
	    props.setProperty(KEY_PROPS, VALUE_PROPS);
	    // 设置邮件服务器主机名
	    props.setProperty(KEY_SMTP, VALUE_SMTP);
	    // 发送邮件协议名称
	    props.setProperty("mail.transport.protocol", "smtp");
	    props.put("mail.smtp.port", "465");
	    props.put("mail.smtp.socketFactory.port", "465");
	 
	    MailSSLSocketFactory sf;
		try {
			sf = new MailSSLSocketFactory();
			sf.setTrustAllHosts(true);
			props.put("mail.smtp.ssl.enable", "true");
			props.put("mail.smtp.ssl.socketFactory", sf);
			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		    props.put("mail.smtp.socketFactory.fallback", "false");
		} catch (GeneralSecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   
	    session = Session.getInstance(props);
    }
 
    /**
     * 发送邮件
     * 
     * @param headName
     *            邮件头文件名
     * @param sendHtml
     *            邮件内容
     * @param receiveUser
     *            收件人地址
     */
    public void doSendHtmlEmail(String headName, String sendHtml,
            String receiveUser) {
    	
    	    Message msg = new MimeMessage(session);
    	    
    	    try {
    	    	msg.setSubject(headName);
				msg.setText(sendHtml);
				msg.setFrom(new InternetAddress(SEND_USER));
		    	 
	    	    Transport transport = session.getTransport();
	    	    transport.connect(VALUE_SMTP, SEND_USER, key);
	    	 
	    	    transport.sendMessage(msg, new Address[] { new InternetAddress(receiveUser) });
	    	    transport.close();
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	    
    }
 
    public static void main(String[] args) {
    	SendMailUtil mailUtil = new SendMailUtil();
    	mailUtil.doSendHtmlEmail("邮件头文件名", "邮件内容", "1498732845@qq.com");
    }
 
}
