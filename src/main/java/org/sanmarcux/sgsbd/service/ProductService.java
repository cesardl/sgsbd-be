package org.sanmarcux.sgsbd.service;

import org.sanmarcux.sgsbd.model.Product;

import java.util.List;

/**
 * Created for sgsbd on 25/08/2022.
 *
 * @author Cesardl
 */
public interface ProductService {

    Product save(Product product);

    List<Product> getAll();
}
