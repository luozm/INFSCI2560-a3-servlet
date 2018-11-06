/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mbs;

import java.io.Serializable;

/**
 * @author Zhimeng Luo
 */
public class myBean extends Object implements Serializable {

    public static final String ISTATUS = "please login";

    private String status;
    private String name;
    private String password;

    public myBean() {
        status = ISTATUS;
        name = new String();
        password = new String();
    }

    public String getStatus() {return status;}
    public void setStatus(String value) {status = value;}

    public String getName() {return name;}
    public void setName(String value) {this.name = value;}
    
    public String getPassword() {return password;}
    public void setPassword(String value) {this.password = value;}

}
