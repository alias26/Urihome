package com.mycompany.urihome_mini_web.dto;

import java.util.Date;

import lombok.Data;

@Data
public class OnumberOrderHistory {
	private int onumber;
	private String mid;
	private String ostatus;
	private Date oitemDate;
	private String pid;
	private String pname;
	private int ptotalPrice;
}
