package egovframework.toy.cmmn.service;


import com.google.gson.JsonElement;

import com.google.gson.JsonParser;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class NaverProfile {

       private String name;
       private String nickname;
       private String email;
       private String mobile;
       
       public NaverProfile(String jsonResponseBody)
       {
          JsonParser jsonParser = new JsonParser();
          JsonElement element = jsonParser.parse(jsonResponseBody);
          
          this.name = element.getAsJsonObject().get("response").getAsJsonObject().get("name").getAsString();
          this.nickname = element.getAsJsonObject().get("response").getAsJsonObject().get("nickname").getAsString();
          this.email = element.getAsJsonObject().get("response").getAsJsonObject().get("email").getAsString();
          this.mobile = element.getAsJsonObject().get("response").getAsJsonObject().get("mobile").getAsString();
       }
}
