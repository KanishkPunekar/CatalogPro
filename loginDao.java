package productcrudapp.Dao;

import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.model.login;

@Component
public class loginDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void setEntries(login lg)
	{
		this.hibernateTemplate.save(lg);
	}
	
			@SuppressWarnings("deprecation")
			@Transactional
			public login validateUser(String username,String password)
			{
				String sql = "from login where username=:nm password=:pwd";
				
				login ls = (login)this.hibernateTemplate.execute(s->{
					Query q = s.createQuery(sql);
					q.setString("nm", username);
					q.setString("pwd", password);
					return q.uniqueResult();
				});
				return ls;
			}
}
