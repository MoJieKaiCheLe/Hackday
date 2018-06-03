package com.hackday.po;

import java.util.List;


public class People {
	// 还有字体 大小 颜色
	private List<String> nodeIdList;// 所在分类列表
	private List<String> pageIdList;//  所在图谱列表
	private String peopleId;// 图谱中人的id
	private String peopleName;// 人员名字
	private String photo; // 相片
	private String idCardNum;//人员身份证号
	private String tips;//人员信息提示
	private int fontSize;//字体大小
	private String fontColor;//字体颜色
	private String borderType;//边框颜色
	private String borderWidth;//边框粗细
	private String borderColor;//边框颜色

	private List InfoTableList;
	public List getInfoTableList() {
		return InfoTableList;
	}
	public void setInfoTableList(List infoTableList) {
		InfoTableList = infoTableList;
	}
	/**
	 * @describe 属性的setter，getter方法。以及toString的重写
	 * @return
	 */
	
	public List<String> getNodeIdList() {
		return nodeIdList;
	}
	public void setNodeIdList(List<String> nodeIdList) {
		this.nodeIdList = nodeIdList;
	}
	public List<String> getPageIdList() {
		return pageIdList;
	}
	public void setPageIdList(List<String> pageIdList) {
		this.pageIdList = pageIdList;
	}
	public String getPeopleId() {
		return peopleId;
	}
	public void setPeopleId(String peopleId) {
		this.peopleId = peopleId;
	}
	public String getPeopleName() {
		return peopleName;
	}
	public void setPeopleName(String peopleName) {
		this.peopleName = peopleName;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getIdCardNum() {
		return idCardNum;
	}
	public void setIdCardNum(String idCardNum) {
		this.idCardNum = idCardNum;
	}
	public String getTips() {
		return tips;
	}
	public void setTips(String tips) {
		this.tips = tips;
	}
	public int getFontSize() {
		return fontSize;
	}
	public void setFontSize(int fontSize) {
		this.fontSize = fontSize;
	}
	public String getFontColor() {
		return fontColor;
	}
	public void setFontColor(String fontColor) {
		this.fontColor = fontColor;
	}
	public String getBorderType() {
		return borderType;
	}
	public void setBorderType(String borderType) {
		this.borderType = borderType;
	}
	public String getBorderWidth() {
		return borderWidth;
	}
	public void setBorderWidth(String borderWidth) {
		this.borderWidth = borderWidth;
	}
	public String getBorderColor() {
		return borderColor;
	}
	public void setBorderColor(String borderColor) {
		this.borderColor = borderColor;
	}
	@Override
	public String toString() {
		return "People [nodeIdList=" + nodeIdList + ", pageIdList=" + pageIdList + ", peopleId=" + peopleId
				+ ", peopleName=" + peopleName + ", photo=" + photo + ", idCardNum=" + idCardNum + ", tips=" + tips
				+ ", fontSize=" + fontSize + ", fontColor=" + fontColor + ", borderType=" + borderType
				+ ", borderWidth=" + borderWidth + ", borderColor=" + borderColor + "]";
	}

}
