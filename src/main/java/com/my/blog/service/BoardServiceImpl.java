package com.my.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.my.blog.dao.BoardDAO;
import com.my.blog.vo.BoardVO;


@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO boarddao;

	@Override
	public List<BoardVO> getAllList() {
		return boarddao.getAllList();
	}
	
	
}
