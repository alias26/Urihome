package com.mycompany.urihome_mini_web.dto;

import java.util.Date;

import lombok.Data;

@Data
public class Product {
	public String pid;
	public String pname;
	public String pthumbnail;
	public String pbody;
	public int pprice;
	public int pstock;
	public Date pdate;
	public int psellAmount;
	public int psales;

}
