package com.bm.spring.product.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.bm.spring.product.model.vo.Cart;

import org.springframework.stereotype.Repository;

@Repository
public class ProductDao {

	public ArrayList<Cart> cartGetList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("productMapper.selectCart");
	}

}
