using Microsoft.AspNetCore.Mvc;

namespace BandLookMVC.Controllers;

public class BlogController : Controller
{

    public async Task<IActionResult> List()
    {
        return View();
    }

    public async Task<IActionResult> Detail()
    {
        return View();
    }
}