package com.fund.mvc;

import com.fund.mvc.bean.FundBean;
import com.fund.mvc.service.FundService;
import java.io.PrintStream;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController
{
  private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
  
  @Autowired
  FundService fundService;
  
  public HomeController() {}
  
  @RequestMapping(value={"/"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String webPage(Locale locale, Model model)
  {
    return "DafMain";
  }
  
  @RequestMapping(value={"/home"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String web(Locale locale, Model model) {
    return "home";
  }
  
  @RequestMapping(value={"/DafMain"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String home(Locale locale, Model model) {
    logger.info("Welcome home! The client locale is {}.", locale);
    Date date = new Date();
    DateFormat dateFormat = DateFormat.getDateTimeInstance(1, 1, locale);
    String formattedDate = dateFormat.format(date);
    model.addAttribute("serverTime", formattedDate);
    return "DafMain";
  }
  
  @RequestMapping(value={"/time"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  @ResponseBody
  public String getTime(@RequestParam String name) {
    FundBean fundBean = new FundBean();
    fundBean.setIndivfund(name);
    List<FundBean> fundList = fundService.getMainFund(fundBean);
    
    fundBean.setActive(Integer.valueOf(((FundBean)fundList.get(0)).getActive()).intValue());
    fundBean.setDafId(Integer.valueOf(((FundBean)fundList.get(0)).getDaf_Id()).intValue());
    
    if (fundBean.getActive() == 0) {
      fundBean.setActive(-1);
    }
    else {
      fundBean.setActive(0);
    }
    
    fundService.updateDonorData(fundBean);
    String result = "Time for " + name;
    return result;
  }
  
  @RequestMapping({"/getList"})
  public ModelAndView getUserLIst()
  {
    List<FundBean> fundList = fundService.getFundList();
    return new ModelAndView("fundList", "fundList", fundList);
  }
  


  @RequestMapping(value={"/donation"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String home()
  {
    return "donations";
  }
  


  @RequestMapping(value={"/acknowledge"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String acknowledge()
  {
    return "acknowledge";
  }
  



  @RequestMapping({"/insert"})
  public ModelAndView insertData(@ModelAttribute FundBean fund)
  {
    if (fund.getNameOfFund() != null)
    {
      fundService.insertFund(fund);
    }
    ModelAndView model = new ModelAndView("insertFund");
    return model;
  }
  
  @RequestMapping({"/getDonorReport"})
  public ModelAndView getDonorList(@ModelAttribute FundBean fund)
  {
    List<FundBean> fundList = fundService.getDonorList(fund);
    ModelAndView model = new ModelAndView("donorFundReportResults");
    model.addObject("fundList", fundList);
    return model;
  }
  
  @RequestMapping({"/DatePicker"})
  public ModelAndView datePicker(@ModelAttribute FundBean fund)
  {
    ModelAndView model = new ModelAndView("donorFundReport");
    return model;
  }
  
  @RequestMapping({"/Design_Development"})
  public ModelAndView designandDevelopment(@ModelAttribute FundBean fund) { ModelAndView model = new ModelAndView("Design_Development");
    return model;
  }
  
  @RequestMapping({"/Database"})
  public ModelAndView database(@ModelAttribute FundBean fund) {
    ModelAndView model = new ModelAndView("Database");
    return model;
  }
  
  @RequestMapping(value={"/view"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
  public ModelAndView viewDonor(@ModelAttribute FundBean fund, HttpSession session) {
    double countTotal = 0.0D;
    
    double countCredit = 0.0D;
    double countDebit = 0.0D;
    List<FundBean> fundList = fundService.getFund(fund);
    List<FundBean> mainList = fundService.getMainFund(fund);
    
    for (int i = 0; i < fundList.size(); i++) {
      fund = (FundBean)fundList.get(i);
      
      countCredit += fund.getCredit_Amount();
      countDebit += fund.getDebit_Amount();
    }
    System.out.println(countCredit + "  " + countDebit);
    countTotal = countCredit - countDebit;
    
    NumberFormat formatter = new DecimalFormat("#0.00");
    String form = formatter.format(countTotal);
    
    fund.setIndivfund(Integer.toString(fund.getDaf_Ref()));
    String nameFund = ((FundBean)mainList.get(0)).getNameOfFund();
    session.setAttribute("dafId", Integer.valueOf(fund.getDaf_Ref()));
    
    ModelAndView modelView = new ModelAndView("indivFund");
    modelView.addObject("fundList", fundList);
    modelView.addObject("NameOfFund", nameFund);
    modelView.addObject("form", form);
    return modelView;
  }
  
  @RequestMapping({"/getFunds"})
  public ModelAndView modifyUser(@ModelAttribute("fund") FundBean fund)
  {
    List<FundBean> fundList = fundService.getActiveFund(fund);
    
    Map<Integer, String> maps = new HashMap();
    List<Map<Integer, String>> list = new ArrayList();
    for (int i = 0; i < fundList.size(); i++)
    {
      fund = (FundBean)fundList.get(i);
      maps.put(Integer.valueOf(fund.getDaf_Id()), fund.getNameOfFund());
      list.add(maps);
      maps = new HashMap();
    }
    
    ModelAndView modelView = new ModelAndView("modifyUser");
    modelView.addObject("list", list);
    return modelView;
  }
  
  @RequestMapping({"/edit"})
  public ModelAndView edit(@ModelAttribute FundBean fund, HttpSession session)
  {
    session.setAttribute("fundId", Integer.valueOf(fund.getId()));
    
    List<FundBean> fundList = fundService.editFund(fund);
    ModelAndView model = new ModelAndView("edit");
    model.addObject("fundList", fundList);
    return model;
  }
  
  @RequestMapping(value={"/editFund"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public ModelAndView insertEdit(@ModelAttribute FundBean fund, HttpSession session)
  {
    fund.setId(((Integer)session.getAttribute("fundId")).intValue());
    fundService.updateEditData(fund);
    ModelAndView model = new ModelAndView("redirect:/getFunds");
    return model;
  }
  
  @RequestMapping({"/viewDonor"})
  public ModelAndView insertDonorData(@ModelAttribute FundBean fund, HttpSession session)
  {
    List<FundBean> fundList = fundService.getFundList();
    
    Map<Integer, String> maps = new HashMap();
    List<Map<Integer, String>> list = new ArrayList();
    for (int i = 0; i < fundList.size(); i++)
    {
      fund = (FundBean)fundList.get(i);
      maps.put(Integer.valueOf(fund.getDaf_Id()), fund.getNameOfFund());
      list.add(maps);
      maps = new HashMap();
    }
    ModelAndView model = new ModelAndView("insertDonorData");
    model.addObject("list", list);
    model.addObject("fund", session.getAttribute("fund"));
    return model;
  }
  
  @RequestMapping({"/insertFund"})
  public ModelAndView insertDonorDataFund(@ModelAttribute("fund") FundBean fund, BindingResult result, HttpSession session) throws ParseException
  {
    if (result.hasErrors())
    {


      return new ModelAndView("insertDonorData");
    }
    




    Date dt = new Date();
    SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    String dateString = format.format(dt);
    StringBuffer buf = new StringBuffer(dateString);
    int start = 0;
    int end = 10;
    buf.replace(start, end, fund.getDate2());
    Date date = format.parse(buf.toString());
    fund.setDate1(date);
    
    float donation = fund.getDonation();
    if (fund.getGroup1().equals("credit")) {
      fund.setCredit_Amount(donation);
      fundService.getDonorInsert(fund);
    }
    else {
      fund.setDebit_Amount(donation);
      fundService.getDonorInsert(fund);
    }
    ModelAndView model1 = new ModelAndView("insertFund");
    return model1;
  }
}