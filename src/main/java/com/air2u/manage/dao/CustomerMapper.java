package com.air2u.manage.dao;

import java.util.List;

import com.air2u.manage.condition.CustomerCondition;
import com.air2u.manage.entity.Customer;

public interface CustomerMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Customer record);

    int insertSelective(Customer record);

    Customer selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);
    
    List<Customer> selectAll(CustomerCondition condition);
}