package com.kh.notice.model.vo;

import java.sql.Date;

public class Notice {

  private int noticeNo;
  private String noticeTitle;
  private String noticeWriter;
  private String noticeContent;
  private Date noticeDate;
  private String filePath;
  
  public Notice() {
    // TODO Auto-generated constructor stub
  }
  
  public Notice(int noticeNo, String noticeTitle, String noticeWriter, String noticeContent, Date noticeDate, String filePath) {
    super();
    this.noticeNo = noticeNo;
    this.noticeTitle = noticeTitle;
    this.noticeWriter = noticeWriter;
    this.noticeContent = noticeContent;
    this.noticeDate = noticeDate;
    this.filePath = filePath;
  }

  @Override
  public String toString() {
    return "Notice [noticeNo=" + noticeNo + ", noticeTitle=" + noticeTitle + ", noticeWriter=" + noticeWriter + ", noticeContent="
        + noticeContent + ", noticeDate=" + noticeDate + ", filePath=" + filePath + "]";
  }

  public int getNoticeNo() { return noticeNo; }
  public void setNoticeNo(int noticeNo) { this.noticeNo = noticeNo; }
  public String getNoticeTitle() { return noticeTitle; }
  public void setNoticeTitle(String noticeTitle) { this.noticeTitle = noticeTitle; }
  public String getNoticeWriter() { return noticeWriter; }
  public void setNoticeWriter(String noticeWriter) { this.noticeWriter = noticeWriter; }
  public String getNoticeContent() { return noticeContent; }
  public void setNoticeContent(String noticeContent) { this.noticeContent = noticeContent; }
  public Date getNoticeDate() { return noticeDate; }
  public void setNoticeDate(Date noticeDate) { this.noticeDate = noticeDate; }
  public String getFilePath() { return filePath; }
  public void setFilePath(String filePath) { this.filePath = filePath; }
}
