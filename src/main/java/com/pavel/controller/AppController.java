package com.pavel.controller;

import com.pavel.model.User;
import com.pavel.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/")
public class AppController {

    @Autowired
    UserService service;

    @Autowired
    MessageSource messageSource;

    PagedListHolder<User> pagedList;
    {
        pagedList = new PagedListHolder<User>();
        pagedList.setMaxLinkedPages(5);
    }

    @RequestMapping(value = {"/", "/list"}, method = RequestMethod.GET)
    public String listUsers(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "nav", required = false) String nav, ModelMap model) {
        List<User> users = service.findAllUsers();
        pagedList.setSource(users);

        if (nav != null) {
            if ("next".equals(nav)) pagedList.nextPage();
            else if ("prev".equals(nav)) pagedList.previousPage();
            else if ("first".equals(nav)) pagedList.setPage(0);
            else if ("last".equals(nav)) pagedList.setPage(pagedList.getPageCount() - 1);

            return "redirect:/list?page=" + pagedList.getPage();
        } else if (page != null) {
            pagedList.setPage(page);
        }

        model.addAttribute("users", pagedList.getPageList());
        model.addAttribute("pagedList", pagedList);
        model.addAttribute("firstLink", pagedList.getFirstLinkedPage());
        model.addAttribute("lastLink", pagedList.getLastLinkedPage());
        model.addAttribute("currentPage", pagedList.getPage());
        model.addAttribute("lastPage", pagedList.getPageCount() - 1);
        model.addAttribute("maxLinks", pagedList.getMaxLinkedPages());
        return "allusers";
    }

    @RequestMapping(value = {"/new"}, method = RequestMethod.GET)
    public String newUser(ModelMap model) {
        User user = new User();
        model.addAttribute("user", user);
        model.addAttribute("edit", false);
        return "registration";
    }

    @RequestMapping(value = {"/new"}, method = RequestMethod.POST)
    public String saveUser(@Valid User user, BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return "registration";
        }

        service.saveUser(user);
        model.addAttribute("success", "User " + user.getName() + " registered successfully");
        // go to last page and see added entry
        model.addAttribute("linkToList", "/list?page=" + (pagedList.getPageCount() - 1));
        return "success";
    }

    @RequestMapping(value = {"/edit"}, method = RequestMethod.GET)
    public String editUser(@RequestParam int id, ModelMap model) {
        User user = service.findUserById(id);
        model.addAttribute("user", user);
        model.addAttribute("edit", true);
        return "registration";
    }

    @RequestMapping(value = {"/edit"}, method = RequestMethod.POST)
    public String updateUser(@Valid User user, BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            return "registration";
        }

        service.updateUser(user);

        model.addAttribute("success", "User " + user.getName() + " updated successfully");
        model.addAttribute("linkToList", "/list");
        return "success";
    }

    @RequestMapping(value = {"/delete"}, method = RequestMethod.GET)
    public String deleteUser(@RequestParam int id) {
        service.deleteUserById(id);
        return "redirect:/list?page=" + pagedList.getPage();
    }
}

