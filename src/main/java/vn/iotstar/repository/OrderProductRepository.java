package vn.iotstar.repository;

import vn.iotstar.entity.SaleorderProducts;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface OrderProductRepository extends JpaRepository<SaleorderProducts, Integer> {
    @Query("select v from SaleorderProducts as v where v.saleOrder = :saleOrder")
    List<SaleorderProducts> findBySaleOrder(@Param("saleOrder") Integer saleOrder);
}
