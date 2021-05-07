package com.sistVentas.data.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sistVentas.data.models.Usuario;

@Controller
public class HomeController {
	
	@RequestMapping("/")
		public String index(HttpSession session) {
			//session.invalidate();
			session.setAttribute("registrado",0);
		return "index.jsp";
		}
	

	@RequestMapping("/home")
	public String home() {
		return "home.jsp";
	}
	
	@RequestMapping("/registro")
	public String registro(@Valid @ModelAttribute("usuario") Usuario usuario,Model model) {
		model.addAttribute("usuario", new Usuario());
		return "usuario.jsp";
	}

}
