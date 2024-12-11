package vn.iotstar.controllers.admin;

import java.util.List;
import java.util.Optional;
import java.util.UUID;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import jakarta.validation.Valid;
import vn.iotstar.entity.Product;
import vn.iotstar.model.ProductModel;
import vn.iotstar.services.ProductService;
import vn.iotstar.services.StorageService;

@Controller
public class DashboardController {
	
	@Autowired
	ProductService productService;
	
	@Autowired
	StorageService storageService;
	
	@GetMapping("/dashboard/index-admin")
	public String index() {
		return "dashboard/index-admin";
	}
	
	@GetMapping("/dashboard/products")
	public String products(Model model) {
		List<Product> list = productService.findAll();
		
		model.addAttribute("list", list);
		
		return "dashboard/products";
	}

	@GetMapping("/dashboard/add-product")
	public String add(Model model) {
		ProductModel product = new ProductModel();
		product.setIsEdit(false);
		
		model.addAttribute("product", product);
		
		return "dashboard/add-product";
	}
	
	@PostMapping("/dashboard/save")
	public ModelAndView SaveOrUpdate(ModelMap model, @Valid @ModelAttribute("product") ProductModel promodel, BindingResult result) {
		if (result.hasErrors()) {
			return new ModelAndView("dashboard/add-product");
		}
		
		Product entity = new Product();
		
		// Copy from Model to Entity
		BeanUtils.copyProperties(promodel, entity);
		
		if (!promodel.getImageFile().isEmpty()) {
			UUID uuid = UUID.randomUUID();
			String uuString = uuid.toString();
			//lưu file vào trường Images
			entity.setImages(storageService.getStorageFilename(promodel.getImageFile(), uuString));
			storageService.store(promodel.getImageFile(), entity.getImages());
		}

		// Call the Save function in Service
		productService.save(entity);
		
		// Return the message to the Message variable
		String message = "";
		
		if (promodel.getIsEdit() == true) {
			message = "Product is Edited";
		}
		else {
			message = "Product is Saved";
		}
		
		model.addAttribute("message", message);
		
		// Redirect về URL Controller
		return new ModelAndView("redirect:/dashboard/products", model);
	}
	
	@GetMapping("images/{filename:.+}")
	@ResponseBody
	public ResponseEntity<Resource> ServerFile(@PathVariable String filename) {
		Resource file = storageService.loadAsResource(filename);
		
		return ResponseEntity.ok().header(HttpHeaders.CONTENT_DISPOSITION,
				"attachment;filename=\"" + file.getFilename() + "\"").body(file);
	}
	
	@GetMapping("/dashboard/edit/{id}")
	public ModelAndView Edit(ModelMap model, @PathVariable("id") Long productid) {
		Optional<Product> optProduct = productService.findById(productid);
		ProductModel cateModel = new ProductModel();
		
		// Kiểm tra sự tồn tại của Product
		if (optProduct.isPresent()) {
			Product entity = optProduct.get();
			
			// Copy from Entity to CateModel
			BeanUtils.copyProperties(entity, cateModel);
			
			cateModel.setIsEdit(true);
			
			// Đẩy dữ liệu ra view
			model.addAttribute("product", cateModel);
			
			return new ModelAndView("dashboard/add-product", model);
		}
		
		model.addAttribute("message", "Product is not existed");
		
		return new ModelAndView("forward:/dashboard/products", model);
	}
	
	@GetMapping("/dashboard/delete/{id}")
	public ModelAndView Delete(ModelMap model, @PathVariable("id") Long productid) {
		productService.deleteById(productid);		
		
		model.addAttribute("message", "Product is deleted");
		
		return new ModelAndView("redirect:/dashboard/products", model);
	}
	
	@GetMapping("/dashboard/orders")
	public String orders() {
		return "dashboard/orders";
	}
	
	@GetMapping("/dashboard/orderdetail")
	public String orderdetail() {
		return "dashboard/orderdetail";
	}
	
	@GetMapping("/dashboard/vendors")
	public String vendor() {
		return "dashboard/vendors";
	}
	
	@GetMapping("/dashboard/customers")
	public String customers() {
		return "dashboard/customers";
	}
	
	@GetMapping("/dashboard/reviews")
	public String reviews() {
		return "dashboard/reviews";
	}
	
	@GetMapping("/dashboard/admininfo")
	public String admininfo() {
		return "dashboard/admininfo";
	}
	
}
