package com.air2u.manage.controller;

import com.air2u.manage.condition.CustomerCondition;
import com.air2u.manage.entity.Customer;
import com.air2u.manage.entity.User;
import com.air2u.manage.model.CustomerModel;
import com.air2u.manage.model.UserLoginModel;
import com.air2u.manage.service.CustomerService;
import com.air2u.manage.service.UserService;
import com.github.pagehelper.PageInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/list")
    public ModelAndView list(@ModelAttribute CustomerCondition condition, Model model, String language, HttpServletRequest request) {
    	HttpSession session = request.getSession();
    	ModelAndView mav = new ModelAndView();
    	
    	PageInfo<Customer> pageInfo = customerService.selectAll(condition);
    	model.addAttribute("pageInfo", pageInfo);
        
        //获得当前页
        mav.addObject("pageNum", pageInfo.getPageNum());
        //获得一页显示的条数
        mav.addObject("pageSize", pageInfo.getPageSize());
        //是否是第一页
        mav.addObject("isFirstPage", pageInfo.isIsFirstPage());
        //获得总页数
        mav.addObject("totalPages", pageInfo.getPages());
        //是否是最后一页
        mav.addObject("isLastPage", pageInfo.isIsLastPage());
        
        mav.setViewName("customer_list");
        return mav;
    }
    
    @RequestMapping(value = "/add_customer", method = RequestMethod.GET)
    public ModelAndView add_customer(HttpServletRequest request) {
    	ModelAndView mav = new ModelAndView();
        mav.setViewName("add_customer");
		return mav;
    }
    
    @RequestMapping(value = "/addCustomer", method = RequestMethod.POST)
    public ModelAndView addCustomerToDB(@ModelAttribute CustomerModel model, HttpServletRequest request) {
    	ModelAndView mav = new ModelAndView();
    	
    	Customer customer = model.toCustomer(model);
    	Integer result = customerService.addCustomer(customer);
    	
    	mav.setViewName("redirect:/customer/list");
		return mav;
    }
    
    @RequestMapping(value = "/edit_customer/{id}", method = RequestMethod.GET)
    public String edit_customer(@PathVariable("id") Integer id, Model model) {
    	Customer customer = null;
    	if(id != null){
    		customer = customerService.selectByPrimaryKey(id);
    	}
    	model.addAttribute("customer", customer);
    	return "edit_customer";
    }
    
    @RequestMapping(value = "/editCustomer", method = RequestMethod.POST)
    public ModelAndView editCustomerToDB(@ModelAttribute CustomerModel model, HttpServletRequest request) {
    	ModelAndView mav = new ModelAndView();
    	
    	Customer customer = model.toCustomer(model);
    	Integer result = customerService.editCustomer(customer);
    	
    	mav.setViewName("redirect:/customer/list");
		return mav;
    }
    
}
