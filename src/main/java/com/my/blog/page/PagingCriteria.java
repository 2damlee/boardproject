package com.my.blog.page;

import org.springframework.stereotype.Component;

@Component("pagevo")
public class PagingCriteria {
	
	private int pageNum=1;	//페이지 번호
	private int amount=10;	//페이지당 데이터 갯수

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

}
