package com.soecode.lyf.web;

import com.soecode.lyf.entity.SalesOrders;
import com.soecode.lyf.entity.vo.JsonVo;
import com.soecode.lyf.web.base.BaseController;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by lsd on 2017-03-13.
 */
@Controller
@RequestMapping("/index")
public class OrderController extends BaseController{
    //进入主页
    @RequestMapping(value = "/main", method = RequestMethod.GET)
    private ModelAndView main() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("main/index");
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
    private ModelAndView accept() {
        ModelAndView mv = new ModelAndView();
        SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddhhmmss");
        Date data2 = new Date();
        String number = sf.format(data2);
        System.out.println(number);
        mv.addObject("num",number);
        mv.setViewName("order/acceptance");
        return mv;
    }
    //进入现金付款单
    @RequestMapping(value = "/cash", method = RequestMethod.GET)
    private ModelAndView cash() {
        ModelAndView mv = new ModelAndView();
        SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddhhmmss");
        Date data2 = new Date();
        String number = sf.format(data2);
        System.out.println(number);
        mv.addObject("num",number);
        mv.setViewName("order/cashPrice");
        return mv;
    }
    //进入电汇付款单
    @RequestMapping(value = "/elect", method = RequestMethod.GET)
    private ModelAndView elect() {
        ModelAndView mv = new ModelAndView();
        SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddhhmmss");
        Date data2 = new Date();
        String number = sf.format(data2);
        System.out.println(number);
        mv.addObject("num",number);
        mv.setViewName("order/electPrice");
        return mv;
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
    public JsonVo addNew(HttpServletRequest request,String postData){
        JsonVo js = new JsonVo();
        String[] dapost = postData.split(":",1);

        JSONArray array = JSONArray.fromObject(dapost);
        JSONObject object = (JSONObject) array.get(0);
        System.out.println(object);
        String entries = object.getString("entries");
        System.out.println(entries);
        return js;
    }
}
