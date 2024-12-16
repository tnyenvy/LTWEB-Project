package vn.iotstar.dto;

import lombok.Data;

@Data
public class ProductSearchModel extends BaseSearchModel {

	public String keyword;

	public Integer categoryId;

	public String seo;

}
