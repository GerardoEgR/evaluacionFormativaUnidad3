package com.sistVentas.data.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sistVentas.data.models.Categoria;
import com.sistVentas.data.models.Producto;
import com.sistVentas.data.services.CategoriaService;

@Controller
@RequestMapping("/categoria")
public class CategoriaController {
	
	@Autowired
	CategoriaService categoriaService;
	
	@RequestMapping("")
	public String inicioCategoria(Model model) {
		model.addAttribute("listaCategorias", categoriaService.findAll());
		return "categoria.jsp";
	}
	
	@RequestMapping("/insertar")
	public String insertar(@RequestParam("nombre") String nombre) {
		Categoria categoria = new Categoria();
		categoria.setNombre(nombre);
		
		categoriaService.save(categoria);
		
		return "redirect:/categoria";
	}
	
	@RequestMapping("/editar/{id}")
	public String editar(@PathVariable("id") Long id, Model model) {
		Optional<Categoria> cat= categoriaService.findById(id);
		
		List<Categoria> listaCategorias =  categoriaService.findAll();
		
		model.addAttribute("categoria", cat);
		model.addAttribute("listaCategorias", listaCategorias);
		return "editCategoria.jsp";
	}
	
	@RequestMapping("/update")
	public String update(@ModelAttribute("categoria")Categoria cat ) {
		categoriaService.save(cat);
		return "redirect:/categoria";
	}
	
	@RequestMapping("/eliminar/{id}")
	public String eliminar(@PathVariable("id") Long id, Model model) {
		categoriaService.eliminar(id);
		return "redirect:/categoria";
		}

}
