package vn.iotstar.controllers.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/dashboard")
@Controller
public class DashBoardController {
	
	@GetMapping("/index")
	public String Index() {
		return "dashboard/index";
	}
	
	@GetMapping("/customer-edit")
	public String Edit() {
		return "dashboard/customer/edit";
	}
	
	@GetMapping("/customer")
	public String List() {
		return "dashboard/customer/list";
	}
	
	@GetMapping("/customer-create")
	public String New() {
		return "dashboard/customer/new";
	}
	
	@GetMapping("/orderlist")
	public String OrderList() {
		return "dashboard/order/i-orderlist";
	}
	
	@GetMapping("/ordersingle")
	public String OrderSingle() {
		return "dashboard/order/i-ordersingle";
	}
	
	@GetMapping("/review")
	public String Review() {
		return "dashboard/review/i-review";
	}
	
	@GetMapping("/vendor")
	public String Vendor() {
		return "dashboard/vendor/i-vendorgrid";
	}
	
}
