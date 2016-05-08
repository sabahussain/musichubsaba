package com.admincontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Product;
import com.service.MyService;

@Controller
public class AdminController {
	@Autowired
	MyService ms;
  	
	
	 @RequestMapping("/admin")
	    public String listproduct(Model model) {
	        model.addAttribute("product", new Product());
	        model.addAttribute("listproduct", ms.listProduct());
	        return "admin";
	    }

	 @RequestMapping(value= "/admin/add")
	    public String addProduct(@ModelAttribute("product") Product p){
	         
	        if(p.getId() == 0){
	           ms.addProduct1(p);	      
	           }else{
	            ms.updateProduct(p);
	        }
	         
	        return "redirect:/admin";
	         
	    }
	     
	    @RequestMapping("/remove/{id}")
	    public String removePerson(@PathVariable("id") int id){
	         
	      ms.removeProduct(id);
	        return "redirect:/admin";
	    }
	  
	    @RequestMapping("/edit/{id}")
	    public String editPerson(@PathVariable("id") int id, Model model){
	    	model.addAttribute("product", ms.getProductById(id));
	        model.addAttribute("listproduct", ms.listProduct());
	        return "admin";
	    }
	     
	   
	}
	
