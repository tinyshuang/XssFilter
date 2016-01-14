package hxk.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author hxk
 * @description
 *2016年1月14日  下午3:19:48
 */
@Controller
public class TestAction {
    @RequestMapping("/xss.do")
    public @ResponseBody String xss(String word){
	return word;
    }
}
