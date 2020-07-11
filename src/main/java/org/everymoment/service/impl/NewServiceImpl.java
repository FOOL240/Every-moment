package org.everymoment.service.impl;

import java.util.List;

import org.everymoment.dao.NewMapper;
import org.everymoment.pojo.New;
import org.everymoment.service.NewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class NewServiceImpl implements NewService{
	
	@Autowired
	private NewMapper newMapper;
	
	public List<New> getAllNew() {
		return newMapper.selectAll();
	}

}
