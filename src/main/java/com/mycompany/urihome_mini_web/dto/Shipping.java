package com.mycompany.urihome_mini_web.dto;

import lombok.Data;

@Data
public class Shipping {
	private String snumber;
	private String onumber;
	private String mid;
	private String receiverName;
	private String receiverPhone;
	private String receiverDestZip;
	private String receiveDestDetailAddress;
}
