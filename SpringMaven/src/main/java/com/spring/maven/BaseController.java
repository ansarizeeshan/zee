package com.spring.maven;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.spring.entity.Inventory;
import com.spring.service.InventoryService;

@Controller
public class BaseController {
	
	@Autowired  
  private InventoryService inventoryservice;  
	
	@RequestMapping(value={"/", "index"}, method=RequestMethod.GET)
	public ModelAndView index() {
		return new ModelAndView("index");
	}

	@RequestMapping(value = "/inventories", method = RequestMethod.GET)
	public String welcome(ModelMap model) {
		
		
		
		
		return "inventoryhome";
	}
	
	 @RequestMapping(value = "/newinventory",method = RequestMethod.POST) 
	 public @ResponseBody  
	 String hello(@RequestParam(value = "name") String name,  
		   					@RequestParam(value = "details") String description){
		 if((name!=null && !name.equals("")) && (description!=null &&  !description.equals(""))){
			 System.out.println("name:->"+name +" and details:->"+description);
			 Inventory inventory=new Inventory(); 
			 inventory.setInventoryTitle(name);
			 inventory.setInventoryDescription(description);
			 inventoryservice.createInventory(inventory);
			 
		 }
		   
		   return "name:->"+name +" and details:->"+description;
	 }
			 
	
	@RequestMapping(value = "/welcome/{name}", method = RequestMethod.GET)
	public String welcomeName(@PathVariable String name, ModelMap model) {
		model.addAttribute("message", "Maven Web Project + Spring 3 MVC - " + name);
		return "index";
	}

}