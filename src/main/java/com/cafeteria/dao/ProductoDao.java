package com.cafe.dao;

import java.util.List;

import com.cafe.data.Productos;

public interface ProductoDao {
	
	public List<Productos> getAllProductos();
	public void save(Productos producto);
	public void update(Productos producto);
	public void delete(Productos producto);
	public Productos get(int n);
		
}
