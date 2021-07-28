package com.my.blog.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.blog.vo.BoardVO;
import com.my.blog.vo.ReplyVO;

@Repository("boarddao")
public class BoardDAO {
	
	@Autowired
	SqlSession session;
	
	public List<BoardVO> getAllList() {
		List<BoardVO> list = session.selectList("blog.selectall");
		return list;
	}
	
	public List<BoardVO> getDetail(int bno) {
		List<BoardVO> detail = session.selectList("blog.detail", bno);
		session.update("blog.viewcount", bno);
		return detail;
	}
	
	public void writeBoard(BoardVO vo) {
		session.insert("blog.write", vo);
	}
	
	public void updateBoard(BoardVO vo) {
		session.insert("blog.update", vo);
	}
	
	public void deleteBoard(int bno) {
		session.delete("board.delete", bno);
	}
	
	// reply 
	public List<ReplyVO> getReplyList(int bno) {
		List<ReplyVO> list = session.selectList("blog_reply.getReplyList", bno);
		return list;
	}
	
	public void saveReply(ReplyVO vo) {
		session.insert("blog_reply.saveReply", vo);
	}
	
	public void updateReply(ReplyVO vo) {
		session.insert("blog_reply.updateReply", vo);
	}
	
	public void deleteReply(int rno) {
		session.delete("blog_reply.deleteReply", rno);
	}
}
