/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Operation;

/**
 *
 * @author SHASHWAT
 */
public interface TeleOperation { public boolean save(Object obj);
    public boolean delete(String id);
    public boolean update(Object obj);
    public boolean deleteAll();
    public String view(String id);
    public Object[] veiwAll();
    
}
