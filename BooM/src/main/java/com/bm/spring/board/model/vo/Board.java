package com.bm.spring.board.model.vo;

import java.sql.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Board {
	private int boardNo; //	BOARD_NO
	private int bCategoryNo; //	BCATEGORY_NO
	private String boardWriter; //	BOARD_WRITER
	private String boardTitle; //	BOARD_TITLE
	private String boardContent; //	BOARD_CONTENT
	private Date boardDate; //	BOARD_DATE
	private int boardCount; //	BOARD_COUNT
	private String boardStatus; //	BOARD_STATUS
	private int boardLike; //	BOARD_LIKE
	private String boardComment; //	BOARD_COMMENT
	private String boardSort; //	BOARD_SORT
	private String boardDepth; //	BOARD_DEPTH
}
