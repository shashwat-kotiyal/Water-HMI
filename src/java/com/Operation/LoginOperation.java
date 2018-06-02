/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Operation;

import com.bean.Login;

/**
 *
 * @author SHASHWAT
 */
public interface LoginOperation {

    /**
     *
     * @param username
     * @return
     */
    public boolean validate(Login log);
    
}
