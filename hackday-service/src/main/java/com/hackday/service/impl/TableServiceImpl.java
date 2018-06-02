package com.hackday.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hackday.po.NodeTable;
import com.hackday.service.TableService;

@Service
@Transactional
public class TableServiceImpl implements TableService{
	
	/**
	 * 添加结点
	 */
	public void add(NodeTable table) throws Exception {
		// TODO Auto-generated method stub
        
	}

	/**
	 * 删除结点，还是删除结点表？
	 */
	public void delete(NodeTable table) throws Exception {
		// TODO Auto-generated method stub

	}

	/**
	 * 查询结点表
	 */
	public NodeTable getTableById(String tableid) throws Exception {
		// TODO Auto-generated method stub
		NodeTable table = null;
		// table=mhackdayer.findById(tableid);
		if (table == null) {
			throw new Exception("table is not existed");
		}
		return table;
	}

}
