package com.mycompany.urihome_mini_web.dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Product {
	private String pid;
	private String pname;
	private String pthumbnail;
	private String pbody;
	private int pprice;
	private int pstock;
	private Date pdate;
	private int psellAmount;
	private int psales;
	private int productHitcount;
	
	public MultipartFile pthumbnailImage;
	public MultipartFile pbodyImage;
}
