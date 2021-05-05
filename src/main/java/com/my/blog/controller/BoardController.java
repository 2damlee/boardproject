package com.my.blog.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.my.blog.service.BoardServiceImpl;

@Controller
public class BoardController {
@Autowired
BoardServiceImpl service;

@RequestMapping("/home")
public String home() {
	return "board/home";
}
}
