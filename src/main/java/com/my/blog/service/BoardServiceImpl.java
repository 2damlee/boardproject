package com.my.blog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.my.blog.dao.BoardDAO;
import com.my.blog.vo.BoardVO;
import com.my.blog.vo.ReplyVO;


@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDAO boarddao;

	@Override
	public List<BoardVO> getAllList() {
		return boarddao.getAllList();
	}

	@Override
	public List<BoardVO> getDetail(int bno) {
		return boarddao.getDetail(bno);
	}

	@Override
	public void writeBoard(BoardVO vo) {
		boarddao.writeBoard(vo);	
	}

	@Override
	public void updateBoard(BoardVO vo) {
		boarddao.updateBoard(vo);	
	}

	@Override
	public void deleteBoard(int bno) {
		boarddao.deleteBoard(bno);
	}

	@Override
	public List<ReplyVO> getReplyList(int bno) {
		return boarddao.getReplyList(bno);
	}

	@Override
	public void saveReply(ReplyVO vo) {
		boarddao.saveReply(vo);
	}

	@Override
	public void updateReply(ReplyVO vo) {
		boarddao.updateReply(vo);
	}

	@Override
	public void deleteReply(int rno) {
		boarddao.deleteReply(rno);
	}
	
}
