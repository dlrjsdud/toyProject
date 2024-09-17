package egovframework.toy.post.service;

import egovframework.toy.cmmn.service.CommunityVO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class PostVO extends CommunityVO {
	
	private String post_div;

}
