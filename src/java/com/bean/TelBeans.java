/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.bean;

/**
 *
 * @author SHASHWAT
 */
public class TelBeans {
    private String tagId;
    private String tagName;
    private String tagDescription;
    private String tagType;
    private String reserviourId;
    private String location;
    private String lowLevel;
    private String highLevel;
    private String genrateAlarm;
    private String genrateEvent;
    private String tagParameter;
    public String getTagParameter() {
        return tagParameter;
    }

    public void setTagParameter(String tagParameter) {
        this.tagParameter = tagParameter;
    }

   

    public String getReserviourId() {
        return reserviourId;
    }

    public void setReserviourId(String reserviourId) {
        this.reserviourId = reserviourId;
    }
    

    public String getGenrateAlarm() {
        return genrateAlarm;
    }

    public void setGenrateAlarm(String genrateAlarm) {
        this.genrateAlarm = genrateAlarm;
    }

    public String getGenrateEvent() {
        return genrateEvent;
    }

    public void setGenrateEvent(String genrateEvent) {
        this.genrateEvent = genrateEvent;
    }
   

    
    public String getTagId() {
        return tagId;
    }

    public void setTagId(String tagId) {
        this.tagId = tagId;
    }

    public String getTagName() {
        return tagName;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName;
    }

    public String getTagDescription() {
        return tagDescription;
    }

    public void setTagDescription(String tagDescription) {
        this.tagDescription = tagDescription;
    }

    public String getTagType() {
        return tagType;
    }

    public void setTagType(String tagType) {
        this.tagType = tagType;
    }

  

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getLowLevel() {
        return lowLevel;
    }

    public void setLowLevel(String lowLevel) {
        this.lowLevel = lowLevel;
    }

    public String getHighLevel() {
        return highLevel;
    }

    public void setHighLevel(String highLevel) {
        this.highLevel = highLevel;
    }
}
