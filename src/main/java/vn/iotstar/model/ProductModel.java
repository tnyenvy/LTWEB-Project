package vn.iotstar.model;

import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

import jakarta.persistence.*;
import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ProductModel implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	private Long id;
	
    private String name;
	
	private String images;
	
    private int quantity;
	
    private String note;
	
    private int type;
	
    private int price;
	
    private int tag;
	
    private boolean hide;
    
    private Boolean isEdit = false;
    
    private MultipartFile imageFile;
	
}
