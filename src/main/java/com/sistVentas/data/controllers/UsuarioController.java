package com.sistVentas.data.controllers;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sistVentas.data.models.Usuario;
import com.sistVentas.data.services.UsuarioService;

@Controller
@RequestMapping("/usuario")
public class UsuarioController {
	
	@Autowired
	UsuarioService usuarioService;
	
	
	@RequestMapping("")
	public String inicioUsuario(Model model) {
		model.addAttribute("listaUsuarios", usuarioService.findAll());
		return "usuario.jsp";
	}
	
	@RequestMapping("/insertar")
	public String insertar(@RequestParam("rut") String rut,
			@RequestParam("nombre") String nombre,
			@RequestParam("apellido") String apellido,
			@RequestParam("email") String email,
			@RequestParam("password") String password
			) {
		Usuario usuario = new Usuario();
		usuario.setRut(rut);
		usuario.setNombre(nombre);
		usuario.setApellido(apellido);
		usuario.setEmail(email);
		usuario.setPassword(password);
		
		
		usuarioService.save(usuario);
		
		
		return "redirect:/usuario";
	}

	@RequestMapping("/editar/{id}")
	public String editar(@PathVariable("id") Long id, Model model) {
		Usuario usuario = usuarioService.findById(id);
		
		model.addAttribute("usuario", usuario);
		return "editUsuario.jsp";
	}
	
	@RequestMapping("/update")
	public String update(@ModelAttribute("usuario")Usuario usuario ) {
		usuarioService.save(usuario);
		return "redirect:/usuario";
	}

	@RequestMapping("/eliminar/{id}")
	public String eliminar(@PathVariable("id") Long id, Model model) {
		usuarioService.eliminar(id);
		return "redirect:/usuario";
		}

}
