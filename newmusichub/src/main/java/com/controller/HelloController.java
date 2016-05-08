package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import com.service.MyService;
import com.model.Product;


@Controller
public class HelloController {
	@Autowired
	MyService ms;
	
	@RequestMapping("/")
	public ModelAndView helloUser1()
	{
		ModelAndView m=new ModelAndView("index");
		return m;
	}
	
	@RequestMapping("/register")
	public ModelAndView helloUser2()
	{
		ModelAndView m=new ModelAndView("register");
		return m;
	}
	@RequestMapping("/signin")
	public ModelAndView helloUser3()
	{
		ModelAndView m=new ModelAndView("signin");
		return m;
	}
	@RequestMapping("/welcome")
	public ModelAndView helloUser4()
	{
		ModelAndView m=new ModelAndView("hellopage");
		return m;
	}
	/*@RequestMapping("/products")
	public ModelAndView helloUser5()
	{
		ModelAndView m1=new ModelAndView("products");
		MyService ms=new MyService();
		Gson g=new Gson();
		ms.addProductInList("104", "tabla", "Amaze", "Available in muticolor", "5000", "Tabla");
		String jsonstring=g.toJson(ms);
		System.out.println(jsonstring);
		m1.addObject("list",jsonstring);
		return m1;
	}*/
	
	/*@RequestMapping("/products")
	public ModelAndView m1(){
		ModelAndView model=new ModelAndView("products");
		Gson g=new Gson();
		Product pr=new Product("104", "tabla", "Amaze", "Available in muticolor", "5000", "Tabla");
		 this.ms.addProduct1(pr);
		 String jsonstring=g.toJson(ms);
			System.out.println(jsonstring);
			model.addObject("list",jsonstring);
        model.addObject("listProducts", this.ms.listProduct());
        return model;
    }
	*/ 
	@RequestMapping("/productdetails")
	public ModelAndView helloUser6(@ModelAttribute("p1") Product p1)
	{
		ModelAndView m=new ModelAndView("productdetails");
		System.out.println(p1.getId());
		return m;
	}
	@RequestMapping("/products")
	public ModelAndView m2()
	{
		Product pr=new Product("tabla", "Amaze", "Available in muticolor", "5000", "Tabla");
		ms.addProduct1(pr);
		List<Product> p=ms.listProduct();
		Gson g=new Gson();
		String json=g.toJson(p);
		System.out.println(json);
		String listproduct=json.toString();
		return new ModelAndView("products","listproduct",listproduct);
	}
	
	@RequestMapping("/products/productinfo")
	public ModelAndView m4(@ModelAttribute("prod")Product prod)
	{
		return new ModelAndView("productinfo");
	}
	

}

