package com.soecode.lyf.service.impl;

import static org.junit.Assert.fail;

import com.soecode.lyf.dao.OrderDao;
import com.soecode.lyf.service.OrderService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.soecode.lyf.BaseTest;
import com.soecode.lyf.dto.AppointExecution;
import com.soecode.lyf.service.BookService;

public class BookServiceImplTest extends BaseTest {

	@Autowired
	private BookService bookService;

	@Test
	public void testAppoint() throws Exception {
		long bookId = 1001;
		long studentId = 12345678910L;
		AppointExecution execution = bookService.appoint(bookId, studentId);
		System.out.println(execution);
	}



	@Autowired
	OrderService orderService;
	@Test
	public void saveOrder1() throws Exception {
		orderService.saveOrder("2","1","1","1","1","1","1","1",
				"1","1","1","1","1","1","2");
	}

}
