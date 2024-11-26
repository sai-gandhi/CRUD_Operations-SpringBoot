package com.klef.jfsd.springboot.repository;
import com.klef.jfsd.springboot.model.Product;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {
	
}

