package com.example.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.domain.BoardVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {com.example.config.RootConfig.class})
@Log4j
public class BoardMapperTest {
	
	@Setter(onMethod_ = @Autowired)
	private BoardMapper mapper;
	
//	@Test
	public void testGetList() {
		
		mapper.getList().forEach(board -> log.info(board));
	}
	
//	@Test
	public void testInsert()
	{
		BoardVO board = new BoardVO();
		board.setTitle("새로 작성하는 글");
		board.setContent("새로 작성하는 내용");
		board.setWriter("newbie");
		
		mapper.insert(board);
		
		log.info(board);
	}
	
//	@Test
	public void testInsertSelectKey()
	{
		BoardVO board = new BoardVO();
		board.setTitle("새로 작성하는 글 select key");
		board.setContent("새로 작성하는 내용 select key");
		board.setWriter("newbie");
		
		mapper.insertSelectKey(board);
		
		log.info(board);
	}
	
//	@Test
	public void testRead()
	{
		//존재하는 게시물 번호로 테스트
		BoardVO board = mapper.read(3L);
		
		log.info(board);
	}
	
//	@Test
	public void testDelete()
	{
		log.info("DELETE COUNT: " + mapper.delete(3L));
	}
	
	@Test
	public void testUpdate()
	{
		BoardVO board = new BoardVO();
		//실행 전 존재하는 번호인지 확인할것
		board.setBno(4L);
		board.setTitle("수정된 제목");
		board.setContent("수정된 내용");
		board.setWriter("user00");
		
		int count = mapper.update(board);
		log.info(board);
	}
}
