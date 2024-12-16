package vn.iotstar.repository;

import vn.iotstar.entity.Subcribe;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface CheckEmailRepository extends JpaRepository<Subcribe, Integer> {

    @Query("select u from Subcribe as u where u.email = :email ")
    List<Subcribe> findByEmail(@Param("email") String email);

}
