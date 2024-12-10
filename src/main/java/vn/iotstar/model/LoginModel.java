package vn.iotstar.model;

import lombok.Data;

@Data
public class LoginModel {
	
	private String usernameOrEmail;
	
	private String password;
	
}
