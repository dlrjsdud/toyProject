package egovframework.toy.post.service;

public interface PostService {
	
	PostVO getPost(String post_id) throws Exception;
	
	int incrementViewCount(String post_id) throws Exception;

}
