package egovframework.toy.cmmn.service;

import java.io.UnsupportedEncodingException;

public interface ToyLoginService {

	public String getNaverAuthorizeUrl(String type) throws UnsupportedEncodingException;
}
