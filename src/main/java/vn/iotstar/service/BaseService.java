package vn.iotstar.service;

import vn.iotstar.entity.*;
import vn.iotstar.repository.CheckEmailRepository;
import vn.iotstar.repository.ContactRepository;
import vn.iotstar.repository.OrderRepository;
import vn.iotstar.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.Table;
import javax.transaction.Transactional;
import java.util.Date;
import java.util.List;

public abstract class BaseService<E extends BaseEntity>{

	private static int SIZE_OF_PAGE = 20;

	@Autowired
	protected CheckEmailRepository checkEmailRepository;

	@Autowired
	protected ContactRepository contactRepository;

	@Autowired
	protected UserRepository userRepository;

	@Autowired
	protected OrderRepository orderRepository;

	@PersistenceContext
	protected EntityManager entityManager;

	protected abstract Class<E> clazz();

	@Transactional
	public E saveOrUpdate(E entity) {
//		checkEmailRepository.findByEmail();
		if (entity.getId() == null || entity.getId() <= 0) {
			entity.setCreatedDate(new Date());
			entityManager.persist(entity); // thêm mới
			return entity;
		} else {
			return entityManager.merge(entity); // cập nhật
		}
	}

	@Transactional
	public List<Subcribe> checkEmailSubcribe(Subcribe entity) {
		return checkEmailRepository.findByEmail(entity.getEmail());
	}

	@Transactional
	public List<Contact> checkEmailContact(Contact entityContact) {
		return contactRepository.findByEmailContact(entityContact.getEmail());
	}

	@Transactional
	public List<User> checkEmailRegister(User entityUser) {
		return userRepository.findByEmailRegister(entityUser.getEmail());
	}

	@Transactional
	public List<User> checkUserNameRegister(User entityUser){
		return userRepository.findByUserNameRegister(entityUser.getUsername());
	}

	@Transactional
	public List<Saleorder> checkEmailOrder(Saleorder entitySaleOrder) {
		return orderRepository.findByEmailOrder(entitySaleOrder.getCustomer_email());
	}

	public void delete(E entity) {
		entityManager.remove(entity);
	}

	public void deleteById(int primaryKey) {
		E entity = this.getById(primaryKey);
		delete(entity);
	}

	public E getById(int primaryKey) {
		return entityManager.find(clazz(), primaryKey);
	}

	public E getOneByNativeSQL(String sql) {
		try {
			return executeByNativeSQL(sql, 0).getData().get(0);
		} catch (Exception e) {
			//e.printStackTrace();
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	public List<E> findAll() {
		Table tbl = clazz().getAnnotation(Table.class);
		return (List<E>) entityManager.createNativeQuery("SELECT * FROM " + tbl.name(), clazz()).getResultList();
	}

	public PagerData<E> executeByNativeSQL(String sql, int page) {
		PagerData<E> result = new PagerData<E>();
		
		try {
			Query query = entityManager.createNativeQuery(sql, clazz());
			if(page > 0) {
				result.setCurrentPage(page);
				result.setTotalItems(query.getResultList().size());
				
				query.setFirstResult((page - 1) * SIZE_OF_PAGE);
				query.setMaxResults(SIZE_OF_PAGE);
			}
			
			result.setData(query.getResultList());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public int executeUpdateOrDeleteByNativeSQL(String sql) {
		try {
			return entityManager.createNativeQuery(sql).executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
}
