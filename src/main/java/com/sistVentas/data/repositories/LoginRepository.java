package com.sistVentas.data.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.sistVentas.data.models.Login;

@Repository
public interface LoginRepository extends JpaRepository<Login, Long> {

	Login findByEmail(String email);
}
