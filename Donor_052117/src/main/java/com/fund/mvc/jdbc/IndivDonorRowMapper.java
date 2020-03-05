package com.fund.mvc.jdbc;

import com.fund.mvc.bean.FundBean;
import java.sql.ResultSet;

public class IndivDonorRowMapper implements org.springframework.jdbc.core.RowMapper<FundBean>
{
  public IndivDonorRowMapper() {}
  
  public FundBean mapRow(ResultSet resultSet, int line) throws java.sql.SQLException
  {
    FundExtractor fundExtractor = new FundExtractor();
    return fundExtractor.indivDonorData(resultSet);
  }
}