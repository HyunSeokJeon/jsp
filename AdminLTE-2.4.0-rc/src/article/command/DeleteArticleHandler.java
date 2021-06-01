package article.command;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import article.service.DeleteArticleService;
import article.service.ModifyRequest;
import auth.service.User;
import mvc.command.CommandHandler;

public class DeleteArticleHandler implements CommandHandler {
	DeleteArticleService deleteArticle = new DeleteArticleService();
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) 
			throws Exception {
		User authUser = (User) req.getSession().getAttribute("authUser");
		String pageNoVal = req.getParameter("no");
		int pageNo = Integer.parseInt(pageNoVal);
		ModifyRequest modReq = new ModifyRequest(authUser.getId(), pageNo);
		
		
		deleteArticle.deleteArticle(pageNo);
		
		return "/WEB-INF/view/article/deleteSuccess.jsp";
	}
}
