package com.mycompany.urihome_mini_web.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Recipient {
	private int onumber;
	private String rname;
	private String rphone;
	private String rzip;
	private String raddress;
	private String rdetailAddress;
}
