package com.hackday.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hackday.service.TableService;



@Controller
public class PageController {
	@Autowired
	private TableService tableService;
	
	@RequestMapping("/")
	public String showIndex() {
		System.out.println("aaa");
		return "tiaoZhuan";
	}

	@RequestMapping("/{page}")
	public String showpage(@PathVariable String page) {
		return page;
	}
	
}
