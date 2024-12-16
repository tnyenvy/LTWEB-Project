package vn.iotstar.repository;

import vn.iotstar.entity.Saleorder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface OrderRepository extends JpaRepository<Saleorder, Integer> {
    @Query("select s from Saleorder as s where s.customer_email = :customerEmail")
    List<Saleorder> findByEmailOrder(@Param("customerEmail") String customerEmail);
}
