package vo;

public class Menu {
	protected String coffee;
	protected int price1;
	
	public String getCoffee() {
		return coffee;
	}
	public void setCoffee(String coffee) {
		this.coffee = coffee;
	}
	public int getPrice() {
		System.out.println("getPrice 호출");
		return price1;
	}
	public void setPrice(int price) {
		this.price1 = price;
	}
	
	
}
