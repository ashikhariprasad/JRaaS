package edu.sjsu.cmpe.c295b;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BaseController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "Homepage";
	}
	
	@RequestMapping(value = "/whoareyou", method = RequestMethod.GET)
	public String screen2() {
		return "Screen2";
	}

	@RequestMapping(value = "companyLogin", method = RequestMethod.GET)
	public String companyLogin() {
		return "CompanyPageLogin";
	}
}
