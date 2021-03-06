package com.englishload.service;

import java.util.List;

import com.englishload.po.Article;
import com.englishload.po.Bulletin;

public interface ArticleService {

	//随机显示一篇文章
	public Article findOneArticle();
	//根据指定的id一篇文章
	public Article findByID(Integer articleId);
}
