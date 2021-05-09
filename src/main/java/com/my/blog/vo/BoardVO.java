package com.my.blog.vo;

import org.springframework.stereotype.Component;

@Component("boardvo")
public class BoardVO {
int bno;
String lang, id;
int password;
String title, contents;
int viewcount;
String time;

public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
public int getBno() {
	return bno;
}
public void setBno(int bno) {
	this.bno = bno;
}
public String getLang() {
	return lang;
}
public void setLang(String lang) {
	this.lang = lang;
}
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
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContents() {
	return contents;
}
public void setContents(String contents) {
	this.contents = contents;
}
public int getViewcount() {
	return viewcount;
}
public void setViewcount(int viewcount) {
	this.viewcount = viewcount;
}
	
}
