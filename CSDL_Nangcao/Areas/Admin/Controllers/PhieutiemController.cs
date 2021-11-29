using Model1;
using Model1.Dao;
using Model1.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CSDL_Nangcao.Areas.Admin.Controllers
{
    public class PhieutiemController : Controller
    {
        // GET: Admin/Phieutiem

        public ActionResult Index(string searchString, int page = 1, int pageSize = 10, string mandt = "", string a="", string b ="", string mavc = "" )
        {
            var dao1 = new PhieutiemDao();
            var dao2 = new ChitietphieutiemDao();

            var model1 = dao1.ListAllPaging(searchString, page, pageSize);
            var model2 = dao2.ListAllPagingWithoutSohd(searchString, page, pageSize);

            ModelCollection model = new ModelCollection();

            model.Phieutiems = model1;

            ViewBag.SearchString = searchString;
            return View(model);
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        public ActionResult Edit(string id)
        {
            var user = new PhieutiemDao().ViewDetail(id);
            return View(user);
        }

        [HttpPost]
        public ActionResult Create(Phieutiem user)
        {
            if (ModelState.IsValid)
            {
                var dao = new PhieutiemDao();

                string id = dao.Insert(user);
                if (id != "")
                {
                    //SetAlert("Thêm user thành công", "success");
                    return RedirectToAction("Index", "User");
                }
                else
                {
                    ModelState.AddModelError("", "Thêm user không thành công");
                }
            }
            return View("Index");
        }
        [HttpPost]
        public ActionResult Edit(Diemtiem user)
        {
            if (ModelState.IsValid)
            {
                var dao = new DiemtiemDao();

                var result = dao.Update(user);
                if (result)
                {
                    //SetAlert("Sửa user thành công", "success");
                    return RedirectToAction("Index", "User");
                }
                else
                {
                    ModelState.AddModelError("", "Cập nhật user không thành công");
                }
            }
            return View("Index");
        }
        [HttpDelete]
        public ActionResult Delete(string id)
        {
            new DiemtiemDao().Delete(id);

            return RedirectToAction("Index");
        }

    }
}