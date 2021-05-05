package com.my.blog.vo;

import org.springframework.stereotype.Component;

@Component("membervo")
public class MemberVO {
String id;
int password;
String email, nickname;

public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public int getPassword() {
	return password;
}
public void setPassword(int password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getNickname() {
	return nickname;
}
public void setNickname(String nickname) {
	this.nickname = nickname;
}

}
