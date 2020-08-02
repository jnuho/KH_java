package com.jdbc.hw.model.vo;

public class Job {
	private String jobCode;
	private String jobName;

	public Job() {
		// TODO Auto-generated constructor stub
	}

	public Job(String jobCode, String jobName) {
		super();
		this.jobCode = jobCode;
		this.jobName = jobName;
	}

	@Override
	public String toString() {
		return "Job [jobCode=" + jobCode + ", jobName=" + jobName + "]";
	}

	public String getJobCode() { return jobCode; } 
	public void setJobCode(String jobCode) { this.jobCode = jobCode; } 
	public String getJobName() { return jobName; } 
	public void setJobName(String jobName) { this.jobName = jobName; } 
}
