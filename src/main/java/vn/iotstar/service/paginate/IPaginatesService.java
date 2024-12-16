package vn.iotstar.service.paginate;

import org.springframework.stereotype.Service;

import vn.iotstar.service.PagerData;

@Service
public interface IPaginatesService {
	public PagerData GetInfoPaginates(int totalItems, int limit, int currentPage);

}
