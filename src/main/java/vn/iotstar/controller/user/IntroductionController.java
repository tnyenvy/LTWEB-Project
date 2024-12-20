package vn.iotstar.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import vn.iotstar.controller.BaseController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class IntroductionController extends BaseController {
	
	@RequestMapping(value = { "/introduction" }, method = RequestMethod.GET)
	public String introView(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		
		return "khachhang/introduction";
	}

}
