package com.hackday.po;




public class Property {
  private String tableId;//表格id
  private String propertyName;//属性名称
  private String dataType;//数据类型
  private String ableNull;//是否能为空
  private String remarks;//备注
  /**
	 * @describe 下面是一系列的getter，setter方法
	 * @return
	 */
public String getTableId() {
	return tableId;
}
public void setTableId(String tableId) {
	this.tableId = tableId;
}
public String getPropertyName() {
	return propertyName;
}
public void setPropertyName(String propertyName) {
	this.propertyName = propertyName;
}
public String getDataType() {
	return dataType;
}
public void setDataType(String dataType) {
	this.dataType = dataType;
}
public String getAbleNull() {
	return ableNull;
}
public void setAbleNull(String ableNull) {
	this.ableNull = ableNull;
}
public String getRemarks() {
	return remarks;
}
public void setRemarks(String remarks) {
	this.remarks = remarks;
}
}
