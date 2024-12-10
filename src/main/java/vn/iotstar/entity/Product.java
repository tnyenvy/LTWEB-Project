package vn.iotstar.entity;

import java.io.Serializable;

import jakarta.persistence.*;
import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "products")
public class Product implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "productid")
	private Long id;
	
	@Column(name = "productname", columnDefinition = "NVARCHAR(50)")
    private String name;
	
	@Column(name = "images", columnDefinition = "NVARCHAR(500)")
	private String images;
	
	@Column(name = "quantity")
    private int quantity;
	
	@Column(name = "note")
    private String note;
	
	@Column(name = "type")
    private int type;
	
	@Column(name = "price")
    private int price;
	
	@Column(name = "tag")
    private int tag;
	
	@Column(name = "hide")
    private boolean hide;

}
