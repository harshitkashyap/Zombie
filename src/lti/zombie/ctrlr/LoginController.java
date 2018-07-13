package lti.zombie.ctrlr;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import lti.zombie.bean.LoginBean;
import lti.zombie.bean.UserBean;
import lti.zombie.service.JobService;

@Controller
public class LoginController {

	@Autowired
	private JobService service;

	@RequestMapping(value = "signin.job", method = RequestMethod.POST)
	public String signin(LoginBean login, HttpSession session) {
		UserBean user = service.authenticate(login);
		if (user != null) {
			session.setAttribute("User", user);
			session.setAttribute("skills", service.getSkills());
			// mav.addObject("skills",service.getSkills());
			return "profile";
		} else
			return "home";
	}

}
