package com.fund.mvc.bean;

import java.util.Date;

public class FundBean
{
  int Daf_Id;
  int Daf_Ref;
  Date Date1;
  int id;
  float Debit_Amount;
  float Credit_Amount;
  String Memo;
  String Advisor;
  int dafId;
  int active;
  int contact;
  String notes;
  String description;
  String nameOfFund;
  int total;
  String start;
  String stop;
  int sumCredit;
  String activeStatus;
  int sumDebit;
  private String credit;
  private String debit;
  private String fund;
  private java.util.List<FundBean> fundList;
  private String option;
  private String indivfund;
  private String group1;
  private float donation;
  private String Date2;
  private String userId;
  private String password;
  private Date startDate;
  private Date stopDate;
  
  public FundBean() {}
  
  public int getDaf_Ref() {
    return Daf_Ref;
  }
  
  public void setDaf_Ref(int daf_Ref) {
    Daf_Ref = daf_Ref;
  }
  
  public float getDebit_Amount() {
    return Debit_Amount;
  }
  
  public void setDebit_Amount(float debit_Amount) {
    Debit_Amount = debit_Amount;
  }
  
  public float getCredit_Amount() {
    return Credit_Amount;
  }
  
  public void setCredit_Amount(float credit_Amount) {
    Credit_Amount = credit_Amount;
  }
  
  public String getMemo() {
    return Memo;
  }
  
  public void setMemo(String memo) {
    Memo = memo;
  }
  
  public String getAdvisor() {
    return Advisor;
  }
  
  public void setAdvisor(String advisor) {
    Advisor = advisor;
  }
  
  public int getDafId() {
    return dafId;
  }
  
  public void setDafId(int dafId) {
    this.dafId = dafId;
  }
  
  public int getActive() {
    return active;
  }
  
  public void setActive(int active) {
    this.active = active;
  }
  
  public int getContact() {
    return contact;
  }
  
  public void setContact(int contact) {
    this.contact = contact;
  }
  
  public String getNotes() {
    return notes;
  }
  
  public void setNotes(String notes) {
    this.notes = notes;
  }
  
  public String getDescription() {
    return description;
  }
  
  public void setDescription(String description) {
    this.description = description;
  }
  
  public String getNameOfFund() {
    return nameOfFund;
  }
  
  public void setNameOfFund(String nameOfFund) {
    this.nameOfFund = nameOfFund;
  }
  
  public int getTotal() {
    return total;
  }
  
  public void setTotal(int total) {
    this.total = total;
  }
  
  public String getStart() {
    return start;
  }
  
  public void setStart(String start) {
    this.start = start;
  }
  
  public String getStop() {
    return stop;
  }
  
  public void setStop(String stop) {
    this.stop = stop;
  }
  
  public int getSumCredit() {
    return sumCredit;
  }
  
  public void setSumCredit(int sumCredit) {
    this.sumCredit = sumCredit;
  }
  
  public int getSumDebit() {
    return sumDebit;
  }
  
  public void setSumDebit(int sumDebit) {
    this.sumDebit = sumDebit;
  }
  
  public String getFund() {
    return fund;
  }
  
  public void setFund(String fund) {
    this.fund = fund;
  }
  
  public java.util.List<FundBean> getFundList() {
    return fundList;
  }
  
  public void setFundList(java.util.List<FundBean> fundList) {
    this.fundList = fundList;
  }
  
  public int getDaf_Id() {
    return Daf_Id;
  }
  
  public void setDaf_Id(int daf_Id) {
    Daf_Id = daf_Id;
  }
  
  public String getOption() {
    return option;
  }
  
  public void setOption(String option) {
    this.option = option;
  }
  
  public String getIndivfund() { return indivfund; }
  
  public void setIndivfund(String indivfund)
  {
    this.indivfund = indivfund;
  }
  
  public String getGroup1() {
    return group1;
  }
  
  public void setGroup1(String group1) {
    this.group1 = group1;
  }
  
  public Date getDate1() {
    return Date1;
  }
  
  public void setDate1(Date date1) {
    Date1 = date1;
  }
  
  public String getActiveStatus() {
    return activeStatus;
  }
  
  public void setActiveStatus(String activeStatus) {
    this.activeStatus = activeStatus;
  }
  
  public int getId() {
    return id;
  }
  
  public void setId(int id) {
    this.id = id;
  }
  
  public String getDate2() {
    return Date2;
  }
  
  public void setDate2(String date2) {
    Date2 = date2;
  }
  
  public String getUserId() {
    return userId;
  }
  
  public void setUserId(String userId) {
    this.userId = userId;
  }
  
  public String getPassword() {
    return password;
  }
  
  public void setPassword(String password) {
    this.password = password;
  }
  
  public Date getStartDate() {
    return startDate;
  }
  
  public void setStartDate(Date startDate) {
    this.startDate = startDate;
  }
  
  public Date getStopDate() {
    return stopDate;
  }
  
  public void setStopDate(Date stopDate) {
    this.stopDate = stopDate;
  }
  
  public float getDonation() {
    return donation;
  }
  
  public void setDonation(float donation) {
    this.donation = donation;
  }
  
  public String getCredit() {
    return credit;
  }
  
  public void setCredit(String credit) {
    this.credit = credit;
  }
  
  public String getDebit() {
    return debit;
  }
  
  public void setDebit(String debit) {
    this.debit = debit;
  }
}