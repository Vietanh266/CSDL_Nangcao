using Model1.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model1.Dao
{
    public class ChitietphieutiemDao
    {
        CSDL_NangcaoDbContext db = null;
        public ChitietphieutiemDao()
        {
            db = new CSDL_NangcaoDbContext();
        }

        public string Insert(Chitietphhieutiem order)
        {
            db.Chitietphhieutiems.Add(order);
            db.SaveChanges();
            return order.Machitietphieutiem;
        }

        public bool Update(Chitietphhieutiem entity)
        {
            try
            {
                var pr = db.Chitietphhieutiems.Find(entity.Machitietphieutiem);
                pr.Loaimui = entity.Loaimui;
                pr.Ngaytiem = entity.Ngaytiem;
                pr.Phanung = entity.Phanung;
                pr.Machitietphieutiem = entity.Machitietphieutiem;
                pr.Mathuoc = entity.Mathuoc;
                pr.Sophieutiem = entity.Sophieutiem;
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                //logging
                return false;
            }
        }

        public bool Update1(ref string a)
        {
            try
            {
                var model = from l in db.Chitietphhieutiems where l.Sophieutiem == null select new { l.Machitietphieutiem };
                foreach (var item in model)
                {
                    var pr = db.Chitietphhieutiems.Find(item.Machitietphieutiem);
                    pr.Sophieutiem = a;
                }
                db.SaveChanges();
            }

            catch (Exception ex)
            {
                return false;
            }
            return true;
        }

        public bool Delete(string id)
        {
            try
            {
                var pr = db.Chitietphhieutiems.Find(id);
                db.Chitietphhieutiems.Remove(pr);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }

        public Chitietphhieutiem ViewDetail(string id)
        {
            return db.Chitietphhieutiems.Find(id);
        }

        public IEnumerable<Lo> ListAllPaging(string searchString, int page, int pageSize)//, int CategoryID, DateTime minp, DateTime maxp)
        {
            List<Lo> listLinks = new List<Lo>();

            //var model = from l in db.Products // lấy toàn bộ sp
            //            join c in db.ProductCategories on l.CategoryID equals c.CategoryID
            //            select new { l.ProductID, l.ProductName, l.Price, l.Description, l.CategoryID, c.Name, l.ProductCode, l.ProductImage, l.Quantity };

            var model = from l in db.Loes // lấy toàn bộ sp
                        select new { l.Malo, l.SLnhap, l.Dongia, l.Sohoadon, l.Solieutrenmotcai, l.NSX, l.HSD, l.Machithinhietdo, l.Machithidongbang, l.Dangdonggoi };

            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.Malo.Contains(searchString) || x.Malo.Contains(searchString));
            }

            foreach (var item in model)
            {
                Lo temp = new Lo();
                temp.Malo = item.Malo;
                temp.SLnhap = item.SLnhap;
                temp.Dongia = item.Dongia;
                temp.Sohoadon = item.Sohoadon;
                temp.Solieutrenmotcai = item.Solieutrenmotcai;
                temp.NSX = item.NSX;
                temp.HSD = item.HSD;
                temp.Dangdonggoi = item.Dangdonggoi;
                temp.Machithinhietdo = item.Machithinhietdo;
                temp.Machithidongbang = item.Machithidongbang;
                listLinks.Add(temp);
            }

            return listLinks.OrderByDescending(x => x.HSD);
        }

        public IEnumerable<Lo> ListAllPagingWithSohd(Hoadonnhap hd)//string searchString, int page, int pageSize, 
        {
            List<Lo> listLinks = new List<Lo>();

            var model = from l in db.Loes
                        join c in db.Hoadonnhaps on l.Sohoadon equals c.Sohoadon
                        where l.Sohoadon == hd.Sohoadon
                        select new { l.Malo, l.SLnhap, l.Dongia, l.Sohoadon, l.Solieutrenmotcai, l.NSX, l.HSD, l.Machithinhietdo, l.Machithidongbang, l.Dangdonggoi };

            //if (!string.IsNullOrEmpty(searchString))
            //{
            //    model = model.Where(x => x.Malo.Contains(searchString) || x.Malo.Contains(searchString));
            //}

            foreach (var item in model)
            {
                Lo temp = new Lo();
                temp.Malo = item.Malo;
                temp.SLnhap = item.SLnhap;
                temp.Dongia = item.Dongia;
                temp.Sohoadon = item.Sohoadon;
                temp.Solieutrenmotcai = item.Solieutrenmotcai;
                temp.NSX = item.NSX;
                temp.HSD = item.HSD;
                temp.Dangdonggoi = item.Dangdonggoi;
                temp.Machithinhietdo = item.Machithinhietdo;
                temp.Machithidongbang = item.Machithidongbang;
                listLinks.Add(temp);
            }

            return listLinks.OrderByDescending(x => x.HSD);
        }

        public IEnumerable<Lo> ListAllPagingWithoutSohd(string searchString, int page, int pageSize)//, int CategoryID, DateTime minp, DateTime maxp)
        {
            List<Lo> listLinks = new List<Lo>();

            var model = from l in db.Loes
                        where l.Sohoadon == null
                        select new { l.Malo, l.SLnhap, l.Dongia, l.Sohoadon, l.Solieutrenmotcai, l.NSX, l.HSD, l.Machithinhietdo, l.Machithidongbang, l.Dangdonggoi };

            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.Malo.Contains(searchString) || x.Malo.Contains(searchString));
            }

            foreach (var item in model)
            {
                Lo temp = new Lo();
                temp.Malo = item.Malo;
                temp.SLnhap = item.SLnhap;
                temp.Dongia = item.Dongia;
                temp.Sohoadon = item.Sohoadon;
                temp.Solieutrenmotcai = item.Solieutrenmotcai;
                temp.NSX = item.NSX;
                temp.HSD = item.HSD;
                temp.Dangdonggoi = item.Dangdonggoi;
                temp.Machithinhietdo = item.Machithinhietdo;
                temp.Machithidongbang = item.Machithidongbang;
                listLinks.Add(temp);
            }

            return listLinks.OrderByDescending(x => x.HSD);
        }

        public IEnumerable<Lo> ListAllPagingWithoutSohd()
        {
            List<Lo> listLinks = new List<Lo>();

            var model = from l in db.Loes
                        where l.Sohoadon == null
                        select new { l.Malo, l.SLnhap, l.Dongia, l.Sohoadon, l.Solieutrenmotcai, l.NSX, l.HSD, l.Machithinhietdo, l.Machithidongbang, l.Dangdonggoi };

            foreach (var item in model)
            {
                Lo temp = new Lo();
                temp.Malo = item.Malo;
                temp.SLnhap = item.SLnhap;
                temp.Dongia = item.Dongia;
                temp.Sohoadon = item.Sohoadon;
                temp.Solieutrenmotcai = item.Solieutrenmotcai;
                temp.NSX = item.NSX;
                temp.HSD = item.HSD;
                temp.Dangdonggoi = item.Dangdonggoi;
                temp.Machithinhietdo = item.Machithinhietdo;
                temp.Machithidongbang = item.Machithidongbang;
                listLinks.Add(temp);
            }

            return listLinks.OrderByDescending(x => x.HSD);
        }
    }
}
