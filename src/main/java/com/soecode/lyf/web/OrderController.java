package com.soecode.lyf.web;

import com.soecode.lyf.util.PageData;
import com.soecode.lyf.web.base.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;

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
        SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddhhmmss");
        Date data1 = new Date();
        String number = sf.format(data1);
        System.out.println(number);
        mv.addObject("num",number);
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
        return mv;
    }
}
