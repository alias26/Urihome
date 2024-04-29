package com.mycompany.urihome_mini_web.dto;

import lombok.Data;

@Data
public class orderWait {
	private String onumber;
	private String mid;
	private long cid;
	private String oname;
	private String ophone;
	private String oemail;
	private String refundAccount;
	private long ototalPrice;
}
