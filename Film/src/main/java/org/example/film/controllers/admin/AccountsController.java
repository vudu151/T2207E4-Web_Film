package org.example.film.controllers.admin;

import org.example.film.models.entities.Account;
import org.example.film.services.auth.IAccountsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("admin-accounts")
public class AccountsController {
    @Autowired
    private IAccountsService iAccountsService;

    @GetMapping("")
    public String index(Model model)
    {
        List<Account> accounts = iAccountsService.getListAccounts();
        model.addAttribute("accounts", accounts);
        return "admin/accounts/index";
    }
}
