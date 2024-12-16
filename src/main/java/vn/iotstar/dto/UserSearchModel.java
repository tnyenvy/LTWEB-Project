package vn.iotstar.dto;

import lombok.Data;

@Data
public class UserSearchModel extends BaseSearchModel {

	public String keyword;
	public Integer roleId;

	public Integer getRoleId() {
		return roleId;
	}

	public String getKeyword() {
		return keyword;
	}

}
