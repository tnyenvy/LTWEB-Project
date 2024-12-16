package vn.iotstar.dto;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class AddProduct {
	private String maSP, tenSP, loaiSP;
	private double total;
	private String productAvatar;
	private String productPictures;

}
