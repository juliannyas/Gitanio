package br.ufg.inf.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @RequestMapping("/")
    public String index() {
        return "redirect:/listarProdutos";
    }

    @RequestMapping("/login")
    public String loginForm() {
        return "login";
    }

    @RequestMapping("/recuperaConta")
    public String recuperaConta() {
        return "recuperaConta";
    }


}
