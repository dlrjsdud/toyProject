package egovframework.toy.post.service;

import java.util.List;

public interface PostService {
	
	PostVO getPost(String post_id) throws Exception;
	
	int incrementViewCount(String post_id) throws Exception;
	
	List<CommentVO> getComment(String post_id) throws Exception;
	
	int commentDo(String post_id, String email, String comment) throws Exception;

}
