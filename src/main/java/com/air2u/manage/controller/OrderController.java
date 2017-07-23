package com.air2u.manage.controller;

import com.air2u.manage.condition.CustomerCondition;
import com.air2u.manage.condition.OrderCondition;
import com.air2u.manage.entity.Customer;
import com.air2u.manage.entity.Order;
import com.air2u.manage.entity.User;
import com.air2u.manage.model.CustomerModel;
import com.air2u.manage.model.OrderModel;
import com.air2u.manage.model.UserLoginModel;
import com.air2u.manage.rest.Result;
import com.air2u.manage.rest.StatusCode;
import com.air2u.manage.service.CustomerService;
import com.air2u.manage.service.OrderService;
import com.air2u.manage.service.UserService;
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
@RequestMapping("/order/")
public class OrderController {

	@Autowired
	private OrderService orderService;

	@RequestMapping("/list")
	public String list(@ModelAttribute OrderCondition condition, Model model, String language,
			HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Order> list = orderService.selectAll(condition);
		if (!StringUtils.isEmpty(list)) {
			model.addAttribute("list", list);
		} else {
			model.addAttribute("list", new ArrayList());
		}
		model.addAttribute("condition", condition);
		return "order_list";
	}

	@RequestMapping(value = "/add_order", method = RequestMethod.GET)
	public ModelAndView add_order(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("add_order");
		return mav;
	}

	@RequestMapping(value = "addOrder", method = RequestMethod.POST)
	@ResponseBody
	public Result addOrder(@ModelAttribute OrderModel model) {
		Order order = model.orderFormToOrder(model);
		Integer result = orderService.addOrder(order);
		if (result > 0) {
			return Result.ok(StatusCode.SUCCESS, "添加成功！");
		} else {
			return Result.ok(StatusCode.ERROR, "添加失败！");
		}
	}

	@RequestMapping(value = "/edit_customer/{id}", method = RequestMethod.GET)
	public String edit_customer(@PathVariable("id") Integer id, Model model) {
		Customer customer = null;
		/*
		 * if(id != null){ customer = customerService.selectByPrimaryKey(id); }
		 * model.addAttribute("customer", customer);
		 */
		return "edit_customer";
	}

	@RequestMapping(value = "/editCustomer", method = RequestMethod.POST)
	public ModelAndView editCustomerToDB(@ModelAttribute CustomerModel model, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();

		/*
		 * Customer customer = model.toCustomer(model); Integer result =
		 * customerService.editCustomer(customer);
		 */
		mav.setViewName("redirect:/customer/list");
		return mav;
	}

}
