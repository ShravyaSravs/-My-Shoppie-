package com.niit.shoppingcart.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.model.Category;

@Repository
public interface CategoryDAO {
	
	
	public Category get(int id);
	
	public List<Category> list();

	public boolean saveOrUpdate(Category category);
	
	public boolean delete(Category category);
		

}
