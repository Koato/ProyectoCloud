package com.cibertec.cloud.service;

import com.cibertec.cloud.entity.Libro;

import java.util.List;
import java.util.Optional;

public interface LibroService {

    List<Libro> listarTodos();
    Optional<Libro> obtenerPorId(Long id);
    Libro guardar(Libro libro);
    void eliminar(Long id);
}
