package vn.iotstar.service;

import vn.iotstar.dto.ContactSearchModel;
import vn.iotstar.entity.Contact;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service
public class ContactService extends BaseService<Contact> {

	@Override
	protected Class<Contact> clazz() {
		// TODO Auto-generated method stub
		return Contact.class;
	}

	public PagerData<Contact> search(ContactSearchModel searchModel){
				String sql = "SELECT * FROM tbl_contact p WHERE 1=1";
				
				if (searchModel != null) {
					if (!StringUtils.isEmpty(searchModel.keyword)) {
						sql += " and (p.name like '%" + searchModel.keyword + "%'" + " or p.email like '%"
								+ searchModel.keyword + "%'" + " or p.massage like '%" + searchModel.keyword + "%')";
					}
				}
		return executeByNativeSQL(sql, searchModel == null ? 0 : searchModel.getPage());
	}

}
