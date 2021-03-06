package com.entity;
// Generated 2017-5-23 22:38:04 by Hibernate Tools 3.6.0.Final

import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Good generated by hbm2java
 */
@Entity
@Table(name = "good", catalog = "market")
public class Good implements java.io.Serializable {

	private String goodId;
	private Goodtype goodtype;
	private Supplier supplier;
	private String goodName;
	private BigDecimal price;
	private int num;
	private BigDecimal originPrice;
	private Set<Inshop> inshops = new HashSet<Inshop>(0);

	public Good() {
	}

	public Good(String goodId, Goodtype goodtype, Supplier supplier, String goodName, BigDecimal price, int num,
			BigDecimal originPrice) {
		this.goodId = goodId;
		this.goodtype = goodtype;
		this.supplier = supplier;
		this.goodName = goodName;
		this.price = price;
		this.num = num;
		this.originPrice = originPrice;
	}

	public Good(String goodId, Goodtype goodtype, Supplier supplier, String goodName, BigDecimal price, int num,
			BigDecimal originPrice, Set<Inshop> inshops) {
		this.goodId = goodId;
		this.goodtype = goodtype;
		this.supplier = supplier;
		this.goodName = goodName;
		this.price = price;
		this.num = num;
		this.originPrice = originPrice;
		this.inshops = inshops;
	}

	@Id

	@Column(name = "goodId", unique = true, nullable = false, length = 6)
	public String getGoodId() {
		return this.goodId;
	}

	public void setGoodId(String goodId) {
		this.goodId = goodId;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "goodtypeId", nullable = false)
	public Goodtype getGoodtype() {
		return this.goodtype;
	}

	public void setGoodtype(Goodtype goodtype) {
		this.goodtype = goodtype;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "supplierId", nullable = false)
	public Supplier getSupplier() {
		return this.supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	@Column(name = "goodName", nullable = false, length = 50)
	public String getGoodName() {
		return this.goodName;
	}

	public void setGoodName(String goodName) {
		this.goodName = goodName;
	}

	@Column(name = "price", nullable = false, precision = 10)
	public BigDecimal getPrice() {
		return this.price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	@Column(name = "num", nullable = false)
	public int getNum() {
		return this.num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	@Column(name = "originPrice", nullable = false, precision = 10)
	public BigDecimal getOriginPrice() {
		return this.originPrice;
	}

	public void setOriginPrice(BigDecimal originPrice) {
		this.originPrice = originPrice;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "good")
	public Set<Inshop> getInshops() {
		return this.inshops;
	}

	public void setInshops(Set<Inshop> inshops) {
		this.inshops = inshops;
	}

}
