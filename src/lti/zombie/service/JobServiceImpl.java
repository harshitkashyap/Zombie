package lti.zombie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import lti.zombie.bean.JobBean;
import lti.zombie.bean.LoginBean;
import lti.zombie.bean.UserBean;
import lti.zombie.repo.JobRepository;
import lti.zombie.bean.RequirementBean;

@Component
public class JobServiceImpl implements JobService {

	@Autowired
	private JobRepository repo;

	@Override
	public UserBean authenticate(LoginBean login) {

		UserBean user = repo.validate(login);
		return user;
	}

	@Override
	public boolean persist(UserBean user) {
		boolean flag = repo.save(user);
		return flag;
	}

	@Override
	public List<RequirementBean> getRecommendations(String email) {
		// TODO Auto-generated method stub
		return repo.getRecommendations(email);
	}

	@Override
	public List<RequirementBean> searchJob(String skill) {
		// TODO Auto-generated method stub
		return repo.search(skill);
	}

	@Override
	public boolean applyJob(JobBean job) {
		// TODO Auto-generated method stub
		if (repo.jobStatus(job)) {
			return false;
		} else {
			repo.saveJob(job);
			return true;
		}

	}

	@Override
	public void saveJob(JobBean job) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<String> getSkills() {
		List<String> skills = repo.getSkills();
		System.out.println(skills);
		return skills;
	}
}