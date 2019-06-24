package com.cafe.service;

import java.util.List;

import com.cafe.data.Productos;

public interface ActionService {
	List<Productos> getAllProducts();
	void saveProducto(Productos producto);
	void updateProducto(Productos producto);
	void deleteProducto(Productos producto);
	Productos getProducto(int n);
}
