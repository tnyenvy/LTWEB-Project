package vn.iotstar.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@GetMapping
	public String login() {
		return "redirect:/admin/";
	}
	
	@RequestMapping("/home")
	public String index() {
		return "admin/home";
	}
	
}
