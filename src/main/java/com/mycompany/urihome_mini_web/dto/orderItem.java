package com.mycompany.urihome_mini_web.dto;

import java.util.Date;

import lombok.Data;

@Data
public class orderItem {
	private String onumber;
	private String mid;
	private long cid;
	private String ostaus;
	private long ototalPrice;
	private Date oitemDate;
}
