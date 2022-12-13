package com.bm.spring.board.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class BoardAttachment {
	private int fileNo;
	private int boardNo;
	private String originName;
	private String saveName; 
	private String filePath;
	private String thumbnail;
	private Date uploadDate;
}
