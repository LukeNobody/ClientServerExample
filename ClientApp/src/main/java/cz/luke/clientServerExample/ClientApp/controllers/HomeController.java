package cz.luke.clientServerExample.ClientApp.controllers;

import java.util.Date;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import cz.luke.clientServerExample.Common.hessian.Service;
import cz.luke.clientServerExample.Common.model.Message;

@Controller
@RequestMapping("/")
public class HomeController {

	private static final Logger logger = Logger.getLogger(HomeController.class);

	@Autowired
	public Service proceedService;

	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView index(ModelAndView mav) {
		// logger message
		if (logger.isDebugEnabled()) {
			logger.debug("index is executed!");
		}
		mav.addObject("message", new Message());
		mav.setViewName("index");
		return mav;
	}

	@RequestMapping(method = RequestMethod.POST)
	public String save(@ModelAttribute("message") @Valid Message m, BindingResult result, Model model) {
		if (result.hasErrors()) {
			// logger message
			if (logger.isDebugEnabled()) {
				logger.debug("save is executed, object is not valid");
			}
			return "index";
		} else {
			// logger message
			if (logger.isDebugEnabled()) {
				logger.debug("save is executed, object is valid and was sent on server");
			}
			m.setDate(new Date());
			model.addAttribute("message", proceedService.proceed(m));
			return "result";
		}
	}

}
