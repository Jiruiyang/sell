package com.imooc.repository;

import com.imooc.dataobject.ProductCategory;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * @description：
 * @author：yangjr
 * @date：2018/3/1 Created by yangjirui on 2018/3/1.
 */
public interface ProductCategoryRepository extends JpaRepository<ProductCategory,Integer>
{

    List<ProductCategory> findByCategoryTypeIn(List<Integer> categoryTypeList);

}
