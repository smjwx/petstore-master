package com.newer.petstore.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.newer.petstore.domain.Product;

public interface ProductMapper {

	@Select ("select id, title, price,quantity,sales salesNum, concat('.',pic) picPath from products order by title")
	List<Product> findAll();
}
