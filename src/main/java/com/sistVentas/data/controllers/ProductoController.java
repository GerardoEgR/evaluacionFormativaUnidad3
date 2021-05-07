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
import com.sistVentas.data.services.ProductoService;

@Controller
@RequestMapping("/producto")
public class ProductoController {
	
	@Autowired
	ProductoService productoService;
	@Autowired
	CategoriaService categoriaService;
	
	@RequestMapping("")
	public String inicioProducto(Model model) {
		model.addAttribute("listaProductos", productoService.findAll());
		model.addAttribute("listaCategorias", categoriaService.findAll());
		return "producto.jsp";
	}
	
	@RequestMapping("/insertar")
	public String insertar(@RequestParam("nombre") String nombre,
			@RequestParam("descripcion") String descripcion,
			@RequestParam("precio") String precio
			) {
		Producto prod = new Producto();
		prod.setNombre(nombre);
		prod.setPrecio(Float.parseFloat(precio));
		prod.setDescripcion(descripcion);
		
		productoService.save(prod);
		
		return "redirect:/producto";
	}
	
	@RequestMapping("/editar/{id}")
	public String editar(@PathVariable("id") Long id, Model model) {
		Optional<Producto> prod= productoService.findById(id);
		
		List<Categoria> listaCategorias =  categoriaService.findAll();
		
		model.addAttribute("producto", prod);
		model.addAttribute("listaCategorias", listaCategorias);
		return "editProducto.jsp";
	}
	
	@RequestMapping("/update")
	public String update(@ModelAttribute("producto")Producto prod ) {
		productoService.save(prod);
		return "redirect:/producto";
	}
	
	@RequestMapping("/eliminar/{id}")
	public String eliminar(@PathVariable("id") Long id, Model model) {
		productoService.eliminar(id);
		return "redirect:/producto";
		}

}
