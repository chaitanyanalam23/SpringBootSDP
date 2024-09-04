package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;

public interface AdminService 
{
	public List<Employee> viewallemployees();
	public String deleteemployee(int eid);
	public Employee viewemployeebyid(int eid);
	
	public Admin checkadminlogin(String uname,String pwd);
	

}
