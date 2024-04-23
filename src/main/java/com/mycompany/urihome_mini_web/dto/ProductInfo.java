package com.mycompany.urihome_mini_web.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductInfo {
	private String thumbnail;
	private String bodyImage;
	private int pno;
	private String pname;
	private int pprice;
	private int pamount;
	private int psellCount;
	
}
