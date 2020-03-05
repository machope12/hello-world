package com.fund.mvc.service;

import com.fund.mvc.bean.FundBean;
import java.util.List;

public abstract interface FundService
{
  public abstract List<FundBean> getFundList();
  
  public abstract List<FundBean> getMainFund(FundBean paramFundBean);
  
  public abstract void updateDonorData(FundBean paramFundBean);
  
  public abstract void insertFund(FundBean paramFundBean);
  
  public abstract List<FundBean> getDonorList(FundBean paramFundBean);
  
  public abstract List<FundBean> getActiveFund(FundBean paramFundBean);
  
  public abstract List<FundBean> getFund(FundBean paramFundBean);
  
  public abstract List<FundBean> editFund(FundBean paramFundBean);
  
  public abstract void updateEditData(FundBean paramFundBean);
  
  public abstract void getDonorInsert(FundBean paramFundBean);
}