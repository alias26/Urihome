package com.mycompany.urihome_mini_web.dto;

import java.sql.Clob;
import java.util.Date;

import lombok.Data;

@Data
public class BoardProduct {
	private int bpnumber;
	private String bptitle;
	private String bpwriter;
	private String bpimage;
	private Clob bpcontent;
	private Date bpdate;
	private String pid;
	private String bptyle;
}
