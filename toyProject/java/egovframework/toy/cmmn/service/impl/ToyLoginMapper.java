package egovframework.toy.cmmn.service.impl;

import org.apache.ibatis.annotations.Mapper;

import egovframework.toy.cmmn.service.NaverProfile;

@Mapper
public interface ToyLoginMapper {
	
	public int setNaverUserInfo(NaverProfile userInfo);
}
