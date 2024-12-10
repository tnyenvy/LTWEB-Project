package vn.iotstar.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import vn.iotstar.entity.Product;
import vn.iotstar.services.ProductService;

@Controller
public class LoginController {
	
	@Autowired
	private ProductService services;
	
	@PostMapping("/login_success_handler")
	public String loginSuccessHandler() {
		System.out.println("Logging user login success...");
		
		return "admin/product/list";
	}
	
	@PostMapping("/login_failure_handler")
	public String loginFailerHandler() {
		System.out.println("Login failure handler...");
		
		return "login";
	}
	
	@RequestMapping("/")
	public String viewHomePage(Model model) {
		List<Product> listProducts = services.findAll();
		model.addAttribute("listProducts", listProducts);
	
		return "admin/product/list";
	}
	
	@RequestMapping("/add")
	public String showNewProductForm(Model model, @ModelAttribute("product") Product product) {
		model.addAttribute("product", product);
	
		return "admin/product/add";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute("product") Product product) {
		services.save(product);
	
		return "redirect:/";
	}
	
	@RequestMapping("/edit/{id}")
	public ModelAndView showEditProductForm(@PathVariable(name = "id") Long id) {
		ModelAndView mav = new ModelAndView("edit_product");
		
		Product product = services.findById(id).get();
		mav.addObject("product", product);
	
		return mav;
	}
	
	@RequestMapping("/delete/{id}")
	public String deleteProduct(@PathVariable(name = "id") Long id) {
		services.deleteById(id);
	
		return "redirect:/";
	}
	
}
