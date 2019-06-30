package msw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model; // 这里导入了一个Model类
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class DemoController {

    @RequestMapping(value = "/test",method = RequestMethod.GET)
    public String index(ModelMap model) { // 参数中传入Model
        model.addAttribute("msg","我吃柠檬"); // 指定Model的值
        return "test";
    }
}