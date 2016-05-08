package com.dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import java.util.*;

import org.hibernate.Transaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	 SessionFactory sessionFactory;
    public Session getSession()
    {
    	return sessionFactory.openSession();
    }

	public List<Product> getAllProducts() {
		
		 Session session = getSession();
		 
	        List<Product> pr = null;
	        Transaction t=session.beginTransaction();
	        Query q=session.createQuery("from Product");
	        pr=(List<Product>)q.list();
	        t.commit();
	        session.close();
	        return pr;
	        
	}

	public void addProduct(Product p) {
		Session session = getSession();
		Transaction t=session.beginTransaction();
		session.save(p);
	    t.commit();
        System.out.println("Saved successfully"+p);
		
	}

	public void updateProduct(Product p) {
		
		Session session = getSession();
		Transaction t=session.beginTransaction();
        session.update(p);
        t.commit();
        System.out.println("Product updated successfully, Product Details="+p);
	}

	public Product getProductById(int id) {
		
		Session session = getSession();
		Transaction t=session.beginTransaction();
	        Product p = (Product) session.load(Product.class, new Integer(id));
	        t.commit();
	        System.out.println("Product loaded successfully, Product details="+p);
	        return p;
	}

	public void removeProduct(int id) {
		Session session = getSession();
		Transaction t=session.beginTransaction();
		 Product p = (Product) session.load(Product.class, new Integer(id));
	            session.delete(p);
	            t.commit();
	        System.out.println("Product deleted successfully, product details="+p);
	}
	
 
	

}
