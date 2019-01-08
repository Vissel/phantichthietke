package dao;

import java.util.List;

import model.Users;

public interface ScheduleDAO {
List<Users> getSchedule(int month, int year);
int dayOff(int month,int year, int userID);
}
