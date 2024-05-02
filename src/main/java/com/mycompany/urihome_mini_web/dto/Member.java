package com.mycompany.urihome_mini_web.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Member {
	private String mid;
	private String mpassword;
	private String mname;
	private String memail;
	private String mtel;
	private String mphone;
	private Date mdate;
	private String mzip;
	private String maddress;
	private String mdetailAddress;
	private String mrole;
	private Boolean agree1;

}
