package com.sistVentas.data.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

import com.sistVentas.data.models.Producto;
import com.sistVentas.data.models.Usuario;
import com.sistVentas.data.repositories.UsuarioRepository;

@Service
public class UsuarioService {
	
	@Autowired
	UsuarioRepository usuarioRepository;
	
	public Usuario save(Usuario usuario) {
	/*	 String hashed = BCrypt.hashpw(persona.getPassword(), BCrypt.gensalt());
		 System.out.println("password hashed "+hashed);
		 persona.setPassword(hashed);*/
		return usuarioRepository.save(usuario);
	}

	public Object findAll() {
		return usuarioRepository.findAll();
	}
	
	public Usuario findById(Long id) {
		return usuarioRepository.findById(id).get();
	}
	
	public void eliminar(@PathVariable("id") Long id) {	
		usuarioRepository.deleteById(id);
		
	}
	/*
	public Usuario findByEmail(String email) {
		return usuarioRepository.findByEmail(email);
	}
	*/

	

}
