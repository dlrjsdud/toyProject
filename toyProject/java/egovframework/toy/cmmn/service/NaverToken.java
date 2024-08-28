package egovframework.toy.cmmn.service;

import lombok.Data;

@Data
public class NaverToken {

	private String access_token;
    private String token_type;
    private int expires_in;
    private String refresh_token;
    private String scope;
}
