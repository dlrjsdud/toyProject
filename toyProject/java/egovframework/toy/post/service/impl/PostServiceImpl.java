package egovframework.toy.post.service.impl;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.toy.post.service.PostService;
import egovframework.toy.post.service.PostVO;

@Service
public class PostServiceImpl extends EgovAbstractServiceImpl implements PostService {
	
	@Autowired
	PostMapper mapper;
	
	@Override
	public PostVO getPost(String post_id) throws Exception {
		PostVO postVo = mapper.getPost(post_id);
		return postVo;
	}
	
}
