package com.mycompany.urihome_mini_web.dto;

import java.sql.Clob;
import java.util.Date;

import lombok.Data;

@Data
public class Board {
	private int bnumber;
	private String btitle;
	private String bwriter;
	private String bimage;
	private Clob bcontent;
	private Date bdate;
	private String btype;
}
