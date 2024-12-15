package vn.iotstar.dto;

import lombok.Data;
import lombok.ToString;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@Data
@ToString
public class Cart {

	private BigDecimal totalPrice = BigDecimal.ZERO;
	
	private List<CartItem> cartItems = new ArrayList<CartItem>();


}
