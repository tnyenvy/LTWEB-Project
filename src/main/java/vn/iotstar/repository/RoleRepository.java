package vn.iotstar.repository;

import vn.iotstar.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends JpaRepository<Role, String> {
//    @Query(value = "SELECT * FROM tbl_roles r WHERE r.name = ?1", nativeQuery = true)
    Role findByName(String name);

}
