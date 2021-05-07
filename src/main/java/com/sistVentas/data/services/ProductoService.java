package com.sistVentas.data.services;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

import com.sistVentas.data.models.Producto;
import com.sistVentas.data.repositories.ProductoRepository;

@Service
public class ProductoService {

	@Autowired
	ProductoRepository productoRepository;
	
	public void save(Producto curso) {
		productoRepository.save(curso);
	}
	
	
	public Object findAll() {
		return productoRepository.findAll();
	}
	
	public Optional<Producto> findById(Long id) {
		return productoRepository.findById(id);
	}
	
	public void eliminar(@PathVariable("id") Long id) {	
		productoRepository.deleteById(id);
	}

}
