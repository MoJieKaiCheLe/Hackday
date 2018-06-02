package com.hackday.po;



public class NodeTable {
	private String tableId;//结点属性表id（主键）
	private String tableName;//表名
	private String nodeId;//节点id（外键）
	private String tableMain;//是否为主表

	
	/**
	 * @describe 下面是getter，setter方法以及头String的重写
	 */
	public String getTableId() {
		return tableId;
	}
	public void setTableId(String tableId) {
		this.tableId = tableId;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getNodeId() {
		return nodeId;
	}
	public void setNodeId(String nodeId) {
		this.nodeId = nodeId;
	}
	public String getTableMain() {
		return tableMain;
	}
	public void setTableMain(String tableMain) {
		this.tableMain = tableMain;
	}
	@Override
	public String toString() {
		return "NodeTable [tableId=" + tableId + ", tableName=" + tableName + ", nodeId=" + nodeId + ", tableMain="
				+ tableMain + "]";
	}



	
}