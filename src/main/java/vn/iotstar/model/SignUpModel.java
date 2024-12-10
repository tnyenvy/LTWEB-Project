package vn.iotstar.model;

import lombok.Data;

@Data
public class SignUpModel {

	private String name;
	
	private String username;
	
	private String email;
	
	private String password;
	
	private boolean enabled;
	
}
