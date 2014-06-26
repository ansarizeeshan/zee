package com.spring.dao;

import java.util.List;
import com.spring.entity.Inventory;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository; 
import org.springframework.transaction.annotation.Transactional;

@Repository("InventoryDao")  
public class InventoryDaoImpl implements InventoryDao {
	
	@Autowired  
  private SessionFactory sessionfactory;  
	 
  @Transactional 
	public List<Inventory> getInventory() {
		@SuppressWarnings("unchecked")
		List<Inventory> inventorylist = sessionfactory.getCurrentSession().createCriteria(Inventory.class).list();  
			return inventorylist; 
	}

  @Transactional 
	public void createInventory(Inventory inventory) {
					
		sessionfactory.getCurrentSession().save(inventory); 			
	}
 
  @Transactional 
	public void updateInventory(int id) {

	}
	
}
