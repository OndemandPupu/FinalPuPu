package memo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import memo.model.memoService;

@Controller
public class memoController {
    @Autowired
    memoService ms;
    @RequestMapping("/memo/service")
    public ModelAndView memoEx(HttpServletRequest ip, String id, String memo){
    	
    	ModelAndView mav = new ModelAndView();
    	  
    	  mav.addObject("newFile");
    	  
    	  mav.addObject("rst",ms.memoExcute(ip, id, memo));
    	  
    	  return mav;
    	
    }
	
	
}
