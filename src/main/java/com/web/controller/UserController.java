package com.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.web.DAO.LoanDao;
import com.web.DAO.UserDao;
import com.web.DTO.Feedback;
import com.web.DTO.ForgetPass;
import com.web.DTO.ForgetUID;
import com.web.DTO.Help;
import com.web.DTO.LoanApplication;
import com.web.model.FeedbackHandler;
import com.web.model.QueryHandler;

@Controller
public class UserController {
	
	//@Autowired
	//private LoanDao loanDao;

	@Autowired
	QueryHandler queryHandler;

	@Autowired
	FeedbackHandler feedbackHandler;
	
	@RequestMapping("/help")
	public String help() {
		return "help";
	}
	
	@RequestMapping("/feedback")
	public String feedback() {
		return "feedback";
	}

	@RequestMapping("/helpData")
	public ModelAndView helpData(@RequestParam("help") String query) {
		ModelAndView mv = new ModelAndView();
		String ticket_id = queryHandler.store(query);
		if (ticket_id != null) {
			System.out.println("Data Inserted");
			mv.setViewName("queryAdded");
			mv.addObject("ticket_id", ticket_id);
		} else {
			System.out.println("Data not Inserted");
			mv.setViewName("error");
			String data = "Your query is not added... Please post Again";
			mv.addObject(data);
		}
		return mv;
	}
	
	@RequestMapping("/feedbackData") 
	public ModelAndView feedbackData(@RequestParam("feedback") String feedback) {
		ModelAndView mv = new ModelAndView();
		String feedback_id = feedbackHandler.store(feedback);
		if (feedback_id != null) {
			System.out.println("Feedback Inserted");
			mv.setViewName("FeedbackAdded");
			mv.addObject("feedback_id", feedback_id);
		} else {
			System.out.println("Data not Inserted");
			mv.setViewName("error");
			String data = "Your feedback is not added... Please post Again";
			mv.addObject(data);
		}
		return mv;
	}

	@RequestMapping("/ManageHelp")
	public ModelAndView ManageHelp(@RequestParam("action") String action, @RequestParam("ticket_id") String ticket_id) {
		ModelAndView mv = new ModelAndView("UpdateAndDelete");
//		System.out.println("Action "+ action);
//		System.out.println("Ticket Id= "+ticket_id);

		switch (action) {
		case "update":
			System.out.println("You selected to update");
			List<Help> list = queryHandler.getQueryDetails(ticket_id);
			mv.addObject("list", list);
			mv.addObject("ticket_id", ticket_id);
			break;

		case "delete":
			System.out.println("You selected to delete");
			boolean b = queryHandler.deleteQuery(ticket_id);
			if (b)
				mv.addObject("help", true);
			else
				mv.addObject("help", false);
			break;
		default:
			System.out.println("something went wrong");
			break;
		}
		return mv;
	}
	
	@RequestMapping("/ManageFeedback")
	public ModelAndView ManageFeedback(@RequestParam("action") String action, @RequestParam("feedback_id") String feedback_id) {
		ModelAndView mv = new ModelAndView("UpdateAndDeleteFeed");
//		System.out.println("Action "+ action);
//		System.out.println("Ticket Id= "+ticket_id);

		switch (action) {
		case "update":
			System.out.println("You selected to update");
			List<Feedback> list = feedbackHandler.getFeedbackDetails(feedback_id);
			mv.addObject("list", list);
			mv.addObject("feedback_id", feedback_id);
			break;

		case "delete":
			System.out.println("You selected to delete");
			boolean b = feedbackHandler.deleteFeedback(feedback_id);
			if (b)
				mv.addObject("feedback", true);
			else
				mv.addObject("feedback", false);
			break;
		default:
			System.out.println("something went wrong");
			break;
		}
		return mv;
	}

	@RequestMapping("/allSolutionDetails")
	public ModelAndView allSolutionDetails() {
		ModelAndView mv = new ModelAndView("allSolutionDetails");
		List<Help> list = queryHandler.getAllSolutionList();
		mv.addObject("list", list);
		return mv;
	}
	

	@RequestMapping("/allFeedSolutionDetails")
	public ModelAndView allFeedSolutionDetails() {
		ModelAndView mv = new ModelAndView("allFeedSolutionDetails");
		List<Feedback> list = feedbackHandler.getAllFeedSolutionList();
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping("/allQueryDetails")
	public ModelAndView allQueryDetails() {
		ModelAndView mv = new ModelAndView("allQueryDetails");
		List<Help> list = queryHandler.getAllQueryList();
		mv.addObject("list", list);
		return mv;
	}
	
	@RequestMapping("/allFeedbackDetails")
	public ModelAndView allFueryDetails() {
		ModelAndView mv = new ModelAndView("allFeedbackDetails");
		List<Feedback> list = feedbackHandler.getAllFeedbackList();
		mv.addObject("list", list);
		return mv;
	}

	@RequestMapping("/solution")
	public ModelAndView solution(@RequestParam("data") String data, @RequestParam("ticket_id") String ticket_id) {
		ModelAndView mv = new ModelAndView("solution");
		int count = queryHandler.updateHelp(data, ticket_id);
		if (count > 0) {
			mv.addObject("sol", "Your Solution updated");
		} else {
			mv.addObject("sol", "Your solution Not updated , Please try again");
		}
		return mv;
	}
	@RequestMapping("/feedsolution")
	public ModelAndView feedsolution(@RequestParam("data") String data, @RequestParam("feedback_id") String feedback_id) {
		ModelAndView mv = new ModelAndView("feedsolution");
		int count = feedbackHandler.updateFeedback(data, feedback_id);
		if (count > 0) {
			mv.addObject("feed", "Your feedback updated");
		} else {
			mv.addObject("feed", "Your feedback Not updated , Please try again");
		}
		return mv;
	}
	
	@RequestMapping("/forgetPass")
	public String forgetPass(ForgetPass forgetPass) {
		return "forgetPass";
		
	}
	@RequestMapping("/checkResetPass")
	public ModelAndView checkResetPass(ForgetPass forgetPass) {
		ModelAndView mv = new ModelAndView();
		boolean pass= queryHandler.getPass(forgetPass);
		if(pass) {
			mv.setViewName("resetPassword");
			mv.addObject("uid", forgetPass.getUid());
		}else {
			mv.setViewName("error");
			mv.addObject("data", "Wrong Credentials");
		}
		return mv;
	}
	
	@RequestMapping("/forgetUID")
	public ModelAndView forgetUID() {
		ModelAndView mv = new ModelAndView("forgetUID");
		return mv;
	}
	
	@RequestMapping("/resetPasswordValidation")
	public ModelAndView resetPasswordValidation() {
		ModelAndView mv = new ModelAndView("resetPasswordValidation");
		
		return mv;
	}
	@RequestMapping("/resetUID")
	public ModelAndView resetUID(ForgetUID forgetUID) {
		ModelAndView mv = new ModelAndView();
		
		String uid= queryHandler.getUID(forgetUID);
		if(uid==null) {
			
			mv.setViewName("error");
			mv.addObject("data", "Entered Wrong Credential");
		}else {
		mv.setViewName("resetUID");
		mv.addObject("uid", uid);
		}
		return mv;
	}
	
	@RequestMapping("/UserProfile")
	public String userProfile() {
		return "UserProfile";
	}
	
}