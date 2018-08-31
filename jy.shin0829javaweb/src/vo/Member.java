package vo;

import java.util.*;

public class Member {
	protected int num;
	protected String name;
	protected int age;
	protected boolean gender;
	protected String phone;
	protected String location;
	protected Date birthday;
	

	
	
	public Member(int num, String name, int age, boolean gender, String phone, String location, Date birthday) {
		super();
		this.num = num;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.phone = phone;
		this.location = location;
		this.birthday = birthday;
	}

	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	@Override
	public String toString() {
		return "Member [num=" + num + ", name=" + name + ", age=" + age + ", gender=" + gender + ", phone=" + phone
				+ ", location=" + location + ", birthday=" + birthday + "]";
	}
	
//접근자 메소드 
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public boolean isGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	
}
