package article.service;

import java.sql.Connection;
import java.sql.SQLException;

import article.dao.ArticleContentDao;
import article.dao.ArticleDao;
import article.model.Article;
import article.model.ArticleContent;
import jdbc.connection.ConnectionProvider;

public class DeleteArticleService {

	private ArticleDao articleDao = new ArticleDao();
	private ArticleContentDao contentDao = new ArticleContentDao();
	
	public void deleteArticle(int articleNum) {
		try (Connection conn = ConnectionProvider.getConnection()){
			conn.setAutoCommit(false);
			
			articleDao.delete(conn, articleNum);
			contentDao.delete(conn, articleNum);
			
			conn.commit();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
