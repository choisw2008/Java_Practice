package mall;

public class ProductTnfo {
	private String code;
	private String name;
	private int value;
	
	public ProductTnfo() {}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return "ProductTnfo [code=" + code + ", name=" + name + ", value=" + value + "]";
	}
	
	
}
