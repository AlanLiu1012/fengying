package com.air2u.manage.dao;

import java.util.List;

import com.air2u.manage.condition.CustomerCondition;
import com.air2u.manage.entity.Customer;
import com.air2u.manage.entity.Page;

public interface CustomerMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Customer record);

    int insertSelective(Customer record);

    Customer selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);
    
    Page<Customer> selectAll(CustomerCondition condition);
}