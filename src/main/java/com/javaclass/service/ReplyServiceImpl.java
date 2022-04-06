package com.javaclass.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.javaclass.dao.ReplyDAO;
import com.javaclass.domain.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Inject
	private ReplyDAO dao;
	
	@Override
	public List<ReplyVO> readReply(int bno) throws Exception {
		return dao.readReply(bno);
	}

	@Override
	public void writeReply(ReplyVO vo) throws Exception {
		dao.writdReply(vo);
		
	}

}