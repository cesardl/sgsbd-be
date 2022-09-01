package org.sanmarcux.sgsbd.controller;

import org.sanmarcux.sgsbd.model.Product;
import org.sanmarcux.sgsbd.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Created for sgsbd on 25/08/2022.
 *
 * @author Cesardl
 */
@RestController
@RequestMapping("/product")
@CrossOrigin
public class ProductController {

    private ProductService productService;

    @Autowired
    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    @PostMapping
    public String save(@RequestBody Product product) {
        Product productSaved = productService.save(product);
        return "New Product was saved " + productSaved.getId();
    }

    @GetMapping
    public List<Product> getAll() {
        return productService.getAll();
    }
}
