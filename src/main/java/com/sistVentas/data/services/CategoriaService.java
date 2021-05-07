package com.sistVentas.data.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

import com.sistVentas.data.models.Categoria;
import com.sistVentas.data.repositories.CategoriaRepository;

@Service
public class CategoriaService {
	
	@Autowired
	CategoriaRepository categoriaRepository;

	public void save(Categoria categoria) {
		categoriaRepository.save(categoria);
	}
	
	public List<Categoria> findAll() {	
		return categoriaRepository.findAll();
	}
	
	public void eliminar(@PathVariable("id") Long id) {	
		categoriaRepository.deleteById(id);
	}

	public Optional<Categoria> findById(Long id) {
		return categoriaRepository.findById(id);
	}
}
