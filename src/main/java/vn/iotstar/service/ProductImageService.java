package vn.iotstar.service;

import org.springframework.stereotype.Service;

import vn.iotstar.entity.ProductImage;

@Service
public class ProductImageService extends BaseService<ProductImage>{

	@Override
	protected Class<ProductImage> clazz() {
		// TODO Auto-generated method stub
		return ProductImage.class;
	}

}
