package com.air2u.manage.service;

import com.air2u.manage.condition.CustomerCondition;
import com.air2u.manage.dao.CustomerMapper;
import com.air2u.manage.dao.UserMapper;
import com.air2u.manage.entity.Customer;
import com.air2u.manage.entity.User;
import com.air2u.manage.entity.UserExample;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CustomerService {
    @Autowired
    private CustomerMapper customerMapper;

    @Transactional
    public Integer addCustomer(Customer customer){
    	Integer result = customerMapper.insertSelective(customer);
        return result;
    }

    
    public List<Customer> selectAll(CustomerCondition condition){
    	PageHelper.startPage(condition.getPage(), condition.getSize());
    	
    	List<Customer> customers = customerMapper.selectAll(condition);
        return customers;
    }
    
    public Customer selectByPrimaryKey(Integer id){
        Customer customer = customerMapper.selectByPrimaryKey(id);
        return customer;
    }

    @Transactional
    public Integer editCustomer(Customer customer){
    	Integer result = customerMapper.updateByPrimaryKey(customer);
        return result;
    }
}
