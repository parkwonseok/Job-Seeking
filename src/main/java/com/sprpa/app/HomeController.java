package com.sprpa.app;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	@Autowired
    SqlSession sqlSession;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		return "home";
	}
	@RequestMapping(value = "/service", method = RequestMethod.GET)
	public String service() {
		return "service";
	}
	@RequestMapping(value = "/job", method = RequestMethod.GET)
	public String job() {
		return "job";
	}
	@RequestMapping(value = "/job2", method = RequestMethod.GET)
	public String job2(String area, HttpServletRequest request) {
		request.setAttribute("area", area);
		return "job2";
	}
	@RequestMapping(value = "/job3", method = RequestMethod.GET)
	public String job3(HttpServletRequest request) {
		JobVO jobVO = sqlSession.selectOne("job.selectJob");
		request.setAttribute("longitude", jobVO.getLongitude());
		request.setAttribute("latitude", jobVO.getLatitude());
		return "job3";
	}
	@RequestMapping(value = "/resume", method = RequestMethod.GET)
	public String resume() {
		return "resume";
	}
	@RequestMapping(value = "/resume2", method = RequestMethod.GET)
	public String resume2() {
		return "resume2";
	}
}
