package egovframework.toy.cmmn.service;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
public class CommunityVO {
	
	private int post_id;
	private String title;
	private String email;
	private String created_at;
	private int view_count;
	private String content;
	
}
