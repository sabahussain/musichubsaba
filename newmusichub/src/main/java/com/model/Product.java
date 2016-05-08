package com.model;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name="Product")
public class Product {
	 @Id
	 @GeneratedValue(strategy=GenerationType.AUTO)
	int id;
	String name;
	String brand;
	String description;
	String price;
	String category;
	public Product()
	{
		
	}
	public Product(String name, String brand, String description, String price, String category) {
		super();
		this.name = name;
		this.brand = brand;
		this.description = description;
		this.price = price;
		this.category = category;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", brand=" + brand + ", description=" + description + ", price="
				+ price + ", category=" + category + "]";
	}
	
	

}
