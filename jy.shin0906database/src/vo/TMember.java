package vo;

import java.util.Date;

public class TMember {
protected String email;
protected String pw;
protected String name;
protected String phone;
//protected Date birthday;
//protected int gender;

public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPw() {
	return pw;
}
public void setPw(String pw) {
	this.pw = pw;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
/*
public Date getBirthday() {
	return birthday;
}
public void setBirthday(Date birthday) {
	this.birthday = birthday;
}
public int getGender() {
	return gender;
}
public void setGender(int gender) {
	this.gender = gender;
}
*/
@Override
public String toString() {
	return "TMember [email=" + email + ", pw=" + pw + ", name=" + name + ", phone=" + phone + "]";
}



}
