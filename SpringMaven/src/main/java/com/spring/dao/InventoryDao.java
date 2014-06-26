package com.spring.dao;
import java.util.List;
import com.spring.entity.Inventory;

public interface InventoryDao {
	
	public List<Inventory> getInventory();
	
	public void createInventory(Inventory inventory);
	
	public void updateInventory(int id);
	

}
