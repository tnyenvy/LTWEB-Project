package vn.iotstar.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import vn.iotstar.controller.BaseController;
import vn.iotstar.dto.ProductSearchModel;
import vn.iotstar.entity.Categories;
import vn.iotstar.service.CategoriesService;
import vn.iotstar.service.ProductService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class CollectionController extends BaseController {

	private final ProductService productService;
	
	private final CategoriesService categoriesService;

	public CollectionController(ProductService productService, CategoriesService categoriesService) {
		this.productService = productService;
		this.categoriesService = categoriesService;
	}

	@RequestMapping(value = { "/collection" }, method = RequestMethod.GET)
	public String cartView(final Model model, final HttpServletRequest request, final HttpServletResponse response
			) throws IOException {
		ProductSearchModel searchModel = new ProductSearchModel();
		searchModel.keyword = request.getParameter("keyword");

		model.addAttribute("productsWithPaging", productService.search(searchModel));
		model.addAttribute("searchModel", searchModel);
		return "khachhang/collection";
	}

	@RequestMapping(value = { "/collection/{categoryId}" }, method = RequestMethod.GET)
	public String cart(final Model model, final HttpServletRequest request, final HttpServletResponse response,
			@PathVariable("categoryId") int categoryId) throws IOException {

		Categories categories = categoriesService.getById(categoryId);
		model.addAttribute("categories", categoryId);

		return "khachhang/collection";
	}

}
