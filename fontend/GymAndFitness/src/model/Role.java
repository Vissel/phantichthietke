package model;

public class Role {
	private int roleID;
	private String roleCode;
	private String roleName;
	private String description;
	private int status;
	public Role(String roleCode, String roleName, String description, int status) {
		super();
		this.roleCode = roleCode;
		this.roleName = roleName;
		this.description = description;
		this.status = status;
	}
	public Role() {}
	
	public int getRoleID() {
		return roleID;
	}
	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}
	public String getRoleCode() {
		return roleCode;
	}
	public void setRoleCode(String roleCode) {
		this.roleCode = roleCode;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
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
	@Override
	public String toString() {
		return "Role [roleID=" + roleID + ", roleCode=" + roleCode + ", roleName=" + roleName + ", description="
				+ description + ", status=" + status + "]";
	}
	
}
