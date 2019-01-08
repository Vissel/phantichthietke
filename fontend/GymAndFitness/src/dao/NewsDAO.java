package dao;

import java.util.List;

import model.News;

public interface NewsDAO {
List<News> listAllNews();
String getCreaterName(int createrID);
}
