package egovframework.toy.free.service;

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
public class FreeVO {
	
	private int post_id;
	private String title;
	private String email;
	private String created_at;
	private int view_count;
	
}
