package com.my.blog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.my.blog.service.BoardServiceImpl;
import com.my.blog.vo.BoardVO;


@Controller
public class BoardController {
@Autowired
BoardServiceImpl service;

@RequestMapping("/home")
public String home() {
	return "board/home";
}


@RequestMapping("/boardlist")
public ModelAndView boardList() {
	ModelAndView mv = new ModelAndView();
	List<BoardVO> list = service.getAllList();
	mv.addObject("list", list);
	mv.setViewName("board/boardlist");
	return mv;
}


@RequestMapping("/boarddetail")
public ModelAndView boardDetail(int bno) {
	ModelAndView mv = new ModelAndView();
	List<BoardVO> detail = service.getDetail(bno);
	mv.addObject("detail", detail);
	mv.setViewName("board/boarddetail");
	return mv;
}

@RequestMapping(value="/boardwrite", method = RequestMethod.GET)
public String writeBoardForm() {
	return "/board/boardwrite";
}

@RequestMapping(value="/boardwirte", method = RequestMethod.POST)
public void boardWrite(BoardVO vo) {
	service.writeBoard(vo);
} //boardwrite.jsp 만들어야 함  

@RequestMapping(value="/chat")
public String chat() {
	return "/board/chat";
} //boardwrite.jsp 만들어야 함  


}
