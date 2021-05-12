package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	private static ProductRepository instance = new ProductRepository();
	
	public ProductRepository() {
		Product phone = new Product("P1234", "iphone 6s", 800000);
		phone.setDescription("4.7-inch, 13334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000L);
		phone.setCategory("CellPhone");
		phone.setCondition("New");
		phone.setFilename("P1234.jpg");
		
		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000L);
		notebook.setCategory("NoteBook");
		notebook.setCondition("Refurbished");
		notebook.setFilename("P1235.jpg");
		
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000L);
		tablet.setCategory("Tablet PC");
		tablet.setCondition("Old");
		tablet.setFilename("P1236.jpg");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);		
	}
	
	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductByID(String productId) {
		Product productById = null;
		
		for(int i=0; i<listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if(product != null && product.getProductId() != null &&
					product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
	
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public void addProduct(Product product) {
		listOfProducts.add(product);
	}
}
