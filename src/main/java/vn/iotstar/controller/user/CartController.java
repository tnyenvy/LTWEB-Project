package vn.iotstar.controller.user;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import vn.iotstar.controller.BaseController;
import vn.iotstar.dto.Cart;
import vn.iotstar.dto.CartItem;
import vn.iotstar.entity.Product;
import vn.iotstar.entity.Saleorder;
import vn.iotstar.entity.SaleorderProducts;
import vn.iotstar.entity.User;
import vn.iotstar.service.ProductService;
import vn.iotstar.service.SaleorderService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class CartController extends BaseController {

	private final ProductService productService;

	private final SaleorderService saleOrderService;

	public CartController(ProductService productService, SaleorderService saleOrderService) {
		this.productService = productService;
		this.saleOrderService = saleOrderService;
	}

	@RequestMapping(value = { "/cart/checkout" }, method = RequestMethod.POST)
	public String cartFinish(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {

		String customerFullName = request.getParameter("customer_name");
		String customerAddress = request.getParameter("customer_address");
		String customerEmail = request.getParameter("customer_email");
		String customerPhone = request.getParameter("customer_phone");

		Saleorder saleOrder = new Saleorder();

		if(super.isLogined()) {
			User userLogined = super.getUserLogined();
			saleOrder.setUser(userLogined);
			saleOrder.setCustomer_name(userLogined.getUsername());
			saleOrder.setCustomer_email(userLogined.getEmail());
			saleOrder.setCustomer_address(userLogined.getAddress());
		} else {
			saleOrder.setCustomer_name(customerFullName);
			saleOrder.setCustomer_email(customerEmail);
			saleOrder.setCustomer_address(customerAddress);
			saleOrder.setCustomer_phone(customerPhone);
		}

		saleOrder.setCode(String.valueOf(System.currentTimeMillis()));

		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		if(cart != null) {
			for (CartItem cartItem : cart.getCartItems()) {
				SaleorderProducts saleOrderProducts = new SaleorderProducts();
				saleOrderProducts.setProduct(productService.getById(cartItem.getProductId()));
				saleOrderProducts.setQuality(cartItem.getQuanlity());

				saleOrder.addSaleOrderProducts(saleOrderProducts);
			}
		}

		saleOrderService.saveOrUpdate(saleOrder);

		session.setAttribute("cart", null);
		session.setAttribute("totalItems", "0");

		return "redirect:/home";
	}

	@RequestMapping(value = { "/cart/view" }, method = RequestMethod.GET)
	public String cartView(final Model model, final HttpServletRequest request,
						   @RequestParam(defaultValue = "1") int page,
						   @RequestParam(defaultValue = "5") int size) {
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");

		if (cart != null) {
			List<CartItem> cartItems = cart.getCartItems();

			// Pagination logic
			int start = (page - 1) * size;
			int end = Math.min(start + size, cartItems.size());

			List<CartItem> paginatedItems = cartItems.subList(start, end);

			model.addAttribute("cartItems", paginatedItems);
			model.addAttribute("currentPage", page);
			model.addAttribute("totalPages", (int) Math.ceil((double) cartItems.size() / size));
			model.addAttribute("totalItems", cartItems.size());
		} else {
			model.addAttribute("cartItems", List.of());
			model.addAttribute("currentPage", 1);
			model.addAttribute("totalPages", 1);
			model.addAttribute("totalItems", 0);
		}

		return "khachhang/cart"; // Redirect to cart.jsp
	}


	@GetMapping("cart/remove/{productId}")
	public String removeProduct(final HttpServletRequest request, @PathVariable("productId") int productId) {
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		List<CartItem> cartItem = cart.getCartItems();
		Product product = productService.getById(productId);

		var index = 0;
		for (int i = 0; i < cartItem.size();i++) {
			if(cartItem.get(i).getProductId() == productId) {
				index = i;
				break;
			}
		}
		cartItem.remove(index);
		this.calculateTotalPrice(request);
		return "redirect:/cart/view";
	}

	@RequestMapping(value = { "/ajax/updateQuanlityCart" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_UpdateQuanlityCart(final Model model, final HttpServletRequest request,
																	   final HttpServletResponse response, final @RequestBody CartItem cartItem) {

		HttpSession session = request.getSession();

		Cart cart = null;
		if (session.getAttribute("cart") != null) {
			cart = (Cart) session.getAttribute("cart");
		} else {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}

		List<CartItem> cartItems = cart.getCartItems();

		int currentProductQuality = 0;
		for (CartItem item : cartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				currentProductQuality = item.getQuanlity() + 1;
				item.setQuanlity(currentProductQuality);
			}
		}

		this.calculateTotalPrice(request);

		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		jsonResult.put("currentProductQuality", currentProductQuality);

		session.setAttribute("totalItems", getTotalItems(request));
		return ResponseEntity.ok(jsonResult);
	}

	@RequestMapping(value = { "/ajax/truQuanlityCart" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_TruQuanlityCart(final Model model, final HttpServletRequest request,
																	final HttpServletResponse response, final @RequestBody CartItem cartItem) {

		HttpSession session = request.getSession();

		Cart cart = null;
		if (session.getAttribute("cart") != null) {
			cart = (Cart) session.getAttribute("cart");
		} else {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}

		List<CartItem> cartItems = cart.getCartItems();

		int ciProductQuality = 0;
		for (CartItem item : cartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				ciProductQuality = item.getQuanlity() - 1;
				item.setQuanlity(ciProductQuality);
			}
		}

		this.calculateTotalPrice(request);

		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));
		jsonResult.put("ciProductQuality", ciProductQuality);

		session.setAttribute("totalItems", getTotalItems(request));
		return ResponseEntity.ok(jsonResult);
	}


	@RequestMapping(value = { "/ajax/addToCart" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_AddToCart(final Model model, final HttpServletRequest request,
															  final HttpServletResponse response, final @RequestBody CartItem cartItem) {

		HttpSession session = request.getSession();

		Cart cart = null;
		if (session.getAttribute("cart") != null) {
			cart = (Cart) session.getAttribute("cart");
		} else {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}

		List<CartItem> cartItems = cart.getCartItems();

		boolean isExists = false;
		for (CartItem item : cartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				isExists = true;
				item.setQuanlity(item.getQuanlity() + cartItem.getQuanlity());
			}
		}

		if (!isExists) {
			Product productInDb = productService.getById(cartItem.getProductId());

			cartItem.setProductName(productInDb.getTitle());
			cartItem.setPriceUnit(productInDb.getPrice());

			cart.getCartItems().add(cartItem);
		}

		this.calculateTotalPrice(request);

		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("status", "TC");
		jsonResult.put("totalItems", getTotalItems(request));

		session.setAttribute("totalItems", getTotalItems(request));
		return ResponseEntity.ok(jsonResult);
	}

	private int getTotalItems(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return 0;
		}

		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();

		int total = 0;
		for (CartItem item : cartItems) {
			total += item.getQuanlity();
		}

		return total;
	}

	private void calculateTotalPrice(final HttpServletRequest request) {

		HttpSession session = request.getSession();

		Cart cart = null;
		if (session.getAttribute("cart") != null) {
			cart = (Cart) session.getAttribute("cart");
		} else {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}

		List<CartItem> cartItems = cart.getCartItems();
		BigDecimal total = BigDecimal.ZERO;

		for(CartItem ci : cartItems) {
			total = total.add(ci.getPriceUnit().multiply(BigDecimal.valueOf(ci.getQuanlity())));
		}

		cart.setTotalPrice(total);
	}
}