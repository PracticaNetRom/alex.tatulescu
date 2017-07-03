package ro.netrom.summercamp.summercamp2017.dto;

import java.util.Date;

public class SaveAnnouncementDto {

	private String title;

	private String content;

	private Date expireDate;

	private String location;

	private String confirmationCode;

	private String ownerEmail;

	private String ownerFirstName;

	private String ownerLastName;

	private String ownerPhone;

	private String categoryName;

	public SaveAnnouncementDto() {

	}

	public SaveAnnouncementDto(String title, String content, Date expireDate, String location, String confirmationCode,
			String ownerEmail, String ownerFirstName, String ownerLastName, String ownerPhone, String categoryName) {
		super();
		this.title = title;
		this.content = content;
		this.expireDate = expireDate;
		this.location = location;
		this.confirmationCode = confirmationCode;
		this.ownerEmail = ownerEmail;
		this.ownerFirstName = ownerFirstName;
		this.ownerLastName = ownerLastName;
		this.ownerPhone = ownerPhone;
		this.categoryName = categoryName;
	}

	public String getConfirmationCode() {
		return confirmationCode;
	}

	public void setConfirmationCode(String confirmationCode) {
		this.confirmationCode = confirmationCode;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getExpireDate() {
		return expireDate;
	}

	public void setExpireDate(Date expireDate) {
		this.expireDate = expireDate;
	}

	public String getOwnerEmail() {
		return ownerEmail;
	}

	public void setOwnerEmail(String ownerEmail) {
		this.ownerEmail = ownerEmail;
	}

	public String getOwnerFirstName() {
		return ownerFirstName;
	}

	public void setOwnerFirstName(String ownerFirstName) {
		this.ownerFirstName = ownerFirstName;
	}

	public String getOwnerLastName() {
		return ownerLastName;
	}

	public void setOwnerLastName(String ownerLastName) {
		this.ownerLastName = ownerLastName;
	}

	public String getOwnerPhone() {
		return ownerPhone;
	}

	public void setOwnerPhone(String ownerPhone) {
		this.ownerPhone = ownerPhone;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	@Override
	public String toString() {
		return "SaveAnnouncementDto [title=" + title + ", content=" + content + ", expireDate=" + expireDate
				+ ", ownerEmail=" + ownerEmail + ", ownerFirstName=" + ownerFirstName + ", ownerLastName="
				+ ownerLastName + ", ownerPhone=" + ownerPhone + ", categoryName=" + categoryName + "]";
	}

}
