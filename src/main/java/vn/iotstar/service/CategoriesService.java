package vn.iotstar.service;

import org.springframework.stereotype.Service;

import org.springframework.util.StringUtils;



import vn.iotstar.entity.Categories;


@Service
public class CategoriesService extends BaseService<Categories>{

	@Override
	protected Class<Categories> clazz() {
		// TODO Auto-generated method stub
		return Categories.class;
	}
	


}
