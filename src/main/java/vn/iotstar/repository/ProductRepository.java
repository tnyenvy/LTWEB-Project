package vn.iotstar.repository;

import vn.iotstar.dto.ProductSearchDataModel;
import vn.iotstar.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer>{

    @PersistenceContext
    EntityManager entityManager = null;

    @PersistenceContext
    default Class<ProductSearchDataModel> clazz() {
        // TODO Auto-generated method stub
        return ProductSearchDataModel.class;
    }

}
