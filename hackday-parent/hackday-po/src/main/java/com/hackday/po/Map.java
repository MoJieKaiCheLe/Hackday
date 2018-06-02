package com.hackday.po;

import java.util.List;


public class Map {
	private Page page;
	private List<Node> nodeList;// 结点链表

	/**
	 * @describe 下面是getter，setter方法
	 * @return
	 */
	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public List<Node> getNodeList() {
		return nodeList;
	}

	public void setNodeList(List<Node> nodeList) {
		this.nodeList = nodeList;
	}

}
