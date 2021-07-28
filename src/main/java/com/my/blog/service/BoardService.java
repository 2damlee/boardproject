package com.my.blog.service;

import java.util.List;

import com.my.blog.vo.BoardVO;
import com.my.blog.vo.ReplyVO;

interface BoardService {
	public List<BoardVO> getAllList();
	public List<BoardVO> getDetail(int bno);
	public void writeBoard(BoardVO vo);
	public void updateBoard(BoardVO vo);
	public void deleteBoard(int bno);
	public List<ReplyVO> getReplyList(int bno);
	public void saveReply(ReplyVO vo);
	public void updateReply(ReplyVO vo);
	public void deleteReply(int rno);
}
