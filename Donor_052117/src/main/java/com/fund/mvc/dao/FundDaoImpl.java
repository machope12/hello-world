package com.fund.mvc.dao;

import com.fund.mvc.bean.FundBean;
import com.fund.mvc.jdbc.DonorRowMapper;
import com.fund.mvc.jdbc.FundRowMapper;
import com.fund.mvc.jdbc.IndivDonorRowMapper;
import com.fund.mvc.jdbc.IndivMainRowMapper;
import java.io.PrintStream;
import java.text.DateFormat;
import java.text.Format;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class FundDaoImpl implements FundDao
{
  @Autowired
  DataSource dataSource;
  
  public FundDaoImpl() {}
  
  public List<FundBean> getFundList()
  {
    List<FundBean> fundList = new ArrayList();
    String sql = "select * from daf_main order by name_Of_Fund";
    JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
    fundList = jdbcTemplate.query(sql, new FundRowMapper());
    return fundList;
  }
  
  public void insertFund(FundBean fund) {
    String sql = "insert into daf_main (contact,name_of_fund,Description,notes,Active) values(?,?,?,?,?)";
    JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
    jdbcTemplate.update(sql, 
      new Object[] { Integer.valueOf(fund.getContact()), fund.getNameOfFund(), fund.getDescription(), fund.getNotes(), Integer.valueOf(fund.getActive()) });
  }
  
  public List<FundBean> getMainFund(FundBean fund)
  {
    List<FundBean> fundList = new ArrayList();
    String sql = "select * from daf_main where daf_Id = " + fund.getIndivfund();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
    fundList = jdbcTemplate.query(sql, new IndivMainRowMapper());
    return fundList;
  }
  
  public void updateDonorData(FundBean fund) {
    String sql = "update daf_main set active = " + fund.getActive() + " where daf_Id = " + fund.getDafId();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
    jdbcTemplate.update(sql);
  }
  
  public List<FundBean> getDonorList(FundBean fund)
  {
    Format formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String stop = formatter.format(fund.getStopDate());
    String start = formatter.format(fund.getStartDate());
    
    List<FundBean> fundList = new ArrayList();
    String sql = "Select daf_main.name_of_fund, Sum(daftable.Credit_Amount), Sum(daftable.Debit_Amount),Sum(daftable.Credit_Amount)- Sum(daftable.Debit_Amount) from daf_main Left Join daftable on daf_main.DAF_ID = daftable.Daf_Ref WHERE Date1 BETWEEN '" + 
    

      start + "' AND '" + stop + "'" + 
      "and daf_main.Active = '" + -1 + "'" + 
      "group by daf_main.name_of_fund desc";
    
    JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
    fundList = jdbcTemplate.query(sql, new DonorRowMapper());
    return fundList;
  }
  

  public List<FundBean> getActiveFund(FundBean fund)
  {
    List<FundBean> fundList = new ArrayList();
    String sql = "select * from daf_main where daf_main.Active = '-1'group by name_of_fund";
    JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
    fundList = jdbcTemplate.query(sql, new FundRowMapper());
    return fundList;
  }
  
  public List<FundBean> getFund(FundBean fund)
  {
    List<FundBean> fundList = new ArrayList();
    String sql = "select * from daftable where daf_ref = " + fund.getIndivfund() + " order by Date1 desc";
    JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
    fundList = jdbcTemplate.query(sql, new IndivDonorRowMapper());
    return fundList;
  }
  
  public List<FundBean> editFund(FundBean fund)
  {
    Date date = null;
    List<FundBean> fundList = new ArrayList();
    String sql = "select * from daftable where id = " + fund.getId();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
    fundList = jdbcTemplate.query(sql, new IndivDonorRowMapper());
    for (int i = 0; i < fundList.size(); i++)
    {
      FundBean fn = (FundBean)fundList.get(i);
      DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
      String strDate = dateFormat.format(fn.getDate1());
      
      fn.setDate2(strDate);
    }
    return fundList;
  }
  
  public void updateEditData(FundBean fund)
  {
    String date1 = fund.getDate2();
    Date date = null;
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy HH:mm");
    try
    {
      date = simpleDateFormat.parse(date1);

    }
    catch (ParseException ex)
    {
      System.out.println("Exception " + ex);
    }
    String sql = "UPDATE daftable SET Date1 = ?, Credit_Amount= ?,Debit_Amount= ?,Memo=? WHERE id = ?";
    JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
    jdbcTemplate.update(sql, 
      new Object[] { date, Float.valueOf(fund.getCredit_Amount()), Float.valueOf(fund.getDebit_Amount()), fund.getMemo(), Integer.valueOf(fund.getId()) }, 
      new int[] { 91, 8, 8, 12, 4 });
  }
  
  public void getDonorInsert(FundBean fund) {
    String sql = "insert into daftable (daf_ref,Date1,Credit_Amount,Debit_Amount,Memo,Advisor) values(?,?,?,?,?,?)";
    JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
    jdbcTemplate.update(sql, 
      new Object[] { fund.getIndivfund(), fund.getDate1(), Float.valueOf(fund.getCredit_Amount()), Float.valueOf(fund.getDebit_Amount()), fund.getMemo(), fund.getMemo() });
  }
  
  public void deleteRecord(FundBean fund) { 
	  String deleteSql = "DELETE FROM daftable WHERE id = ?";	  
	  JdbcTemplate template = new JdbcTemplate(dataSource);	 
	  Object[] params = { fund.getId() };  	  
	  int rows = template.update(deleteSql, params);	  	 
  }
  
  
}