package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.News;

public class NewsDAOImpl implements NewsDAO{
private static Connection connect;
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<News> listAllNews() {
		List<News> listNews = new ArrayList<>();
		connect = ConnectDB.getConnection();
		String sql = "SELECT * FROM NEWS WHERE NEWS_STATUS =1";
		try {
			PreparedStatement prepared = connect.prepareStatement(sql);
			ResultSet rs = prepared.executeQuery();
			News news ;
			while(rs.next()) {
				news = new News();
				news.setNewsID(rs.getInt(1));
				news.setNewsCode(rs.getString(2));
				news.setNewsName(rs.getString(3));
				news.setDescription(rs.getString(4));
				news.setImg(rs.getString(5));
				news.setNewsType(rs.getInt(7));
				news.setCreaterID(rs.getInt(8));
				news.setDateCreate(rs.getDate(9));
				news.setDatePublish(rs.getDate(10));
				news.setState(rs.getInt(11));
				listNews.add(news);
			}
			rs.close();
			prepared.close();
			connect.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listNews;
	}

	@Override
	public String getCreaterName(int createrID) {
		String result ="";
		connect = ConnectDB.getConnection();
		String sql = "SELECT DISTINCT n.CREATE_ID, u.USERS_NAME\r\n" + 
				"FROM NEWS n INNER JOIN USERS u ON n.CREATE_ID=u.USERS_ID\r\n" + 
				"WHERE n.CREATE_ID = ?";
		try {
			PreparedStatement prepared = connect.prepareStatement(sql);
			prepared.setInt(1, createrID);
			ResultSet rs = prepared.executeQuery();
			while(rs.next()) {
				result = rs.getString(2);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

}
