package com.newer.petstore.mapper;

import java.util.List;

import javax.naming.directory.SearchControls;

import org.apache.ibatis.annotations.Select;

import com.newer.petstore.domain.Category;
import com.newer.petstore.domain.Product;

/**
 * 产品分类的数据操作
 * 
 * @author wtao
 *
 */
public interface CategoryMapper {

	@Select("select * from category order by title")
	List<Category> findAll();

	/**
	 * 
	 * @param title 分类名称
	 * @return	该分类中所有的商品
	 */
	@Select("select * from v_product_category where c_title=#{title}")
	List<Product> getProductsByCategory(String title);

}
