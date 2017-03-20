package com.soecode.lyf.web;

import com.soecode.lyf.entity.AllHead;
import com.soecode.lyf.entity.JqGridPageView;
import com.soecode.lyf.entity.SalesOrders;
import com.soecode.lyf.entity.User;
import com.soecode.lyf.service.OrderService;
import com.soecode.lyf.service.BillService;
import com.soecode.lyf.web.base.BaseController;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
/**
 * Created by lsd on 2017-03-13.
 */
@Controller
@RequestMapping("/index")
public class OrderController extends BaseController{

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private OrderService orderService;

    @Autowired
    private BillService billService;

    //进入主页
    @ResponseBody
    @RequestMapping(value = "/main", method = RequestMethod.GET)
    private ModelAndView main(String str){
        String[] kk = str.split("lsy992");
       /* String name = convertMD5(convertMD5(kk[0]));
        String pwd = convertMD5(convertMD5(kk[1]));*/
        String name =kk[0];
        String pwd = kk[1];
        System.out.println(name+pwd);
        ModelAndView mv = new ModelAndView();
        List<User> b = orderService.selectUser(name,pwd);
        if(name.equals(b.get(0).getUsername())&&pwd.equals(b.get(0).getPassword())){
            mv.setViewName("admin/index");
        }else {
            mv.setViewName("redirect:/#");
        }
        return mv;
    }
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    private ModelAndView index(String name,String pwd) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("admin/index");
        return mv;
    }
    @RequestMapping(value = "/index1", method = RequestMethod.GET)
    private ModelAndView index1(String name,String pwd) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("admin/index1");
        return mv;
    }
    @RequestMapping(value = "/index2", method = RequestMethod.GET)
    private ModelAndView index2(String name,String pwd) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("admin/index2");
        return mv;
    }
    @RequestMapping(value = "/index3", method = RequestMethod.GET)
    private ModelAndView index3(String name,String pwd) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("admin/index3");
        return mv;
    }
    @RequestMapping(value = "/index4", method = RequestMethod.GET)
    private ModelAndView index4(String name,String pwd) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("admin/index4");
        return mv;
    }
    //进入销货单
    @RequestMapping(value = "/saleput", method = RequestMethod.GET)
    private ModelAndView list() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("order/list");
        return mv;
    }
    //进入承兑付款单
    @RequestMapping(value = "/accept", method = RequestMethod.GET)
    private ModelAndView accept(String nmgb) {
        ModelAndView mv = new ModelAndView();
        SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddhhmmss");
        Date data2 = new Date();
        String number = sf.format(data2);
        System.out.println(number);
        mv.addObject("nmgb",nmgb);
        mv.addObject("num",number);
        mv.setViewName("order/newAccept");
        return mv;
    }
    //进入现金付款单
    @RequestMapping(value = "/cash", method = RequestMethod.GET)
    private ModelAndView cash(String nmgb) {
        ModelAndView mv = new ModelAndView();
        SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddhhmmss");
        Date data2 = new Date();
        String number = sf.format(data2);
        System.out.println(number);
        mv.addObject("nmgb",nmgb);
        mv.addObject("num",number);
        mv.setViewName("order/newCash");
        return mv;
    }
    //进入电汇付款单
    @RequestMapping(value = "/elect", method = RequestMethod.GET)
    private ModelAndView elect(String nmgb) {
        ModelAndView mv = new ModelAndView();
        SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddhhmmss");
        Date data2 = new Date();
        String number = sf.format(data2);
        System.out.println(number);
        mv.addObject("nmgb",nmgb);
        mv.addObject("num",number);
        mv.setViewName("order/newElect");
        return mv;
    }

    @RequestMapping(value="/list")
    public ModelAndView AAlist(){
        ModelAndView mv = this.getModelAndView();
        mv.setViewName("order/allList");
        return mv;
    }
    @ResponseBody
    @RequestMapping(value = "/selectList")
    public JqGridPageView<SalesOrders> selectList(HttpServletRequest request)throws Exception{
        JqGridPageView<SalesOrders> json = new JqGridPageView<SalesOrders>();
        Integer page = Integer.valueOf(request.getParameter("page"));
        Integer rows = Integer.valueOf(request.getParameter("rows"));
        Integer firstResult = (page-1)*rows;
        Integer maxResults = page*rows;
        List<SalesOrders> salesOrders = orderService.selectList(firstResult,maxResults);
        List<SalesOrders> bb=orderService.getTotal();
        int total = bb.size();
        json.setRows(salesOrders);
        json.setMaxResults(rows);
        json.setRecords(total);
        System.out.println(json);
        return json;
    }

    @RequestMapping(value="/goAddSale")
    public ModelAndView goAddU(){
        ModelAndView mv = this.getModelAndView();
        mv.setViewName("order/NewSale");
        SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddhhmmss");
        Date data1 = new Date();
        String number = sf.format(data1);
        System.out.println(number);
        mv.addObject("num",number);
        return mv;
    }
    @RequestMapping(value="/addNew",method = RequestMethod.POST)
    public ModelAndView addNew(HttpServletRequest request,String postData){
        String[] dapost = postData.split(":",1);
        JSONArray array = JSONArray.fromObject(dapost);
        JSONObject object = (JSONObject) array.get(0);
        String custmerName = object.getString("custmerName");//客户
        String salesName = object.getString("salesName");//业务员
        String date = object.getString("date");//发货时间
        String number = object.getString("billNo");//编号
        String input_man = object.getString("input_man");//录入人
        String reviewer = object.getString("reviewer");//审核人
        String totalQty = object.getString("totalQty");//总数目
        String totalAmount = object.getString("totalAmount");//总金额
        String description = object.getString("description");//备注
        String whether = object.getString("regular_customer");/*是否是老客户*/
        String freight_amount =  object.getString("freight");/*运费*/
        String item_type =  object.getString("type_product");/*商品类型*/
        String apron_num = object.getString("apron_num");/*胶圈数目*/
        String apron_price = object.getString("apron_price");/*胶圈总价*/
        Date date1 = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String criate = sdf.format(date1);//创建时间
        String del = String.valueOf(1);
        orderService.saveOrder(number,date,salesName,custmerName,totalAmount,whether,input_man,reviewer,
                criate,item_type,freight_amount,apron_price,apron_num,description,del);
        SalesOrders salesOrders = orderService.selectIdByNumber(number);
        String pin_ID = String.valueOf(salesOrders.getId());
        System.out.println("客户对应的ID是"+pin_ID);
        String entries = object.getString("entries");
        JSONArray json = JSONArray.fromObject(entries);
        for(int i=0;i<json.size();i++){
            JSONObject obj = (JSONObject) json.get(i);
            String goods = obj.getString("goods");
            String specificationModel = obj.getString("specificationModel");
            String qty = obj.getString("qty");
            String price = obj.getString("price");
            String amount = obj.getString("amount");
            String descrip = obj.getString("description");
            System.out.println(i+"========"+goods+specificationModel+qty+price+amount+descrip+criate);
            orderService.saveProduct(goods,specificationModel,qty,price,amount,descrip,criate,item_type,pin_ID);
        }
        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/index/saleput");
        return mv;
    }
    //添加回款单(现金)
    @RequestMapping(value="/addCash",method = RequestMethod.POST)
    public ModelAndView addCash(HttpServletRequest request,String postData){
        String[] dapost = postData.split(":",1);
        JSONArray array = JSONArray.fromObject(dapost);
        JSONObject object = (JSONObject) array.get(0);
        String payment_date = object.getString("date");//发货时间
        String document_number = object.getString("billNo");//编号
        String input_man = object.getString("input_man");//录入人
        String brokerage = object.getString("reviewer");//审核人
        String document_type = "现金";//票据类型
        String sales_order = object.getString("selectNo");//单据编号
        Date date1 = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String creation_date = sdf.format(date1);//创建时间
        billService.saveCash(payment_date,document_number,input_man,brokerage,creation_date,document_type,sales_order);
        AllHead pin_ID = billService.selectIdByNumber(document_number);
        String entries = object.getString("entries");
        JSONArray json = JSONArray.fromObject(entries);
        for(int i=0;i<json.size();i++){
            JSONObject obj = (JSONObject) json.get(i);
            String payment_customer_name = obj.getString("goods");
            String cash_amount = obj.getString("price");
            String customer_contact = obj.getString("description");
            billService.saveCashPrice(payment_customer_name,cash_amount,customer_contact, String.valueOf(pin_ID.getId()));
        }
        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/bill/saleput");
        return mv;
    }
    //添加回款单(电汇)
    @RequestMapping(value="/addElect",method = RequestMethod.POST)
    public ModelAndView addElect(HttpServletRequest request,String postData){
        String[] dapost = postData.split(":",1);
        JSONArray array = JSONArray.fromObject(dapost);
        JSONObject object = (JSONObject) array.get(0);
        String payment_date = object.getString("date");//发货时间
        String document_number = object.getString("billNo");//编号
        String input_man = object.getString("input_man");//录入人
        String brokerage = object.getString("reviewer");//审核人
        String document_type = "电汇";//票据类型
        String sales_order = object.getString("selectNo");//单据编号
        Date date1 = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String creation_date = sdf.format(date1);//创建时间
        billService.saveCash(payment_date,document_number,input_man,brokerage,creation_date,document_type,sales_order);
        AllHead pin_ID = billService.selectIdByNumber(document_number);
        String entries = object.getString("entries");
        JSONArray json = JSONArray.fromObject(entries);
        for(int i=0;i<json.size();i++){
            JSONObject obj = (JSONObject) json.get(i);
            String payment_customer_name = obj.getString("goods");
            String cash_amount = obj.getString("price");
            String customer_contact = obj.getString("description");
            billService.saveElectPrice(payment_customer_name,cash_amount,customer_contact, String.valueOf(pin_ID.getId()));
        }
        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/bill/saleput");
        return mv;
    }
    //添加回款单(承兑)
    @RequestMapping(value="/addAccept",method = RequestMethod.POST)
    public ModelAndView addAccept(HttpServletRequest request,String postData){
        String[] dapost = postData.split(":",1);
        JSONArray array = JSONArray.fromObject(dapost);
        JSONObject object = (JSONObject) array.get(0);
        String payment_date = object.getString("date");//发货时间
        String document_number = object.getString("billNo");//编号
        String input_man = object.getString("input_man");//录入人
        String brokerage = object.getString("reviewer");//审核人
        String document_type = "承兑";//票据类型
        String sales_order = object.getString("selectNo");//单据编号
        Date date1 = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String creation_date = sdf.format(date1);//创建时间
        billService.saveCash(payment_date,document_number,input_man,brokerage,creation_date,document_type,sales_order);
        AllHead pin_ID = billService.selectIdByNumber(document_number);
        String entries = object.getString("entries");
        JSONArray json = JSONArray.fromObject(entries);
        for(int i=0;i<json.size();i++){
            JSONObject obj = (JSONObject) json.get(i);
            String payment_customer_name = obj.getString("goods");//产品类型
            String acceptance_number = obj.getString("specificationModel");//汇票号
            String acceptance_amount = obj.getString("price");//金额
            String customer_contact = obj.getString("description");//联系方式
            String date_acceptance = obj.getString("date_accept");//汇票到期时间
            billService.saveAcceptPrice(payment_customer_name,acceptance_amount,date_acceptance,
                    acceptance_number,customer_contact, String.valueOf(pin_ID.getId()));
        }
        ModelAndView mv = new ModelAndView();
        mv.setViewName("redirect:/bill/saleput");
        return mv;
    }

}
