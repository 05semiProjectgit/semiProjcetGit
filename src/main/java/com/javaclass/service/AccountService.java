package com.javaclass.service;

import java.util.List;

import com.javaclass.domain.AccountVO;

public interface AccountService {

	public void insertAccount(AccountVO vo);
	
	public AccountVO loginCheck(AccountVO vo);
	
	//관리자 로그인
	public AccountVO adminLogin(AccountVO vo);
	
	public void updateAccount(AccountVO vo);
	
	public AccountVO myHomePageView(String account_Id);
	
	public AccountVO myHomePageUpdate(String account_Id);
	
	public List<AccountVO> accountList(AccountVO vo);
	
	public AccountVO idCheck(AccountVO vo);
	
	public boolean checkPassword(String account_Id, String account_Password);
	
	public void deleteAccount(AccountVO vo);
	

}
