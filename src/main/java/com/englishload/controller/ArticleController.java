package com.englishload.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.englishload.po.Article;
import com.englishload.po.Bulletin;
import com.englishload.po.WordsCustom;
import com.englishload.service.ArticleService;

@Controller
@RequestMapping(value="/article")
public class ArticleController {
	@Autowired
	private ArticleService articleService;
	//查询所有的文章（随机）
	@RequestMapping(value="/articleList")
	public ModelAndView bulletinList(){
		Article article=articleService.findOneArticle();
		ModelAndView mv=new ModelAndView();
		mv.addObject("article",article);
		mv.setViewName("article/articleList");		
		return mv;
	}
	//点击前台页面的一篇文章，根据指定id查看一篇文章,跳转到articleListList.jsp页面
			@RequestMapping(value="/showArticle")
			public ModelAndView  showArticle(HttpServletRequest request){
				//将bulletinId转化为integer类型
				String id=request.getParameter("id");
				int articleId =Integer.parseInt(id);	
				Article article=articleService.findByID(articleId);
				ModelAndView mv=new ModelAndView();
				mv.addObject("article",article);
				mv.setViewName("article/articleList");		
				return mv;
			}
}
