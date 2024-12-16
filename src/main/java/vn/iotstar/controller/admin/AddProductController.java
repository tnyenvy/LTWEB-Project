package vn.iotstar.controller.admin;

import vn.iotstar.controller.BaseController;
import vn.iotstar.dto.AddProduct;
import vn.iotstar.dto.ProductSearchModel;
import vn.iotstar.entity.Categories;
import vn.iotstar.entity.Product;
import vn.iotstar.repository.ProductRepository;
import vn.iotstar.service.CategoriesService;
import vn.iotstar.service.ProductService;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Controller
public class AddProductController extends BaseController {

    private final ProductService productService;

    private final CategoriesService categoriesService;

    private final ProductRepository productRepository;

    public AddProductController(ProductService productService, CategoriesService categoriesService, ProductRepository productRepository) {
        this.productService = productService;
        this.categoriesService = categoriesService;
        this.productRepository = productRepository;
    }


    @RequestMapping(value = {"/admin/product/list", "/admin/product"}, method = RequestMethod.GET)
    public String adminProductList(final Model model, final HttpServletRequest request,
                                   final HttpServletResponse response) throws IOException {

        ProductSearchModel searchModel = new ProductSearchModel();
        searchModel.keyword = request.getParameter("keyword");
        searchModel.setPage(getCurrentPage(request));
        searchModel.categoryId = super.getInteger(request, "categoryId");

        model.addAttribute("productsWithPaging", productService.search(searchModel));
        model.addAttribute("searchModel", searchModel);

        return "quantrivien/product";
    }

    @RequestMapping(value = {"/admin/product/add-product"}, method = RequestMethod.GET)
    public String admin_add(final Model model, final HttpServletRequest request, final HttpServletResponse response)
            throws IOException {

        model.addAttribute("add", new Product());

        return "quantrivien/add-product";
    }

    @RequestMapping(value = {"/admin/product/add-product/{productId}"}, method = RequestMethod.GET)
    public String adminProductEdit(final Model model, @PathVariable("productId") int productId) throws IOException {
        Product product = productService.getById(productId);
        model.addAttribute("add", product);

        return "quantrivien/add-product";
    }

    @GetMapping("/delete/{id}")
    public String adminDelete(@PathVariable("id") Integer id) {

        productRepository.deleteById(id);
        return "redirect:/admin/product";
    }


    @RequestMapping(value = {"/admin/product/add-product"}, method = RequestMethod.POST)
    public String admin_addpost_spring_form(final Model model, final HttpServletRequest request,
                                            final HttpServletResponse response, final @ModelAttribute("add") Product product,
                                            @RequestParam("productAvatar") MultipartFile productAvatar, // hứng file đẩy lên
                                            @RequestParam("productPictures") MultipartFile[] productPictures) throws Exception { // hứng file đẩy lên)

        if (product.getId() == null || product.getId() <= 0) {
            productService.add(product, productAvatar, productPictures);
            productService.saveOrUpdate(product);
            return "redirect:/admin/product";
        }
        productService.update(product, productAvatar, productPictures);

        return "redirect:/admin/product";
    }

    @RequestMapping(value = {"/ajax/add-product"}, method = RequestMethod.POST)
    public ResponseEntity<Map<String, Object>> ajax_contact( final @RequestBody AddProduct add) {
        Map<String, Object> jsonResult = new HashMap<String, Object>();
        jsonResult.put("code", 200);
        jsonResult.put("message", "Cảm ơn, bạn đã thêm " + add.getTenSP() + " thành công!");
        return ResponseEntity.ok(jsonResult);
    }

    @RequestMapping(value = {"/admin/product/add-category"}, method = RequestMethod.GET)
    public String admin_add_category(final Model model, final HttpServletRequest request, final HttpServletResponse response)
            throws IOException {

        Categories addCate = new Categories();
        model.addAttribute("addCate", addCate);

        return "quantrivien/add-category";
    }


    @RequestMapping(value = {"/admin/product/add-category"}, method = RequestMethod.POST)
    public String admin_add_spring_form(final Model model, final HttpServletRequest request,
                                        final HttpServletResponse response, final @ModelAttribute("addCate") Categories categories
    ) throws Exception {
        categoriesService.saveOrUpdate(categories);

        return "redirect:/admin/product";

    }

}
