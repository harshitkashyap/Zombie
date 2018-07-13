package lti.zombie.repo;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lti.zombie.bean.JobBean;
import lti.zombie.bean.LoginBean;
import lti.zombie.bean.UserBean;
import lti.zombie.bean.RequirementBean;

@Repository
public class JobRepositoryImpl implements JobRepository {

	@Autowired
	private SessionFactory factory;

	@Override
	public UserBean validate(LoginBean login) {
		Session session= factory.getCurrentSession();
		UserBean user=(UserBean) session.get(UserBean.class, login.getEmail());
		if(user!=null && user.getPassword().equals(login.getPassword()));
		  return user;
		
	}

	@Override
	public List<RequirementBean> getRecommendations(String email) {
		String hql = "from Requirements where skill= ? and type=? and location=? and experience=? and sal_exp=?";
		Session session = factory.openSession();
		UserBean user = (UserBean) session.get(UserBean.class, email);

		Query query = session.createQuery(hql);
		query.setParameter(1, user.getSkill());
		query.setParameter(2, user.getRole());
		query.setParameter(3, user.getLocation());
		query.setParameter(4, user.getExpSalary());
		query.setParameter(5, user.getExperience());
		
		return query.list();

	}

	@Override
	public List<RequirementBean> search(String skill) {
		String hql = "from Requirements where skill=:skl";
		Session session = factory.openSession();

		Query query = session.createQuery(hql);
		query.setParameter("skl", skill);
		return query.list();
	}

	@Override
	public boolean save(UserBean user) {
		Session session = factory.openSession();
		Transaction txn= session.getTransaction();
		try {
		txn.begin();
			session.save(user);
			txn.commit();
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean jobStatus(JobBean job) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void saveJob(JobBean job) {
		Session session= factory.openSession();
		session.save(job);
		
		
	}

	@Override
	public List<String> getSkills() {
	Session session=factory.openSession();
	Query query=session.createQuery("select skill from RequirementBean");
	return query.list();
		
	}

}
