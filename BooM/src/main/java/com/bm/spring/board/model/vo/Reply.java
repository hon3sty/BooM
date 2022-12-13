package com.bm.spring.board.model.vo;

import java.sql.Date;

public class Reply {
	private int replyNo;           // REPLY_NO
	private int refBno; 	       // REF_BNO
	private String boardWriter;    // BOARD_WRITER
	private String reply;          // REPLY
	private int replytDepth;       // REPLY_DEPTH
	private int replySort;         // REPLY_SORT
	private int replyGroup;        // REPLY_GROUP
	private Date replyDate;        // REPLY_DATE
	private String status;         // STATUS
}
