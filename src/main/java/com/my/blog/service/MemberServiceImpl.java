package com.my.blog.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.blog.dao.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{
@Autowired
MemberDAO memberdao;
}
