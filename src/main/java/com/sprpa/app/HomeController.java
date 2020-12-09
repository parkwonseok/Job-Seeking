package com.sprpa.app;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
		if(jobVO == null) {
			request.setAttribute("longitude", 126.888895);
			request.setAttribute("latitude", 37.525589);
		}
		else {
			request.setAttribute("longitude", jobVO.getLongitude());
			request.setAttribute("latitude", jobVO.getLatitude());
		}
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
	@RequestMapping(value = "/resume3", method = RequestMethod.GET)
	public String resume3() {
		return "resume3";
	}
	@RequestMapping(value = "/resume4", method = RequestMethod.GET)
	public String resume4() {
		return "resume4";
	}
	@RequestMapping(value = "/resume5", method = RequestMethod.GET)
	public String resume5() {
		return "resume5";
	}
	@RequestMapping(value = "/photo", method = RequestMethod.GET)
	public String photo() {
		return "photo";
	}
	@GetMapping("/send")
    public String send(HttpServletRequest request) {
		List<ResumeVO> resumeList = sqlSession.selectList("job.selectResume");
		request.setAttribute("resumeList", resumeList);
		List<JobVO> jobList = sqlSession.selectList("job.selectJobList");
		request.setAttribute("jobList", jobList);
        return "send";
    }
}
