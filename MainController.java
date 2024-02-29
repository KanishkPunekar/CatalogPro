package productcrudapp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.Dao.ProductDao;
import productcrudapp.Dao.loginDao;
import productcrudapp.model.Product;
import productcrudapp.model.login;

@Controller
public class MainController {
	@Autowired
	private ProductDao productDao;
	@Autowired
	private loginDao ld;
	
	
	@RequestMapping("/")
	public String login(Model m)
	{
		return "login";
	}
	//handeler for login page
	
	@RequestMapping(value = "/handelLogin",method = RequestMethod.POST)
	public RedirectView handelLogin(@ModelAttribute login lg,HttpServletRequest request)
	{
		System.out.println(lg);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/home");
		return redirectView;
		
	}
	
	//opening create account
	@RequestMapping("/create_account")
	public String createAccount()
	{
		return "create_account";
	}
	//handeler to create form
	@RequestMapping(value = "/register",method = RequestMethod.POST)
	public RedirectView handelCreateAccount(@ModelAttribute login lg,HttpServletRequest request)
	{
		System.out.println(lg);
		ld.setEntries(lg);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;		
	}
	
	@RequestMapping("/home")
	public String home(Model m)
	{
		List<Product> products = productDao.getProducts();
		m.addAttribute("products",products);
		return "index";
	}
	//add product form
	@RequestMapping("/add-product")
	public String addProduct(Model m)
	{
		m.addAttribute("title","Add Product");
		
		return "add_product_form";
	}
	
	//handle add product form
	@RequestMapping(value = "/handle-product",method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request)
	{
		System.out.println(product);
		productDao.createProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/home");
		return redirectView;
	}
	
	//handeler to delete
	@RequestMapping("/delete/{Id}")
	public RedirectView deleteProduct(@PathVariable("Id") int productId,HttpServletRequest request)
	{
		
		this.productDao.deleteProduct(productId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/home");
		return redirectView;
		
	}
	
	@RequestMapping("/update/{pid}")
	public String updateForm(@PathVariable("pid") int pid,Model m)
	{
		Product product = this.productDao.getProduct(pid);
		m.addAttribute("product",product);
		return "update_form";
	}
	

}
