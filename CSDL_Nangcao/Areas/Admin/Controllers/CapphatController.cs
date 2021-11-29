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
    public class CapphatController : Controller
    {
        // GET: Admin/Capphat
        //private const string CartSession = "CartSession";
        CSDL_NangcaoDbContext db = new CSDL_NangcaoDbContext();

        public ActionResult Index(string searchString, int page = 1, int pageSize = 10, string a = "", string b = "", string mancc = "", string manguon = "", string makho = "")
        {
            //var cart = Session[CartSession];
            var dao1 = new HoadonnhapDao();
            var dao2 = new LoDao();

            var model1 = dao1.ListAllPaging(searchString, page, pageSize, a, b, mancc, manguon, makho);
            var model2 = dao2.ListAllPagingWithoutSohd(searchString, page, pageSize);

            ModelCollection model = new ModelCollection();

            model.HoadonnhapDTOs = model1;
            model.Los = model2;

            var nccs = from c in db.Nhacungcaps select c;
            var nguons = from n in db.Nguons select n;
            var khoes = from k in db.Khoes select k;
            ViewBag.ncc = new SelectList(nccs, "Mancc", "Tencc"); // danh sách ncc
            ViewBag.nguon = new SelectList(nguons, "Manguon", "Tennguon"); // danh sách nguon
            ViewBag.kho = new SelectList(khoes, "Makho", "Tenkho"); // danh sách kho

            ViewBag.SearchString = searchString;
            return View(model);
        }


        [HttpGet]
        public ActionResult Create()
        {
            SetViewBag();
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
                    return RedirectToAction("Index", "Nhaptuncc");
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

        [HttpDelete]
        public ActionResult Deletehd(string id)
        {
            new HoadonnhapDao().Delete(id);
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Edit(string id)
        {
            var dao = new LoDao();
            var pr = dao.ViewDetail(id);
            //SetViewBag(pr.Machithidongbang);
            return View(pr);
        }

        [HttpPost]
        public ActionResult Edit(Lo pr)
        {
            if (ModelState.IsValid)
            {
                var dao = new LoDao();
                var result = dao.Update(pr);
                if (result)
                {
                    //SetAlert("Sửa user thành công", "success");
                    ModelState.AddModelError("", "Update lô sản phẩm thành công");
                    return RedirectToAction("Index", "Nhaptuncc");
                }
                else
                {
                    ModelState.AddModelError("", "Cập nhật lô sản phẩm không thành công");
                }
            }
            //SetViewBag(pr.CategoryID);
            return View("Index");
        }

        [HttpGet]
        public ActionResult Edithd(string id)
        {
            var dao = new HoadonnhapDao();
            var pr = dao.ViewDetail(id);
            //SetViewBag(pr.Machithidongbang);
            return View(pr);
        }

        [HttpPost]
        public ActionResult Edithd(Hoadonnhap pr)
        {
            if (ModelState.IsValid)
            {
                var dao = new HoadonnhapDao();
                var result = dao.Update(pr);
                if (result)
                {
                    //SetAlert("Sửa user thành công", "success");
                    ModelState.AddModelError("", "Update hóa đơn nhập thành công");
                    return RedirectToAction("Index", "Nhaptuncc");
                }
                else
                {
                    ModelState.AddModelError("", "Cập nhật hóa đơn nhập không thành công");
                }
            }
            //SetViewBag(pr.CategoryID);
            return View("Index");
        }

        //[HttpGet]
        public ActionResult Detailhd(string id)
        {
            var dao = new HoadonnhapDao();
            var pr = dao.ViewDetail(id);

            var dao1 = new LoDao();
            var model = dao1.ListAllPagingWithSohd(pr);
            return View(model);

        }

        //[HttpPost]
        //public ActionResult Detailhd( Hoadonnhap pr)
        //{
        //    var dao = new LoDao();
        //    var model = dao.ListAllPagingWithSohd(pr);
        //    //var sohds = from c in db.Hoadonnhaps select c;
        //    //ViewBag.sohd = sohd;
        //    //ViewBag.SearchString = searchString;
        //    return View(model);
        //}

        [HttpGet]
        public ActionResult Payment()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Payment(string maphieu, string ncc, string nguon, string kho, DateTime ngaynhap)
        {
            var order = new Hoadonnhap();
            order.Sohoadon = maphieu;
            order.Mancc = ncc;
            order.Manguon = nguon;
            order.Makhonhap = kho;
            order.Ngaynhap = ngaynhap;

            try
            {
                var id = new HoadonnhapDao().Insert(order);
                var c = new LoDao().Update1(ref id);
                if (c == false)
                    return Redirect("/loi-thanh-toan");
            }
            catch (Exception ex)
            {
                return Redirect("/loi-thanh-toan");
            }

            return Redirect("/hoan-thanh");
        }

        public void SetViewBag(string selectedId1 = "", string selectedId2 = "", string selectedId3 = "")
        {
            var dao1 = new NhacungcapDao();
            var dao2 = new NguonDao();
            var dao3 = new KhoDao();

            ViewBag.CategoryID = new SelectList(dao1.ListAll(), "Mancc", "Name", selectedId1);
            ViewBag.CategoryID = new SelectList(dao2.ListAll(), "Manguon", "Name", selectedId2);
            ViewBag.CategoryID = new SelectList(dao3.ListAll(), "Makho", "Name", selectedId3);

        }


        public ActionResult Success()
        {
            return View("~/Areas/Admin/Views/Nhaptuncc/Success.cshtml");
        }
    }
}