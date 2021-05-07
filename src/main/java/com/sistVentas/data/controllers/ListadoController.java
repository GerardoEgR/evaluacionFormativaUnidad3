package com.sistVentas.data.controllers;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sistVentas.data.models.Producto;
import com.sistVentas.data.services.CategoriaService;
import com.sistVentas.data.services.ProductoService;

@Controller
@RequestMapping("/listar")
public class ListadoController {
	
	@Autowired
	ProductoService productoService;
	@Autowired
	CategoriaService categoriaService;
	
	@RequestMapping("")
	public String listar(Model model) {
		
		model.addAttribute("listaProductos", productoService.findAll());
		return "listaProductos.jsp";
	}
	
	@RequestMapping("/carrito/{id}")
	public String carrito(@PathVariable("id") Long id, Model model) {
		Optional<Producto> prod= productoService.findById(id);
		
		model.addAttribute("productos", prod);

		return "listaProductos.jsp";
	}

}
