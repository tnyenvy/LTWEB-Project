package vn.iotstar.controller.admin;

import vn.iotstar.controller.BaseController;
import vn.iotstar.dto.ContactSearchModel;
import vn.iotstar.repository.ContactRepository;
import vn.iotstar.service.ContactService;
import vn.iotstar.service.IContactService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class AdminContactController extends BaseController{
	
	private final ContactService contactService;

	public AdminContactController(ContactService contactService, IContactService iContactService, ContactRepository contactRepository) {
		this.contactService = contactService;
		this.iContactService = iContactService;
		this.contactRepository = contactRepository;
	}

	private final IContactService iContactService;

	private final ContactRepository contactRepository;

	@RequestMapping(value = { "/admin/contact" }, method = RequestMethod.GET)
	public String adminContact(final Model model, final HttpServletRequest request,
			final HttpServletResponse response) throws IOException {
		
		ContactSearchModel searchModel = new ContactSearchModel();
		searchModel.keyword = request.getParameter("keyword");
		searchModel.setPage(getCurrentPage(request));
		
		model.addAttribute("contactWithPaging", contactService.search(searchModel));
		model.addAttribute("searchModel", searchModel);

		return "quantrivien/contact";
	}

	@GetMapping ("/delete-contact/{id}")
	public String deleteContact(@PathVariable("id") Integer id) {
		contactRepository.deleteById(id);
		return "redirect:/admin/contact";
	}
}
