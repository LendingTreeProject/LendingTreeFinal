package com.web.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.DAO.UserDao;
import com.web.DTO.LoanApplication;
import com.web.DTO.User;

@Controller
public class HomeController {
	@Autowired
	private UserDao userDao;
    
	@RequestMapping("/home")
	public String home() {
		System.out.println("return the home page");
    
		return "home";
	}
	@RequestMapping("/register")
	public String register() {

		return "RegForm";
	}
	
	@RequestMapping("/RegForm")
	public String RegForm() {

		return "RegForm";
	}
	@RequestMapping("/adminReg")
	public String adminReg() {

		return "adminReg";
	}


	@RequestMapping("/login")
	public String login() {

		return "login";
	}

	@RequestMapping("/loginsuccess")
	public String loginsuccess() {

		return "loginsuccess";
	}

	@RequestMapping("/LoginValidation")
	public String LoginValidation() {

		return "LoginValidation";
	}

	@RequestMapping("/welcome")
	public String welcome() {

		return "welcome";
	}

	@RequestMapping("/profile")
	public ModelAndView profile(HttpSession session) {
		String uid = session.getAttribute("uname").toString();
		System.out.println("Welcome :" + uid);
		ModelAndView mv = new ModelAndView();
		String category = userDao.getUserCategory(uid);
		String cat = category.toLowerCase().toString().trim();
		session.setAttribute("uid", uid);

		try {
			switch (cat) {
			case "admin":
				mv.setViewName("AdminProfile");
				break;

			case "user":
				mv.setViewName("UserProfile");
				break;
			/*
			 * case "agent": mv.setViewName("AgentProfile"); break;
			 */
			default:
				String data = "something gone wrong";
				mv.addObject(data);
				System.out.println("something gone wrong");
				System.out.println(category == null);
				break;
			}

		} catch (Exception e) {
			String data = "something gone wrong";
			mv.addObject(data);
			System.out.println("something gone wrong");
			System.out.println(category == null);
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/RegFormValidation")
	public String RegFormValidation() {

		return "RegFormValidation";
	}

	@RequestMapping("/userCreated")
	public ModelAndView userRegistration(@ModelAttribute("user") User user, Map<String, Object> model) {
		System.out.println(user.toString());
		userDao.save(user);
		ModelAndView mv = new ModelAndView("welcome");
		mv.addObject("user", user);
		return mv;
	}
	
	@RequestMapping("/AdminProfile")
	public String AdminProfile() {
		return "AdminProfile";
	}

	@RequestMapping("/logout")
	public String logout() {
		return "logout";
	}
}

