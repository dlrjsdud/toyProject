package egovframework.toy.post.service;

import egovframework.toy.cmmn.service.CommunityVO;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class CommentVO extends CommunityVO{
	
	private int comment_id;
	private int post_id;
	private String email;
	private String content;
	private String created_at;

}