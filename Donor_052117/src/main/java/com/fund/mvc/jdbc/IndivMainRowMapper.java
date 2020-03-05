package com.fund.mvc.jdbc;

import com.fund.mvc.bean.FundBean;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class IndivMainRowMapper implements RowMapper<FundBean>
{
  public IndivMainRowMapper() {}
  
  public FundBean mapRow(ResultSet resultSet, int line) throws SQLException
  {
    FundExtractor fundExtractor = new FundExtractor();
    return fundExtractor.indivMainData(resultSet);
  }
}
