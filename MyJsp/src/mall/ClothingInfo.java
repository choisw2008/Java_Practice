package mall;

public class ClothingInfo extends ProductTnfo{
	private char size;
	private String color;
	public char getSize() {
		return size;
	}
	public void setSize(char size) {
		this.size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
	@Override
	public String toString() {
		return "ClothingInfo [size=" + size + ", color=" + color + "]";
	}
	
	
	
}
