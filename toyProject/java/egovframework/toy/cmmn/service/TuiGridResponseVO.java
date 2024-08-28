package egovframework.toy.cmmn.service;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class TuiGridResponseVO {
	
	@JsonProperty("result")
    private boolean result;
	
	@JsonProperty("data")
    private Object data;
}