package idat.edu.pe.repositorio;

import org.springframework.data.repository.CrudRepository;

import idat.edu.pe.modelo.Producto;

public interface ProductosRepository extends CrudRepository<Producto, Integer> {

    Producto findFirstByCodigo(String codigo);
}
