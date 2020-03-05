package com.fund.mvc.jdbc;

import com.fund.mvc.bean.FundBean;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

public class FundExtractor implements ResultSetExtractor<FundBean>
{
  public FundExtractor() {}
  
  public FundBean extractData(ResultSet resultSet) throws SQLException, DataAccessException
  {
    FundBean fund = new FundBean();
    fund.setDaf_Id(resultSet.getInt(1));
    fund.setContact(resultSet.getInt(2));
    fund.setNameOfFund(resultSet.getString(3));
    fund.setDescription(resultSet.getString(4));
    fund.setNotes(resultSet.getString(5));
    fund.setActive(resultSet.getInt(6));
    if (fund.getActive() == -1)
    {
      fund.setActiveStatus("Yes");
    }
    else
    {
      fund.setActiveStatus("No");
    }
    return fund;
  }
  

  public FundBean extractDonorData(ResultSet resultSet)
    throws SQLException, DataAccessException
  {
    FundBean fund = new FundBean();
    fund.setNameOfFund(resultSet.getString(1));
    fund.setSumCredit(resultSet.getInt(2));
    fund.setSumDebit(resultSet.getInt(3));
    fund.setTotal(resultSet.getInt(4));
    return fund;
  }
  
  public FundBean indivDonorData(ResultSet resultSet)
    throws SQLException, DataAccessException
  {
    FundBean fund = new FundBean();
    fund.setDaf_Ref(resultSet.getInt(1));
    fund.setDate1(resultSet.getDate(2));
    fund.setDebit_Amount(resultSet.getInt(3));
    fund.setCredit_Amount(resultSet.getInt(4));
    fund.setMemo(resultSet.getString(5));
    fund.setAdvisor(resultSet.getString(6));
    fund.setId(resultSet.getInt(7));
    
    return fund;
  }
  
  public FundBean indivMainData(ResultSet resultSet)
    throws SQLException, DataAccessException
  {
    FundBean fund = new FundBean();
    fund.setDaf_Id(resultSet.getInt(1));
    fund.setContact(resultSet.getInt(2));
    fund.setNameOfFund(resultSet.getString(3));
    fund.setDescription(resultSet.getString(4));
    fund.setNotes(resultSet.getString(5));
    fund.setActive(resultSet.getInt(6));
    if (fund.getActive() == -1)
    {
      fund.setActiveStatus("Yes");
    }
    else
    {
      fund.setActiveStatus("No");
    }
    return fund;
  }
}