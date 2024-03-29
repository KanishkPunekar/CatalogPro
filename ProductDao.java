package productcrudapp.Dao;

import java.util.List;

import javax.sound.sampled.Port;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;



import productcrudapp.model.Product;

@Component
public class ProductDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	//create method
	@Transactional
	public void createProduct(Product product)
	{
		this.hibernateTemplate.saveOrUpdate(product);
	}
	//get all products
	public List<Product> getProducts()
	{
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
		
	}
	//delete sing product
	@Transactional
	public void deleteProduct(int pid)
	{
		
		Product p = this.hibernateTemplate.load(Product.class,pid);
		this.hibernateTemplate.delete(p);
	}
	//get single product
	public Product getProduct(int pid)
	{
		Product p = this.hibernateTemplate.get(Product.class,pid);
		return p;
	}
	

}
