package ru.bolnik.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("/")
public class MyController {


    @RequestMapping
    public String showFirsView() {
        return "first";
    }


    @RequestMapping("askDetails")
    public String askEmployeeDetails(Model model) {
        model.addAttribute("employee", new Employee());
        return "ask-emp-details";
    }

    @RequestMapping("showDetails")
    public String showEmpDetails(@Valid @ModelAttribute("employee") Employee employee,
                                 BindingResult result) {
        if (result.hasErrors()) {
            return "ask-emp-details";
        }
        else{
            return "show-emp-details";
        }
    }
}
