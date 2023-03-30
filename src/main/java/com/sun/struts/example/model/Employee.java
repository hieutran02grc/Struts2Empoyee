package com.sun.struts.example.model;

import java.io.Serializable;

public class Employee implements Serializable {

    private Integer employeeId;

    private Integer age;

    private String firstName;

    private String lastName;

    private byte[] image;


    public Employee() {
    }

    public Employee(Integer employeeId, String firstName, String lastName, Integer age, byte[] image) {
        this.employeeId = employeeId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.age = age;
        this.image = image;
    }

    public Integer getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public byte[] getImage(){return image; }

    public void setImage(byte[] image){this.image = image;}

}
