package main.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.command.CommandHandler;

public class MainHandler implements CommandHandler {

	private static final String FORM_VIEW = "index.jsp";
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) {
		return FORM_VIEW;
	}

	
	
}
