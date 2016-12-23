package com.csy.util;

import javax.mail.internet.MimeMessage;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

/**
 * 采用Spring的JavaMailSender发邮件
 * 
 * @author gaowei.cheng 2015年12月23日
 */
@Component
public class SpringMail {
    private static Logger log = Logger.getLogger(SpringMail.class);
    //注入一个mailSender
    @Autowired
    JavaMailSenderImpl mailSender;
    @Value("${mail.smtp.from}")
    private String from;
    public void sendMail(String[] to,String[] cc) {

        MimeMessage mailMessage = mailSender.createMimeMessage();
        log.info("发送邮件给" + to);
        try {
            MimeMessageHelper helper = new MimeMessageHelper(mailMessage, true, "utf-8");
            helper.setFrom("444712707@qq.com");// 设置发件人
            helper.setTo(to);// 设置收件人
            helper.setCc(cc);// 设置抄送
            helper.setSubject("SpringMail测试");// 设置主题
            helper.setText("这是一封来自SpringMail的测试邮件");// 邮件体
            mailSender.send(mailMessage);// 发送邮件
            log.info("邮件发送成功...");
        } catch (Exception e) {
            log.error("邮件发送发生异常");
            log.error(e.getMessage());
            log.info("进行重发");
            try {
                Thread.sleep(1000 * 1000);
                this.sendMail(to,cc);
            } catch (InterruptedException e1) {
                log.info("重发邮件发生异常");
                log.error(e.getMessage());
                e1.printStackTrace();
            }
        }
    }
}
