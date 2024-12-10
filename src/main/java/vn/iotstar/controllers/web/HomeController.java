package vn.iotstar.controllers.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "web/dashboard/interface";
	}
	
	@RequestMapping(value = "/test_product", method = RequestMethod.GET)
	public String indextt() {
		return "admin/product/interface";
	}
	
	
}
