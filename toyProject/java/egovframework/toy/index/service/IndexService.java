package egovframework.toy.index.service;

import java.util.List;

public interface IndexService {
	
	 List<IndexVO> getRank() throws Exception;
	
	 List<IndexVO> getIndexNotice() throws Exception;
	
}
