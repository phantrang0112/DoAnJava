package entities;

public class Item {
	Product product;
	String filter;
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public String getFilter() {
		return filter;
	}
	public void setFilter(String filter) {
		this.filter = filter;
	}
	public Item() {
		super();
	}
	public Item(Product product, String filter) {
		super();
		this.product = product;
		this.filter = filter;
	}

}
