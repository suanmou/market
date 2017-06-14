package com.action;

import java.util.List;
import java.util.Map;

 
import com.entity.Goodtype;
import com.entity.Supplier;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.service.GoodtypeService;

public class GoodtypeAction extends ActionSupport implements ModelDriven<Goodtype> {

	private Goodtype  goodtype =  new Goodtype();
	Map request = (Map) ActionContext.getContext().get("request");   
	@Override
	public Goodtype getModel() {
		// TODO Auto-generated method stub
		return goodtype;
	}
	private GoodtypeService goodtypeService ;
	/**
	 * @return the goodtypeService
	 */
	public GoodtypeService getGoodtypeService() {
		return goodtypeService;
	}
	/**
	 * @param goodtypeService the goodtypeService to set
	 */
	public void setGoodtypeService(GoodtypeService goodtypeService) {
		this.goodtypeService = goodtypeService;
	}
	public String save(){
		System.out.println("GoodtypeAction.save()方法被执行");
		goodtypeService.save(goodtype);
		return "success";
		
	}
	public String update(){
		System.out.println("GoodtypeAction.save()方法被执行");
		goodtypeService.update(goodtype);
		return "success";
		
	}
	public String delete(){
		boolean flag = goodtypeService.delete(goodtype.getGoodtypeId());
		if(!flag){
			return "warning";
		}
		System.out.println("GoodtypeAction.delete()方法被执行");
		return  "success";
	}
	public String findByGoodtypeId(){
		System.out.println("AdminAction.findByAdminId()被执行");
		Goodtype g = goodtypeService.findByGoodtypeId(goodtype.getGoodtypeId());     
		request.put("goodtype",g); 
		return "edit";
	} 
	public String findAll(){	 
		List<Goodtype> list = goodtypeService.findAll();  
		request.put("list",list); 
		return "findAll";
	}
	
	

}
