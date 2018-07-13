package lti.zombie.repo;

import java.util.List;

import lti.zombie.bean.JobBean;
import lti.zombie.bean.LoginBean;
import lti.zombie.bean.UserBean;
import lti.zombie.bean.RequirementBean;

public interface JobRepository {

	UserBean validate(LoginBean login);

	boolean save(UserBean user);

	List<RequirementBean> getRecommendations(String email);
	
	List<RequirementBean> search(String skill);

	boolean jobStatus(JobBean job);

	List <String> getSkills();

	void saveJob(JobBean job);
	

}
