package com.javaclass.dao;

import java.util.List;

import com.javaclass.domain.AccountVO;

public interface AccountDAO {
	
	
	//회원가입 기능 구현
	public void insertAccount(AccountVO vo);
	
	public AccountVO loginCheck(AccountVO vo);
	
	public void updateAccount(AccountVO vo);
	
	public AccountVO myHomePageView(String account_Id);
	
	public AccountVO myHomePageUpdate(String account_Id);
	
	public List<AccountVO> accountList(AccountVO vo);
	
	public AccountVO idCheck(AccountVO vo);
	
	//관리자 로그인
	public void adminLogin(AccountVO vo);
}