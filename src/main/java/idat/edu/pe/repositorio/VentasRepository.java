package idat.edu.pe.repositorio;

import org.springframework.data.repository.CrudRepository;

import idat.edu.pe.modelo.Venta;

public interface VentasRepository extends CrudRepository<Venta, Integer> {
}
