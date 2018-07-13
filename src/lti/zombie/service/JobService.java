package lti.zombie.service;

import java.util.List;

import lti.zombie.bean.JobBean;
import lti.zombie.bean.LoginBean;
import lti.zombie.bean.ProfileBean;
import lti.zombie.bean.UserBean;
import lti.zombie.bean.RequirementBean;

public interface JobService {

		UserBean authenticate(LoginBean login); //to validate the user
	    
		boolean persist(UserBean user); //for sign up purpose
	   
	    List <RequirementBean> getRecommendations (String email);
	    
	    List<RequirementBean> searchJob(String skill);
	    
	    boolean applyJob(JobBean job);
	    void saveJob(JobBean job);
	    List<String> getSkills();

	
}
