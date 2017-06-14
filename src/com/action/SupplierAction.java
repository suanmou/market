package com.action;

import java.util.List;
import java.util.Map;

import com.entity.Admin;
import com.entity.Supplier;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.SupplierService;

public class SupplierAction extends ActionSupport implements ModelDriven<Supplier>{
	private Supplier supplier = new Supplier();
	Map request = (Map) ActionContext.getContext().get("request"); 
	@Override
	public Supplier getModel() {
		// TODO Auto-generated method stub
		return supplier;
	}
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
		supplierService.save(supplier);
		return "success";
	}
	public String update(){	 
		supplierService.update(supplier);
		return "success";
	}
	public String findAll(){	 
		List<Supplier> list = supplierService.findAll();    
		request.put("list",list); 
		return "findAll";
	}
	public String findBySupplierId(){
		System.out.println("SupplierAction.findBySupplierId()±»Ö´ÐÐ");
		Supplier s = supplierService.findBySupplierId(supplier.getSupplierId());     
		request.put("supplier",s); 
		return "edit";
	}
	public String delete(){
		supplierService.delete(supplier.getSupplierId());
		return "success";
	}
	
}
