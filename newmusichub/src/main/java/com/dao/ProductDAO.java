package com.dao;
import java.util.List;

import com.model.Product;

interface ProductDAO {
	public List<Product> getAllProducts();
	public void addProduct(Product p);
	public void updateProduct(Product p);
	public Product getProductById(int id);
    public void removeProduct(int id);
}
