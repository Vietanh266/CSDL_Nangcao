using Model1.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CSDL_Nangcao.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        // GET: Admin/Home
        public ActionResult Index()
        {
            //string model = new VattuyteDao().GetIDByMaxMaLoai();
            //ViewBag.soluong = model;
            return View();
        }
    }
}