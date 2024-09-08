package egovframework.toy.cmmn.service.impl;


import org.egovframe.rte.psl.dataaccess.mapper.Mapper;

import egovframework.toy.cmmn.service.NaverProfile;

@Mapper
public interface ToyLoginMapper {
		
	public int setNaverUserInfo(NaverProfile userInfo);
	
	public int isUserExists(String email);
}
