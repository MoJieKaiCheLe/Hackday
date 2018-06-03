package com.hackday.service;

import com.hackday.po.NodeTable;

public interface TableService {
	/**
	 * @describe 添加结点表
	 * @param table
	 * @throws Exception
	 */
	public void add(NodeTable table) throws Exception;

	/**
	 * @describe 删除结点表
	 * @param table
	 * @throws Exception
	 */
	public void delete(NodeTable table) throws Exception;
	// public List<nodeTableAttr> listUserByAge(int age) throws Exception;

	/**
	 * @describe 根据id查询结点表
	 * @param tableid
	 * @return
	 * @throws Exception
	 */
	public NodeTable getTableById(String tableid) throws Exception;

}
