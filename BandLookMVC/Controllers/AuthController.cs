﻿using BandLookMVC.Repositories;
using BandLookMVC.Request;
using Microsoft.AspNetCore.Mvc;

namespace BandLookMVC.Controllers;

public class AuthController : Controller
{
    private readonly IAccountRepository _accountRepository;

    public AuthController(IAccountRepository accountRepository)
    {
        _accountRepository = accountRepository;
    }

    // GET
    public IActionResult Login()
    {
        return View();
    }
    public IActionResult Logout()
    {
        HttpContext.Session.Clear(); 
        HttpContext.Session.Remove("Username");
        HttpContext.Session.Remove("Id");
        HttpContext.Session.Remove("Email");
        HttpContext.Session.Remove("RoleId");
        return RedirectToAction("Home", "Home");
    }
    [HttpPost]
    public IActionResult Login(LoginRequest request)
    {
        if (ModelState.IsValid)
        {
            var user = _accountRepository.Login(request);

            var tt = user.Result;
            
            if (user != null)
            {
                HttpContext.Session.SetString("Username", user.Result.User_name);
                HttpContext.Session.SetInt32("Id", user.Result.Id);
                HttpContext.Session.SetString("Email", user.Result.Email);
                HttpContext.Session.SetInt32("RoleId", user.Result.Role_Id);

                if (user.Result.Role_Id == 3)
                {
                    return RedirectToAction("Home", "Admin");
                }
                
                return RedirectToAction("Home", "Home");
            }
            else
            {
                ModelState.AddModelError(string.Empty, "Invalid login attempt.");
            }
        }

        return View(request);
    }
    
    public IActionResult Register()
    {
        return View();
    }
    
    [HttpPost]
    public IActionResult Register(RegisterRequest request)
    {
        if (ModelState.IsValid)
        {
            _accountRepository.Register(request);
        }

        return View("Login");
    }
    
    
}