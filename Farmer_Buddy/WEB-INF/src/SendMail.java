package mailtome;

import java.security.Security;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail
{

private   String SMTP_HOST_NAME;
private   String SMTP_PORT = "465";
private String emailMsgTxt;
private   String emailSubjectTxt;
private   String emailFromAddress;
private   String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
private   String sendTo;
private  String password;

public SendMail(String hostname,String pass)
{
 SMTP_HOST_NAME=hostname;
 password=pass;
}



public void sendSSLMessage(String recipients, String subject,
String message, final String from) throws MessagingException {
boolean debug = true;

Properties props = new Properties();
 props.put("mail.smtp.starttls.enable","true");
props.put("mail.smtp.host", SMTP_HOST_NAME);
props.put("mail.smtp.auth", "true");
props.put("mail.debug", "true");
props.put("mail.smtp.port", SMTP_PORT);
props.put("mail.smtp.socketFactory.port", SMTP_PORT);
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
props.put("mail.smtp.socketFactory.fallback", "false");

Session session = Session.getDefaultInstance(props,new javax.mail.Authenticator() 
{
protected PasswordAuthentication getPasswordAuthentication() {
return new PasswordAuthentication(from,password);
}
});

session.setDebug(debug);

Message msg = new MimeMessage(session);
InternetAddress addressFrom = new InternetAddress(from);
msg.setFrom(addressFrom);

InternetAddress addressTo = new InternetAddress(recipients);
//for (int i = 0; i < recipients.length; i++) {
//addressTo[i] = new InternetAddress(recipients[i]);
//}
msg.setRecipient(Message.RecipientType.TO, addressTo);

msg.setSubject(subject);
msg.setContent(message, "text/plain");
Transport.send(msg);
}
}