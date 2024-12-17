package vn.iotstar.controller.admin;

import vn.iotstar.controller.BaseController;
import vn.iotstar.dto.UserSearchModel;
import vn.iotstar.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class AdminUserController extends BaseController{

	private final UserService userService;

	public AdminUserController(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping(value = { "/admin/user/list","/admin/user" }, method = RequestMethod.GET)
	public String adminProductList(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		
		UserSearchModel searchModel = new UserSearchModel();
		searchModel.keyword = request.getParameter("keyword");
		searchModel.setPage(getCurrentPage(request));
		searchModel.roleId = super.getInteger(request, "roleId");
		
		model.addAttribute("userWithPaging", userService.search(searchModel));
		model.addAttribute("searchModel", searchModel);
		
		return "quantrivien/user";
	}

	

}
