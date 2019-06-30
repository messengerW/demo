package msw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/*
 * Created by mushr on 2019/6/30.
 */
@Controller
@RequestMapping("/home")
public class MainController {

    @RequestMapping(value = "/MainPage",method = RequestMethod.GET)
    public String func(ModelMap model) { // 参数中传入Model
        model.addAttribute("msg","letter"); // 指定Model的值
        return "MainPage";
    }
}