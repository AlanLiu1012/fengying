package com.air2u.manage.dao;

import com.air2u.manage.condition.CustomerCondition;
import com.air2u.manage.condition.OrderCondition;
import com.air2u.manage.entity.Customer;
import com.air2u.manage.entity.Order;
import com.air2u.manage.entity.Page;

public interface OrderMapper {
	
    int deleteByPrimaryKey(Integer id);

    int insert(Order record);

    int insertSelective(Order record);

    Order selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Order record);

    int updateByPrimaryKeyWithBLOBs(Order record);

    int updateByPrimaryKey(Order record);
    
    Page<Order> selectAll(OrderCondition condition);
}