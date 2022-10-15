package tw.trista.flightticket.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.chitou.gmail.model.GmailService;
import tw.chitou.gmail.model.TemplateServices;
import tw.trista.flightticket.model.flightticketorder;
import tw.trista.flightticket.model.flightticketorderservice;

@Controller
@SessionAttributes("memberbasicinfo")
public class FlightTicketSentMailController {

	@Autowired
	JavaMailSender javaMailSender;
 	
 	@Autowired
 	GmailService gmailService;
 	
 	@Autowired
 	TemplateServices templateService;
 	
 	@Autowired
 	private flightticketorderservice ooService;
 	
 	String adminUrl="http://localhost:8080/chitou.flightticket";
 	
 	@PostMapping("/flightticket.mail")
	public String sendEmailFlightTicket(@RequestParam("lastname") String lastname){
 		List<flightticketorder> foder = ooService.findByLastname(lastname);
		
		String username = foder.get(0).getLastname();
		String email = foder.get(0).getEmailaddress();
		
//		寄信的人
		String fromEmail = "eeit49group1chitou@gmail.com";
//		群發到不同的人身上
		List<String> toEmaiList = new ArrayList<String>();
		toEmaiList.add(email);
		String subject="ChiTou訂機票";
//		輸入html文本格式
		String html= "<!DOCTYPE html>\r\n"
				+ "<html>\r\n"
				+ "<head>\r\n"
				+ "<meta charset=\"UTF-8\">\r\n"
				+ "<title>Insert title here</title>\r\n"
				+"<style>h4{color: #2A4C65;}</style>\r\n"
				+ "</head>\r\n"
				+ "<body>\r\n"
				+ "\r\n"
				+ "\r\n"
				+"<div style='text-align:center ;background-color: #F8E8D1;'>\r\n"
				+"<h4>親愛的"+username+"您好</h4>"
				+"<h4>◕‿◕ </h4>"
				+"<h4>您的航班已預訂成功</h4>"
				+"<h4>ChiTou旅遊感謝您的預訂</h4><h4>如果您對於航班有任何疑問,請聯絡ChiTou</h4>"
				+"<h4>✧*｡ ٩(ˊᗜˋ*)و✧*｡</h4>"
				+"</div>\r\n"
				+ "\r\n"
				+ "</body>\r\n"
				+ "</html>";
		gmailService.mimemail(fromEmail, toEmaiList, subject, html);
		return "redirect:"+adminUrl;
	}
}
