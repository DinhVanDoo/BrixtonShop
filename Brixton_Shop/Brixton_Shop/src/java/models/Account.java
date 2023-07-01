/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author dinhd513
 */
public class Account {
    private String accId;
    private String accPassword;
    private int role;
    private String name;
    private String address;
    private String phone;
    private int quesId;
    private String answer;
    

    public Account() {
    }

    public Account(String accId, String accPassword, int role, String name, String address, String phone, int quesId, String answer) {
        this.accId = accId;
        this.accPassword = accPassword;
        this.role = role;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.quesId = quesId;
        this.answer = answer;
    }

    public String getAnswer() {
        return answer;
    }

    public int getQuesId() {
        return quesId;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public void setQuesId(int quesId) {
        this.quesId = quesId;
    }

    

    

    public String getAccId() {
        return accId;
    }

    public void setAccId(String accId) {
        this.accId = accId;
    }

    public String getAccPassword() {
        return accPassword;
    }

    public void setAccPassword(String accPassword) {
        this.accPassword = accPassword;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }
    
    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Override
    public String toString() {
        return "Account{" + "accId=" + accId + ", accPassword=" + accPassword + ", role=" + role + ", name=" + name + ", address=" + address + ", phone=" + phone + '}';
    }

   
    
    
    
}
