package vn.iotstar.service;

import vn.iotstar.dto.SubcribeSearchModel;
import vn.iotstar.entity.Subcribe;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.mail.*;
import javax.mail.internet.*;
import javax.transaction.Transactional;
import java.io.IOException;
import java.util.Date;
import java.util.Properties;

@Service
public class SubcribeService extends BaseService<Subcribe> {

	@Override
	protected Class<Subcribe> clazz() {
		// TODO Auto-generated method stub
		return Subcribe.class;
	}

	public PagerData<Subcribe> search(SubcribeSearchModel searchModel) {
		String sql = "SELECT * FROM tbl_subcribe p WHERE 1=1";

		if (searchModel != null) {
			if (!StringUtils.isEmpty(searchModel.keyword)) {
				sql += " and (p.email like '%" + searchModel.keyword + "%')";
			}
		}
		return executeByNativeSQL(sql, searchModel == null ? 0 : searchModel.getPage());
	}

	@Transactional
	public void delete(Subcribe subscribe) {
		delete(subscribe);
	}

	private void sendmail() throws AddressException, MessagingException, IOException {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");

		Session session = Session.getInstance(props, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("tutorialspoint@gmail.com", "<your password>");
			}
		});
		Subcribe subcribe = new Subcribe();
		Message msg = new MimeMessage(session);
		msg.setFrom(new InternetAddress(subcribe.getEmail(), false));

		msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(subcribe.getEmail()));
		msg.setSubject("Subject: Đăng ký thành công");
		msg.setContent("Chào bạn " + subcribe.getEmail() + ",<br/>Cảm ơn bạn đã đăng ký!", "text/html");
		msg.setSentDate(new Date());

		MimeBodyPart messageBodyPart = new MimeBodyPart();
		messageBodyPart.setContent("Tutorials point email", "text/html");

		Multipart multipart = new MimeMultipart();
		multipart.addBodyPart(messageBodyPart);
		MimeBodyPart attachPart = new MimeBodyPart();

		attachPart.attachFile("/var/tmp/image19.png");
		multipart.addBodyPart(attachPart);
		msg.setContent(multipart);
		Transport.send(msg);
	}
}
