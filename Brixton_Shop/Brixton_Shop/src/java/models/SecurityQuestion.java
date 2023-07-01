/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author dinhd513
 */
public class SecurityQuestion {
    private int quesId;
    private String quesion;

    public SecurityQuestion() {
    }

    public SecurityQuestion(int quesId, String quesion) {
        this.quesId = quesId;
        this.quesion = quesion;
    }

    public int getQuesId() {
        return quesId;
    }

    public void setQuesId(int quesId) {
        this.quesId = quesId;
    }

    public String getQuesion() {
        return quesion;
    }

    public void setQuesion(String quesion) {
        this.quesion = quesion;
    }
     
    
}
