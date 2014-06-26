package com.spring.service;

import java.util.List;
import com.spring.entity.Inventory;

public interface InventoryService {
	
	public List<Inventory> getInventory();
	
	public void createInventory(Inventory inventory);
	
	public void updateInventory(int id);

}
