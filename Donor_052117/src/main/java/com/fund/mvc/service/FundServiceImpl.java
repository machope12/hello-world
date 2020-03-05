package com.fund.mvc.service;

import com.fund.mvc.bean.FundBean;
import com.fund.mvc.dao.FundDao;
import java.text.ParseException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;




public class FundServiceImpl
  implements FundService
{
  @Autowired
  FundDao fundDao;
  
  public FundServiceImpl() {}
  
  public List<FundBean> getFundList()
  {
    return fundDao.getFundList();
  }
  
  public List<FundBean> getMainFund(FundBean fund) {
    return fundDao.getMainFund(fund);
  }
  
  public void insertFund(FundBean fund) {
    fundDao.insertFund(fund);
  }
  

  public void updateDonorData(FundBean fund)
  {
    fundDao.updateDonorData(fund);
  }
  
  public List<FundBean> getDonorList(FundBean bean)
  {
    return fundDao.getDonorList(bean);
  }
  
  public List<FundBean> getActiveFund(FundBean fund)
  {
    return fundDao.getActiveFund(fund);
  }
  
  public List<FundBean> getFund(FundBean fund)
  {
    return fundDao.getFund(fund);
  }
  
  public List<FundBean> editFund(FundBean fund)
  {
    try
    {
      return fundDao.editFund(fund);
    }
    catch (ParseException e) {
      e.printStackTrace();
    }
    return null;
  }
  



  public void updateEditData(FundBean fund)
  {
    fundDao.updateEditData(fund);
  }
  
  public void getDonorInsert(FundBean fund)
  {
    fundDao.getDonorInsert(fund);
  }
}