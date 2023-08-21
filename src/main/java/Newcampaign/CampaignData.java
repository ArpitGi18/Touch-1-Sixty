package Newcampaign;

import java.io.InputStream;

public class CampaignData {
	
	private String campaignname;
	private String mobilenumbers;
	private String selectroute;
	private String senderid;
	private String templateid;
	private String messagetext;
	public InputStream getImage() {
		return image;
	}
	public void setImage(InputStream image) {
		this.image = image;
	}
	private InputStream image;
	
	
	public String getCampaignname() {
		return campaignname;
	}
	public void setCampaignname(String campaignname) {
		this.campaignname = campaignname;
	}
	public String getMobilenumbers() {
		return mobilenumbers;
	}
	public void setMobilenumbers(String mobilenumbers) {
		this.mobilenumbers = mobilenumbers;
	}
	public String getSelectroute() {
		return selectroute;
	}
	public void setSelectroute(String selectroute) {
		this.selectroute = selectroute;
	}
	public String getSenderid() {
		return senderid;
	}
	public void setSenderid(String senderid) {
		this.senderid = senderid;
	}
	public String getTemplateid() {
		return templateid;
	}
	public void setTemplateid(String templateid) {
		this.templateid = templateid;
	}
	public String getMessagetext() {
		return messagetext;
	}
	public void setMessagetext(String messagetext) {
		this.messagetext = messagetext;
	}
	
}
