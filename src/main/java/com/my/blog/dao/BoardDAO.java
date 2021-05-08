package com.my.blog.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.blog.vo.BoardVO;

@Repository("boarddao")
public class BoardDAO {
	@Autowired
	SqlSession session;
	public List<BoardVO> getAllList() {
		List<BoardVO> list = session.selectList("blog.selectall");
		return list;
	}
}
