package com.cafe.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cafe.data.Productos;
import com.cafe.service.ActionService;

@Controller
public class Control {
	
	private final ActionService actionService;

	@RequestMapping(value = "home", method = RequestMethod.GET)
	public String pagInicial(ModelMap model) {

		return "main-tiles";
	}

	@RequestMapping(value = "/viewAdmin", method = { RequestMethod.POST, RequestMethod.GET })
	public String showViewAdmin(ModelMap model) {
		List<Productos> productos = actionService.getAllProducts();
		model.addAttribute("productos", productos);
		
		return "viewAdmin-Tiles";
	}

	@RequestMapping(value = "viewAddProducto", method = { RequestMethod.POST, RequestMethod.GET })
	public String addProducto(ModelMap model) {
		
		Productos productoNuevo = new Productos();
		model.addAttribute("nuevoProducto", productoNuevo);
		return "viewAddProducto-Tiles";
	}
	

	@RequestMapping(value = "/saveProducto", method = { RequestMethod.POST, RequestMethod.GET})
	public String saveProducto(ModelMap model, @ModelAttribute("nuevoProducto") Productos producto) {
		actionService.saveProducto(producto);
		
		List<Productos> productos = actionService.getAllProducts();
		model.addAttribute("productos", productos);
		return "viewAdmin-Tiles";
	}
	
	@RequestMapping(value = "viewUpdateProducto", method = { RequestMethod.POST, RequestMethod.GET })
	public String viewUpdateProducto(ModelMap model, @RequestParam("id")int id) {
		Productos prod = actionService.getProducto(id);
		model.addAttribute("nuevoProducto", prod);
		return "viewUpdateProducto-Tiles";
	}
	
	@RequestMapping(value = "/updateProducto", method = { RequestMethod.POST, RequestMethod.GET})
	public String updateProducto(ModelMap model, @RequestParam("id")int id) {
		Productos prod = actionService.getProducto(id);
		
		actionService.updateProducto(prod);
	
		
		List<Productos> productos = actionService.getAllProducts();
		model.addAttribute("productos", productos);
		return "viewAdmin-Tiles";
	}
	
	@RequestMapping(value = "/deleteProducto", method = { RequestMethod.POST, RequestMethod.GET})
	public String deleteProducto(ModelMap model, @RequestParam("id")int id) {
		Productos prod = actionService.getProducto(id);
		
		actionService.deleteProducto(prod);
		
		List<Productos> productos = actionService.getAllProducts();
		model.addAttribute("productos", productos);
		return "viewAdmin-Tiles";
	}
	
	@Autowired
	public Control(ActionService actionService) {
		this.actionService = actionService;
	}
}
