package com.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.entity.Good;
import com.entity.Goodtype;
import com.entity.Inshop;
import com.entity.Supplier;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.GoodService;
import com.service.InshopService;
import com.service.SupplierService;

public class InshopAction extends ActionSupport {
	private Inshop inshop;
	private Supplier supplier;
	private Good good;
	private GoodService goodService;
	 
	/**
	 * @return the good
	 */
	public Good getGood() {
		return good;
	}

	/**
	 * @param good the good to set
	 */
	public void setGood(Good good) {
		this.good = good;
	}

	/**
	 * @return the goodService
	 */
	public GoodService getGoodService() {
		return goodService;
	}

	/**
	 * @param goodService the goodService to set
	 */
	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}

	/**
	 * @return the inshop
	 */
	public Inshop getInshop() {
		return inshop;
	}

	/**
	 * @param inshop the inshop to set
	 */
	public void setInshop(Inshop inshop) {
		this.inshop = inshop;
	}

	/**
	 * @return the supplier
	 */
	public Supplier getSupplier() {
		return supplier;
	}

	/**
	 * @param supplier the supplier to set
	 */
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	/**
	 * @return the inshopService
	 */
	public InshopService getInshopService() {
		return inshopService;
	}

	/**
	 * @param inshopService the inshopService to set
	 */
	public void setInshopService(InshopService inshopService) {
		this.inshopService = inshopService;
	}

	private InshopService inshopService;
	private SupplierService supplierService;
	
	/**
	 * @return the supplierService
	 */
	public SupplierService getSupplierService() {
		return supplierService;
	}

	/**
	 * @param supplierService the supplierService to set
	 */
	public void setSupplierService(SupplierService supplierService) {
		this.supplierService = supplierService;
	}
	public String save(){
		System.out.println(">>>>>>>>>>>>>>>>>"+supplier.getSupplierId());
		inshop.setInTime(new Date());
		Supplier s= supplierService.findBySupplierId(supplier.getSupplierId());
		if(s==null){
			return "error";
		}
		inshop.setSupplier(s);
		boolean flag = inshopService.save(inshop);
		System.out.println(flag+" >>>>>>>>>>>>>>> inshopAction");
		if(flag==false){
			return "error";
		}
		return "success";
	}
	public String findAll(){	 
		List<Inshop> list = inshopService.findAll();
		List<Good> goodList = goodService.findAll();
		List<Supplier> supplierList =supplierService.findAll();
		Map request = (Map) ActionContext.getContext().get("request");     
		request.put("list",list); 
		request.put("goodList",goodList); 
		request.put("supplierList",supplierList); 
		return "findAll";
	}
	public String delete(){
		return "success";
	}
	public String update(){
		return "success";
	}
	public String findByLastPrice(){
		BigDecimal lastPrice  ;
		lastPrice =inshopService.findByLastPrice(inshop.getGoodId());
		System.out.println(">>>>>>>>>>>>>>>>>"+lastPrice);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");	 
		try {
			PrintWriter out = response.getWriter();
			out.print(lastPrice);
		} catch (IOException e) {
			// TODO Auto-generated catch block 
			e.printStackTrace();
		}	
		return NONE;
	}

}
