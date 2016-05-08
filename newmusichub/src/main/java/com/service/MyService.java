package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;
import com.dao.ProductDAOImpl;
import com.model.Product;

@Service
@Transactional
public class MyService
{
	@Autowired
	ProductDAOImpl d;

	public void addProduct1(Product p)
	{
	 d.addProduct(p);
	}
	public List<Product> listProduct()
	{
		return d.getAllProducts();
	}
	
	    public void updateProduct(Product p) {
	       d.updateProduct(p);
	    }
	
	    public Product getProductById(int id) {
	       return  d.getProductById(id);
	    }
	 
	    public void removeProduct(int id) {
	        d.removeProduct(id);
	    }
	 
}