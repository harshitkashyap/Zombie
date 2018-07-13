package lti.zombie.ctrlr;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import lti.zombie.bean.UserBean;
import lti.zombie.service.JobService;

@Controller
@SessionAttributes({ "register" })
public class UserController {
	@Autowired
	private JobService service;

	@RequestMapping("doRegister.job")
	public String doRegistration(Map model) {
		model.put("register", new UserBean());
		return "register";
	}

	@RequestMapping(value = "doResume.job", method = RequestMethod.POST)
	public String doResume(@ModelAttribute("register") UserBean user) {
		System.out.println("-----Email: " + user.getEmail());
		return "resume";
	}

	@RequestMapping(value = "user.job", method = RequestMethod.POST)
	public String registration(@ModelAttribute("register") UserBean user) {
		System.out.println("---- Skill:" + user.getSkill());
		if (service.persist(user))
			return "home";
		else
			return "register";

	}
}
