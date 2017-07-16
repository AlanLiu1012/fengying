package com.air2u.manage.controller;

import com.air2u.manage.condition.CustomerCondition;
import com.air2u.manage.entity.Customer;
import com.air2u.manage.entity.User;
import com.air2u.manage.model.UserLoginModel;
import com.air2u.manage.service.CustomerService;
import com.air2u.manage.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
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

    /*@RequestMapping("/login")
    public String add(Model model, HttpServletRequest request) {
    	HttpSession session = request.getSession();
        Locale en_US = new Locale("en", "US");
        session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, en_US);
    	return "login";
    }

    @RequestMapping(value = "/user_login", method = RequestMethod.POST)
    public ModelAndView userLogin(@ModelAttribute UserLoginModel model, HttpServletRequest request) {
    	ModelAndView mav = new ModelAndView();
    	
    	HttpSession session = request.getSession();
        Locale en_US = new Locale("en", "US");
        session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, en_US);
        mav.setViewName("userlist");
		return mav;
    }

    @RequestMapping(value = "/user_login", method = RequestMethod.GET)
    public ModelAndView getUserLogin(@ModelAttribute UserLoginModel model, HttpServletRequest request) {
    	ModelAndView mav = new ModelAndView();
    	
    	HttpSession session = request.getSession();
        Locale en_US = new Locale("en", "US");
        session.setAttribute(SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME, en_US);
        mav.setViewName("userlist");
		return mav;
    }
    
    
    */
    @RequestMapping("/list")
    public String list(@ModelAttribute CustomerCondition condition, Model model, String language, HttpServletRequest request) {
    	HttpSession session = request.getSession();
    	
        List<Customer> list = customerService.selectAll(condition);
        if(!StringUtils.isEmpty(list)){
        	model.addAttribute("list", list);
        }else{
        	model.addAttribute("list", new ArrayList());
        }
        
        return "customer_list";
    }
    
    @RequestMapping(value = "/add_customer", method = RequestMethod.GET)
    public ModelAndView add_customer(HttpServletRequest request) {
    	ModelAndView mav = new ModelAndView();
        mav.setViewName("add_customer");
		return mav;
    }
}
