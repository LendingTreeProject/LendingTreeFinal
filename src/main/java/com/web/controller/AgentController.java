package com.web.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.DAO.AgentDao;
import com.web.DTO.Agent;
import com.web.DTO.Pickup_dept;

@Controller
public class AgentController {

	@Autowired
	private AgentDao agentDao;
	
	@RequestMapping("/AgentRegistration")
	public String agentRegistration() {
		return "AgentRegistration";
	}

	@RequestMapping("/AgentProfile")
	public String AgentProfile() {
		return "AgentProfile";
	}

	@RequestMapping("/agentCreated")
	public ModelAndView agentRegistration(@ModelAttribute("agent") Agent agent, Map<String, Object> model) {
		System.out.println(agent.toString());
		agentDao.save(agent);
		ModelAndView mv = new ModelAndView("agentCreated");
		mv.addObject("agent", agent);
		return mv;
	}
	
	@RequestMapping("/AgentLogin")
	public String login() {
 
		return "AgentLogin";
	}

	@RequestMapping("/agentLoginSuccess")
	public ModelAndView loginsuccess(HttpSession session) {
		ModelAndView mv=new ModelAndView();
		String aid= (String)session.getAttribute("aid");
		System.out.println("**********  "+aid+"  ************");
		String cat=agentDao.getAgentCategory(aid);
		
		cat = cat.toLowerCase().trim();
		session.setAttribute("aid", aid);
		System.out.println("**********  "+cat+"  ************");
		try {
			switch (cat) {
			case "approval":
				mv.setViewName("AgentProfile");
				break;
			case "loan_admin":
				mv.setViewName("LoanAgencyProfile");
				break;
			case "pick_up":
				mv.setViewName("PickupAgentProfile");
				break;
			case "verification_dept":
				mv.setViewName("VerificationAgentProfile");
				break;
			case "legal_dept":
				mv.setViewName("LegalAgentProfile");
				break;
			default:
				String data = "Profile not found...!!";
				mv.addObject(data);
				System.out.println("something gone wrong");
				break;
			}
		} catch (Exception e) {
			String data = "something gone wrong";
			mv.addObject(data);
			System.out.println("something gone wrong");
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/agentLoginValidation")
	public String LoginValidation() {

		return "agentLoginValidation";
	}

	@RequestMapping("/AgentRegFormValidation")
	public String RegFormValidation() {

		return "AgentRegFormValidation";
	}
	
	@RequestMapping("/pickupAgentLogin")
	public String pickupAgentLogin() {

		return "pickupAgentLogin";
	}
	
	@RequestMapping("/pickupagentLoginSuccess")
	public String pickupagentLoginSuccess() {

		return "pickupagentLoginSuccess";
	}
	@RequestMapping("/pickupagentLoginValidation")
	public String pickupagentLoginValidation() {

		return "pickupagentLoginValidation";
	}
	@RequestMapping("/PickupAgentProfile")
	public String PickupAgentProfile() {

		return "PickupAgentProfile";
	}
	@RequestMapping("/VerificationAgentProfile")
	public String VerificationAgentProfile() {

		return "VerificationAgentProfile";
	}
	
	@RequestMapping("/LegalAgentProfile")
	public String LegalAgentProfile() {

		return "LegalAgentProfile";
	}
	@RequestMapping("/LoanAgencyProfile")
	public String LoanAgencyProfile() {

		return "LoanAgencyProfile";
	}
	
	@RequestMapping("/assignedRequests")
	public String assignedRequests(String aid) {
		ModelAndView mv=new ModelAndView();
		List<Pickup_dept> list;
		list=agentDao.getPickUpLists(aid);
		mv.addObject("list", list);
		mv.setViewName("assignedRequests");
		return "assignedRequests";
	}
}
