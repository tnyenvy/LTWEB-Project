package vn.iotstar.controller.admin;

import vn.iotstar.controller.BaseController;
import vn.iotstar.dto.SubcribeSearchModel;
import vn.iotstar.repository.CheckEmailRepository;
import vn.iotstar.service.SubcribeService;
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
public class AdminSubcribeController extends BaseController {

    private final SubcribeService subcribeService;

    public AdminSubcribeController(SubcribeService subcribeService, CheckEmailRepository subscribeRepository) {
        this.subcribeService = subcribeService;
        this.subscribeRepository = subscribeRepository;
    }

    private final CheckEmailRepository subscribeRepository;

    @RequestMapping(value = {"/admin/subscribe"}, method = RequestMethod.GET)
    public String adminSubscribe(final Model model, final HttpServletRequest request,
                                final HttpServletResponse response) throws IOException {

        SubcribeSearchModel searchModel = new SubcribeSearchModel();
        searchModel.keyword = request.getParameter("keyword");
        searchModel.setPage(getCurrentPage(request));

        model.addAttribute("subscribeWithPaging", subcribeService.search(searchModel));
        model.addAttribute("searchModel", searchModel);

        return "quantrivien/subcribe";
    }

    @GetMapping("/delete-subscribe/{id}")
    public String deleteSubscribe(@PathVariable("id") Integer id) {
        subscribeRepository.deleteById(id);
        return "redirect:/admin/subscribe";
    }


}
