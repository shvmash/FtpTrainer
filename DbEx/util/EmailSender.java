package com.hexaware.ftp08.util;

import java.util.Properties;
import javax.mail.Session;
import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.MessagingException;
import javax.mail.Transport;

/**
 * class EmailSender.
 */
public final class EmailSender {

  private EmailSender() {

  }
  /**
   * @param toEmail initialize email id.
   * @param message initialize message
   */
  public static void sendEmail(final String toEmail, final String message) {
    System.out.println("gone");
    Properties properties = System.getProperties();
    properties.setProperty("mail.smtp.host", "smtp.gmail.com");
    properties.setProperty("mail.smtp.port", "587");
    properties.setProperty("mail.smtp.auth", "true");
    properties.setProperty("mail.smtp.starttls.enable", "true");
    properties.setProperty("mail.transport.protocol", "smtp");

    Session session = Session.getInstance(properties, new MailAuthenticator());

    MimeMessage mimeMessage = new MimeMessage(session);

    try {
      mimeMessage.setFrom(new InternetAddress("wrestlingmania9@gmail.com"));
      mimeMessage.setSubject("Email Verification");
      mimeMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
      mimeMessage.setContent(message, "text/html");
      Transport.send(mimeMessage);
    } catch (MessagingException e) {
      e.printStackTrace();
    }
  }
}

/**
 * class MailAuthenticator.
 */
class MailAuthenticator extends Authenticator {
  /**
   * @return String value.
   */
  public PasswordAuthentication getPasswordAuthentication() {
    return new PasswordAuthentication("wrestlingmania9@gmail.com", "shubham88787566");
  }
}

