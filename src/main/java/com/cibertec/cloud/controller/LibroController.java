package com.cibertec.cloud.controller;

import com.cibertec.cloud.entity.Libro;
import com.cibertec.cloud.service.LibroService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/libros")
public class LibroController {

    private final LibroService libroService;

    public LibroController(LibroService libroService) {
        this.libroService = libroService;
    }

    // Listar todos los libros
    @GetMapping
    public String listarLibros(Model model) {
        model.addAttribute("libros", libroService.listarTodos());
        return "lista"; // plantilla Thymeleaf: lista.html
    }

    // Mostrar formulario para agregar un libro nuevo
    @GetMapping("/nuevo")
    public String mostrarFormulario(Model model) {
        model.addAttribute("libro", new Libro());
        return "formulario"; // plantilla Thymeleaf: formulario.html
    }

    // Guardar un libro (para crear o actualizar)
    @PostMapping("/guardar")
    public String guardarLibro(@ModelAttribute Libro libro) {
        libroService.guardar(libro);
        return "redirect:/libros";
    }

    // Mostrar formulario para editar un libro existente
    @GetMapping("/editar/{id}")
    public String editarLibro(@PathVariable("id") Long id, Model model) {
        libroService.obtenerPorId(id).ifPresent(libro -> model.addAttribute("libro", libro));
        return "formulario";
    }

    // Eliminar un libro
    @GetMapping("/eliminar/{id}")
    public String eliminarLibro(@PathVariable("id") Long id) {
        libroService.eliminar(id);
        return "redirect:/libros";
    }
}

