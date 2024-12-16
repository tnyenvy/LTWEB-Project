package vn.iotstar.repository;

import vn.iotstar.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    @Query("select r from User as r where r.email = :email")
    List<User> findByEmailRegister(@Param("email") String email);

    @Query("select n from User as n where n.username = :username")
    List<User> findByUserNameRegister(@Param("username") String username);
}
