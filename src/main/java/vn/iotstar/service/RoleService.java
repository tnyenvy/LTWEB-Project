package vn.iotstar.service;

import vn.iotstar.entity.Role;
import vn.iotstar.repository.RoleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleService extends BaseService<Role>{

	@Autowired
	RoleRepository repository;

	@Override
	protected Class<Role> clazz() {
		// TODO Auto-generated method stub
		return Role.class;
	}
	
	public Role loadRoleByRoleName(String roleName) {
		Role role = repository.findByName(roleName);
		return role;
	}
}
