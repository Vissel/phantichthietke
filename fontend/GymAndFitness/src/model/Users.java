package model;

import java.sql.Date;

import dao.ConfigureDAOImpl;

public class Users {
	private int userID;
	private String userCode;
	private String name;
	private int roleID;
	private int sex;
	private Date dob;
	private String phone;
	private int city;
	private int town;
	private String address;
	private String email;
	private String bankAccount;
	private String bankName;
	private String description;
	private Schedule schedule = new Schedule();
	private int status;
	
	
	public Users(String userCode, String name, int roleID, int sex, Date dob, String phone, int city, int town,
			String address, String email, String bankAccount, String bankName, String description) {
		super();
		this.userCode = userCode;
		this.name = name;
		this.roleID = roleID;
		this.sex = sex;
		this.dob = dob;
		this.phone = phone;
		this.city = city;
		this.town = town;
		this.address = address;
		this.email = email;
		this.bankAccount = bankAccount;
		this.bankName = bankName;
		this.description = description;
	}
	public Users() {}
	
	public String nameCityTown(int cityID,int townID) {
		City city = new City();
		return city.getNameCityTown(cityID,townID);
	}
//	public String nameRole(int rID) {
//		ConfigureDAOImpl config = new ConfigureDAOImpl();
//		return config.nameRole(rID);
//	}
	
	public int getUserID() {
		return userID;
	}

	public Schedule getSchedule() {
		return schedule;
	}
	public void setSchedule(Schedule schedule) {
		this.schedule = schedule;
	}
	public int getCity() {
		return city;
	}
	public void setCity(int city) {
		this.city = city;
	}
	public int getTown() {
		return town;
	}
	public void setTown(int town) {
		this.town = town;
	}
	public void setUserID(int iD) {
		userID = iD;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getRoleID() {
		return roleID;
	}

	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date bob) {
		this.dob = bob;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getBankAccount() {
		return bankAccount;
	}

	public void setBankAccount(String bankAccount) {
		this.bankAccount = bankAccount;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Users [userCode=" + userCode + ", name=" + name + ", roleID=" + roleID + ", sex=" + sex + ", bob=" + dob
				+ ", phone=" + phone + ", address=" + address + ", bankAccount=" + bankAccount + ", bankName="
				+ bankName + ", description=" + description 
				+ ", status=" + status + "\t]"+schedule;
	}
	
	
}
