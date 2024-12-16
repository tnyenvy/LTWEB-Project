package vn.iotstar.entity;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "tbl_category")
public class Categories extends BaseEntity {

	@Column(name = "name", length = 100, nullable = false)
	private String name;

	@Column(name = "description", length = 100, nullable = false)
	private String description;

	@Column(name = "seo", length = 1000, nullable = true)
	private String seo;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "categories", fetch = FetchType.LAZY)
	private Set<Product> products = new HashSet<Product>();

	public void addProduct(Product product) {
		this.products.add(product);
		product.setCategories(this);
	}

	public void deleteProduct(Product product) {
		this.products.remove(product);
		product.setCategories(null);
	}
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "parent_id")
	private Categories parent;
	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "parent")
	private Set<Categories> childs = new HashSet<Categories>();
	public void addChild(Categories category) {
		this.childs.add(category);
		category.setParent(this);
	}
	public void deleteChild(Categories category) {
		this.childs.remove(category);
		category.setParent(null);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public Set<Product> getProducts() {
		return products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

	public Categories getParent() {
		return parent;
	}

	public void setParent(Categories parent) {
		this.parent = parent;
	}

	public Set<Categories> getChilds() {
		return childs;
	}

	public void setChilds(Set<Categories> childs) {
		this.childs = childs;
	}
}
