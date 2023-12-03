package com.Hospitoolity.Jobs.login;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class LoginController {

	@GetMapping(value="/")
	public String gotoWelcomePage(ModelMap model) {
		return "welcome";
	}
	
	@GetMapping(value="/contact")
	public String gotoContactUs(ModelMap model) {
		return "contact";
	}
	
	@GetMapping(value="/thanksmail")
	public String gotoSendMail(ModelMap model) {
		return "thanksmail";
	}
	
	@GetMapping(value="/portfolio")
	public String gotoJobsPage(ModelMap model) {
		return "portfolio";
	}
	@GetMapping(value="/test")
	public String gotoTest(ModelMap model) {
		return "test";
	}
	
}