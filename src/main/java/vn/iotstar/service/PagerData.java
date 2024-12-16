package vn.iotstar.service;

import vn.iotstar.entity.BaseEntity;
import lombok.Data;

import java.util.List;

@Data
public class PagerData<E extends BaseEntity> {

	private List<E> data;

	private int totalItems;

	private int currentPage;
	
	private int limit, start, end;

}
