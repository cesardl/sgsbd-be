package org.sanmarcux.sgsbd.model;

import javax.persistence.*;

/**
 * Created for sgsbd on 25/08/2022.
 *
 * @author Cesardl
 */
@Entity
@Table(name = "sgs_producto")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "n_producto_id")
    private Integer id;

    @Column(name = "s_producto_descripcion")
    private String description;

    @Column(name = "s_producto_estado")
    private String state;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
