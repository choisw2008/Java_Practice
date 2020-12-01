package mall;

//개인정보 자바빈(beans, DTO: data Transfer object, VO:value object)
public class PersonalInfo {
	private String name;
	private char gender;
	private int age;

	public PersonalInfo(){}//기본 생성자
	//getter, setter

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return "PersonalInfo [name=" + name + ", gender=" + gender + ", age=" + age + "]";
	}
	
}
