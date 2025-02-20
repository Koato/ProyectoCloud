package com.cibertec.cloud.repository;

import com.cibertec.cloud.entity.Libro;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LibroRepository extends JpaRepository<Libro, Long> {

}
