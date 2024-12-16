package vn.iotstar.controller.user;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import vn.iotstar.controller.BaseController;
import vn.iotstar.dto.ProductSearchModel;
import vn.iotstar.entity.Product;
import vn.iotstar.entity.Subcribe;
import vn.iotstar.service.PagerData;
import vn.iotstar.service.ProductService;
import vn.iotstar.service.SubcribeService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class HomeController extends BaseController {
	
	private final ProductService productService;
	
	private final SubcribeService subcribeService;

	public HomeController(ProductService productService, SubcribeService subcribeService) {
		this.productService = productService;
		this.subcribeService = subcribeService;
	}


	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {

		Subcribe subcribe = new Subcribe();
		model.addAttribute("subcribe", subcribe);
		
		ProductSearchModel searchModel = new ProductSearchModel();
		searchModel.keyword = request.getParameter("keyword");
		
		model.addAttribute("productsWithPaging", productService.search(searchModel));
		model.addAttribute("searchModel", searchModel);
		return "khachhang/index";
	}

	@RequestMapping(value = { "/ajax/home", "/"}, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_subcribe(final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response, 
			final @RequestBody Subcribe subcribe) {
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		model.addAttribute("subcribe", "");

		List<Subcribe> subcribes = subcribeService.checkEmailSubcribe(subcribe);
		if(subcribes.size() == 0) {
			subcribeService.saveOrUpdate(subcribe);
			jsonResult.put("code", 200);
			jsonResult.put("message", "Cảm ơn, " + subcribe.getEmail() + " đã đăng kí thành công!");
		} else {
			jsonResult.put("err", "Bạn chưa nhập email / Trùng email");
		}

		return ResponseEntity.ok(jsonResult);
	}
	
	@RequestMapping(value = { "/product/details/{productSeo}"}, method = RequestMethod.GET)
	public String productDetails(final Model model, final HttpServletRequest request, final HttpServletResponse response,
			@PathVariable("productSeo") String productSeo)
			throws IOException {
		
		ProductSearchModel searchModel = new ProductSearchModel();
		searchModel.seo = productSeo;
		
		PagerData<Product> products = productService.search(searchModel);
		Product product = products.getData().get(0);
		
		model.addAttribute("product", product);
		return "khachhang/details";
	}
}
