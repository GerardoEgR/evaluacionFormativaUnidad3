package com.sistVentas.data.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sistVentas.data.models.Categoria;
import com.sistVentas.data.services.CategoriaService;

@Controller
@RequestMapping("/categoria")
public class CategoriaController {
	
	@Autowired
	CategoriaService categoriaService;
	
	@RequestMapping("")
	public String inicioCategoria() {
		return "categoria.jsp";
	}
	
	@RequestMapping("/insertar")
	public String insertar(@RequestParam("nombre") String nombre) {
		Categoria categoria = new Categoria();
		categoria.setNombre(nombre);
		
		categoriaService.save(categoria);
		
		return "redirect:/categoria";
	}

}
