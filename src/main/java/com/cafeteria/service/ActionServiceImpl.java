package com.cafe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cafe.dao.ProductoDao;
import com.cafe.data.Productos;

@Service
public class ActionServiceImpl implements ActionService {
	private final ProductoDao productoDao;
	
	@Autowired
	public ActionServiceImpl(ProductoDao productoDao) {
		this.productoDao = productoDao;
	}


	@Override
	public List<Productos> getAllProducts() {
		
		return productoDao.getAllProductos();
	}


	@Override
	public void saveProducto(Productos producto) {
		productoDao.save(producto);
		
	}
	
	@Override
	public void updateProducto(Productos producto) {
		productoDao.update(producto);
		
	}
	
	@Override
	public void deleteProducto(Productos producto) {
		productoDao.delete(producto);
		
	}
	
	@Override
	public Productos getProducto(int n) {
		return productoDao.get(n);
		
	}

}
