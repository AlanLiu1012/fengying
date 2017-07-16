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

   /* @Transactional
    public int add(User user){
        int result = userMapper.insertSelective(user);
        return result;
    }
*/
    public List<Customer> selectAll(CustomerCondition condition){
        List<Customer> customers = customerMapper.selectAll(condition);
        return customers;
    }
}
