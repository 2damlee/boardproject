package com.my.blog.service;

import java.util.List;

import com.my.blog.vo.BoardVO;

interface BoardService {
	public List<BoardVO> getAllList();
	public List<BoardVO> getDetail(int bno);
	public void writeBoard(BoardVO vo);
}
