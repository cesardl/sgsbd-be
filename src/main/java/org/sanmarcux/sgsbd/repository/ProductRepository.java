package org.sanmarcux.sgsbd.repository;

import org.sanmarcux.sgsbd.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created for sgsbd on 25/08/2022.
 *
 * @author Cesardl
 */
@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {
}
