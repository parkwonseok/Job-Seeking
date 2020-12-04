package com.sprpa.app;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JobRestController {
	@Autowired
    SqlSession sqlSession;
	
	@GetMapping("/getJobList")
	public List<JobVO> getJobList(){
		List<JobVO> list = sqlSession.selectList("job.selectJobList");
		return list;
	}
}
