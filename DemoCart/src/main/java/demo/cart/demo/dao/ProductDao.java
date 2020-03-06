package demo.cart.demo.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import demo.cart.demo.bean.Products;

public class ProductDao {
	
	private List <Products> productList;
	
	public List <Products> getProductList(){
	     Products product1 = new Products();	     
	     product1.setProductName("Guitar");
	     product1.setProductCategory("Instrument");
	     product1.setProductDescription("This is a Fender Steel Guitar");
	     product1.setProductPrice(1000);
	     product1.setProductCondition("new");
	     product1.setProductStatus("Active");
	     product1.setUnitsInStock(11);
	     product1.setProductManufactor("Fender");
	     product1.setProductId("1");
	     productList = new ArrayList<Products>();	    
	     productList.add(product1);	     
		return productList;

	}
	
	public Products getProductById(String productId) throws IOException
	{		
		for(Products product:getProductList())
		{
			
			if(product.getProductId().equals(productId)) 
			{
				System.out.println(product.getProductId());
				return product;
			}			
		}		
		throw new IOException("no Products Found");		
	}
}