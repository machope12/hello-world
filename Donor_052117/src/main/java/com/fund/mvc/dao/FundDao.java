package com.fund.mvc.dao;

import com.fund.mvc.bean.FundBean;
import java.text.ParseException;
import java.util.List;

public abstract interface FundDao
{
  public abstract List<FundBean> getFundList();
  
  public abstract List<FundBean> getMainFund(FundBean paramFundBean);
  
  public abstract void updateDonorData(FundBean paramFundBean);
  
  public abstract void insertFund(FundBean paramFundBean);
  
  public abstract List<FundBean> getDonorList(FundBean paramFundBean);
  
  public abstract List<FundBean> getActiveFund(FundBean paramFundBean);
  
  public abstract List<FundBean> getFund(FundBean paramFundBean);
  
  public abstract List<FundBean> editFund(FundBean paramFundBean)
    throws ParseException;
  
  public abstract void updateEditData(FundBean paramFundBean);
  
  public abstract void getDonorInsert(FundBean paramFundBean);
  
  public abstract void deleteRecord(FundBean paramFundBean);
  
  
}