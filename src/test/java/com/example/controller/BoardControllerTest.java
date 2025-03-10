package com.example.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration//서블릿 컨텍스트를 사용하겠다는 의미
@ContextConfiguration(classes = {com.example.config.RootConfig.class,
								com.example.config.ServletConfig.class})
@Log4j
public class BoardControllerTest {
	
	@Setter(onMethod_ = {@Autowired})
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
//	@Test //1.입력 테스트
	public void testRegister() throws Exception {
		
		String resultPage = mockMvc.perform(MockMvcRequestBuilders
											.post("/board/register")
											.param("title", "테스트 새글 제목")
											.param("content", "테스트 새글 내용")
											.param("writer", "user00")
											)
									.andReturn()
									.getModelAndView()
									.getViewName();
		log.info(resultPage);
	}
	
//	@Test //2.조회 테스트
	public void tetGet() throws Exception {
		
		log.info(mockMvc.perform(MockMvcRequestBuilders
								.get("/board/get")
								.param("bno", "5"))
							.andReturn()
							.getModelAndView()
							.getModelMap()
						);
	}
	
//	@Test //3.수정 테스트
	public void testModify() throws Exception {
		
		String resultPage = mockMvc.perform(MockMvcRequestBuilders
											.post("/board/modify")
											.param("bno", "1")
											.param("title","수정된 테스트 새글 제목")
											.param("content", "수정된 테스트 새글 내용")
											.param("writer", "user00"))
									.andReturn()
									.getModelAndView()
									.getViewName();
		log.info(resultPage);
	}
	
//	@Test //4.삭제 테스트
	public void testRemove() throws Exception {
		//삭제 전 데이터베이스에 게시물 번호 확인할 것
		
		// Check for null objects
	    log.info("MockMvc: " + (mockMvc == null ? "null" : "initialized"));
	    log.info("WebApplicationContext: " + (ctx == null ? "null" : "initialized"));
	    
	    
		String resultPage = mockMvc.perform(MockMvcRequestBuilders
											.post("/board/remove")
											.param("bno", "7"))
									.andReturn()
									.getModelAndView()
									.getViewName();
		log.info(resultPage);
	}
}
