package com.spring.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.spring.dao.InventoryDao;
import com.spring.entity.Inventory;
import org.springframework.transaction.annotation.Propagation;  

@Service  
@Transactional(propagation = Propagation.SUPPORTS, readOnly = true)  
public class InventoryServiceImpl implements InventoryService {

	@Autowired 
	InventoryDao invetoryDao;
	
	
	public List<Inventory> getInventory() {
		// TODO Auto-generated method stub
		return null;
	}


	public void createInventory(Inventory inventory) {
		// TODO Auto-generated method stub
		invetoryDao.createInventory(inventory);
		
	}


	public void updateInventory(int id) {
		// TODO Auto-generated method stub
		
	}
	
	

}
