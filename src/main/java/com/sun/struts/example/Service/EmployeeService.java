package com.sun.struts.example.Service;

import com.sun.struts.example.model.Employee;

import java.util.List;

public interface EmployeeService {

    public List getAllEmployees();

    public void updateEmployee(Employee emp);

    public void deleteEmployee(Integer id);

    public Employee getEmployee(Integer id);

    public void insertEmployee(Employee emp);
}
