package com.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.entity.Good;
import com.entity.Goodtype;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
 
import com.service.GoodService;
import com.service.GoodtypeService;

public class GoodAction extends ActionSupport {
	private Good good;  
	private Goodtype goodtype; 
	public String result;
	Map request = (Map) ActionContext.getContext().get("request");  
	 
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
	 * @return the goodtype
	 */
	public Goodtype getGoodtype() {
		return goodtype;
	}
	/**
	 * @param goodtype the goodtype to set
	 */
	public void setGoodtype(Goodtype goodtype) {
		this.goodtype = goodtype;
	}
	private GoodService goodService ;
	private GoodtypeService goodtypeService;
	
	public GoodService getGoodService() {
		return goodService;
	}
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
	/**
	 * @param goodService the goodService to set
	 */
	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}
	public String save(){
		System.out.println(">>>>>>>>>>>>>>>>>"+goodtype.getGoodtypeId());
		Goodtype g= goodtypeService.findByGoodtypeId(goodtype.getGoodtypeId());
		if(g==null){
			return "error";
		}
		good.setNum(0);
		good.setOriginPrice(new BigDecimal(0));
		good.setPrice(new BigDecimal(0));
		good.setGoodtype(g);
		goodService.save(good);
		System.out.println("GoodtypeAction.save()方法被执行");
		return "success";
		
	}
	public String findByGoodId(){
		Good g =goodService.findByGoodId(good.getGoodId());
		String goodtypeId = g.getGoodtype().getGoodtypeId();
		System.out.println(">>>>>>>>>>>>>>>>"+g.getGoodtype()+g.getGoodtype().getGoodtypeId());
		List<Goodtype> gtl = goodtypeService.findAll();
		request.put("good",g);
		request.put("goodtypeId", goodtypeId);
		request.put("gtl",gtl); 
		return "edit";
	}
	public String findByGoodName(){
//		HttpServletResponse response = (HttpServletResponse) ActionContext.getContext().get("response");
		Good g =goodService.findByGoodId(good.getGoodId());
		String goodName ;
		if(g==null){
			goodName = "无";
		}else{
			goodName = g.getGoodName();
		}
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");	 
		try {
			PrintWriter out = response.getWriter();
			out.print(goodName);
		} catch (IOException e) {
			// TODO Auto-generated catch block 
			e.printStackTrace();
		}	
//		System.out.println(g.getGoodName());
//		request.put("goodName", g.getGoodName());
//		request.put("good1",g);  
//		return g.getGoodName();
		return NONE;
	}
	public String findAll(){	 
		List<Good> list = goodService.findAll();  
		List<Goodtype> goodtypeList = goodtypeService.findAll();
		request.put("list",list); 
		request.put("goodtypeList",goodtypeList);
		return "findAll";
	}
	public String delete(){
		System.out.println(good.getGoodId());
		goodService.delete(good.getGoodId());
		return "success";
	}
	public String update(){
		Goodtype g= goodtypeService.findByGoodtypeId(goodtype.getGoodtypeId());
		if(g==null){
			return "error";
		}
		System.out.println(good.getGoodName());
		good.setGoodName(good.getGoodName());
		good.setNum(good.getNum());
		good.setOriginPrice(good.getOriginPrice());
		good.setPrice(good.getPrice());
		good.setGoodtype(g);
		goodService.update(good);
		return "success";
	};

}
