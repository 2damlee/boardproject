package com.my.blog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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

}
