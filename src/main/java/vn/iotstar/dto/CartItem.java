package vn.iotstar.dto;

import lombok.Data;
import lombok.ToString;

import java.math.BigDecimal;

@Data
@ToString
public class CartItem {
	private int productId;
	private String productName;
	private int quanlity;
	private String productPictures;
	private BigDecimal priceUnit;

}
