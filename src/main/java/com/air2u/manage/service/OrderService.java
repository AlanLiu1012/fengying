package com.air2u.manage.service;

import com.air2u.manage.condition.CustomerCondition;
import com.air2u.manage.condition.OrderCondition;
import com.air2u.manage.dao.CustomerMapper;
import com.air2u.manage.dao.OrderMapper;
import com.air2u.manage.dao.UserMapper;
import com.air2u.manage.entity.Customer;
import com.air2u.manage.entity.Order;
import com.air2u.manage.entity.User;
import com.air2u.manage.entity.UserExample;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class OrderService {
    @Autowired
    private OrderMapper orderMapper;

    @Transactional
    public Integer addOrder(Order order){
    	Integer result = orderMapper.insertSelective(order);
        return result;
    }

    
    public List<Order> selectAll(OrderCondition condition){
    	PageHelper.startPage(condition.getPageNum(), condition.getPageSize());
    	
    	List<Order> orders = orderMapper.selectAll(condition);
        return orders;
    }
    
    public Order selectByPrimaryKey(Integer id){
    	Order order = orderMapper.selectByPrimaryKey(id);
        return order;
    }

    @Transactional
    public Integer editOrder(Order order){
    	Integer result = orderMapper.updateByPrimaryKeySelective(order);
        return result;
    }
}
