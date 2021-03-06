using Model1.Dao;
using Model1.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CSDL_Nangcao.Areas.Admin.Controllers
{
    public class LoController : Controller
    {
        // GET: Admin/Lo
        public ActionResult Index(string ctdb = "", string ctnd = "")
        {
            var dao = new LoDao();
            var model = dao.ListAllPaging(ctdb, ctnd);

            //ViewBag.SearchString = searchString;
            return View(model);
        }


        [HttpGet]
        public ActionResult Create()
        {
            //SetViewBag();
            return View();
        }

        [HttpPost]
        public ActionResult Create(Lo pr)
        {
            if (ModelState.IsValid)
            {
                var dao = new LoDao();
                string id = dao.Insert(pr);
                if (id != null)
                {
                    return RedirectToAction("Index", "Lo");
                }

                else
                {
                    ModelState.AddModelError("", "Thêm sp thành công");
                }
            }
            return View("Index");
        }

        [HttpDelete]
        public ActionResult Delete(string id)
        {
            new LoDao().Delete(id);
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Edit(string id)
        {
            var dao = new LoDao();
            var pr = dao.ViewDetail(id);
            //SetViewBag(pr.CategoryID);
            return View(pr);
        }

        [HttpPost]
        public ActionResult Edit(Lo pr)
        {
            
                var dao = new LoDao();
                var result = dao.Update(pr);
                if (result)
                {
                    //SetAlert("Sửa user thành công", "success");
                    ModelState.AddModelError("", "Update lô sản phẩm thành công");
                    return RedirectToAction("Index", "Lo");
                }
                else
                {
                    ModelState.AddModelError("", "Cập nhật lô sản phẩm không thành công");
                }
            
            //SetViewBag(pr.CategoryID);
            return View("Index");
        }



    }
}
