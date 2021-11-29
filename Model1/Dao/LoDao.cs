using Model1.DTO;
using Model1.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model1.Dao
{
    public class LoDao
    {
        CSDL_NangcaoDbContext db = null;
        public LoDao()
        {
            db = new CSDL_NangcaoDbContext();
        }

        public string Insert(Lo order)
        {
            db.Loes.Add(order);
            db.SaveChanges();
            return order.Malo;
        }

        public bool Update(Lo entity)
        {
            try
            {
                var pr = db.Loes.Find(entity.Malo);
                pr.SLnhap = entity.SLnhap;
                pr.Dongia = entity.Dongia;
                pr.Sohoadon = entity.Sohoadon;
                pr.Solieutrenmotcai = entity.Solieutrenmotcai;
                pr.SDK_gnpk = entity.SDK_gnpk;
                pr.NSX = entity.NSX;
                pr.HSD = entity.HSD;
                pr.Machithidongbang = entity.Machithidongbang;
                pr.Machithinhietdo = entity.Machithinhietdo;
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
                var model = from l in db.Loes where l.Sohoadon == null select new { l.Malo };
                foreach (var item in model)
                {
                    var pr = db.Loes.Find(item.Malo);
                    pr.Sohoadon = a;
                    
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
                var pr = db.Loes.Find(id);
                db.Loes.Remove(pr);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }

        //public bool DeleteAll()
        //{
        //    try
        //    {
        //        var model = from l in db.Loes
        //                    where l.Sohoadon == null
        //                    select new { l.Malo, l.SLnhap, l.Dongia, l.Sohoadon, l.Solieutrenmotcai, l.NSX, l.HSD, l.Machithinhietdo, l.Machithidongbang, l.Dangdonggoi };
        //        //var pr = db.Loes.Find(id);
        //        //RemoveRange
        //        db.Loes.RemoveRange(model);

        //        foreach (var item in model)
        //        {
        //            db.Loes.Remove(item);

        //        }
        //            //var result = db.Loes.SingleOrDefault(x => x.Taikhoan == userName);
        //        db.SaveChanges();
        //        return true;
        //    }
        //    catch (Exception)
        //    {
        //        return false;
        //    }

        //}

        public Lo ViewDetail(string id)
        {
            return db.Loes.Find(id);
        }

        public IEnumerable<LoDTO> ListAllPaging(string mactdb, string mactnd)
        {
            List<LoDTO> listLinks = new List<LoDTO>();

            var model = from l in db.Loes // lấy toàn bộ sp
                        join p in db.Chithidongbangs on l.Machithidongbang equals p.Machithidongbang
                        join q in db.Chithinhietdoes on l.Machithinhietdo equals q.Machithinhietdo
                        where l.Sohoadon == null
                        select new { l.Malo, l.SLnhap, l.Dongia, l.Sohoadon, l.Solieutrenmotcai, l.NSX, l.HSD, l.Machithinhietdo, l.Machithidongbang, l.Dangdonggoi, p.Tenchithidongbang , q.Tenchithinhietdo };

            foreach (var item in model)
            {
                LoDTO temp = new LoDTO();
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
                temp.Tenchithidongbang = item.Tenchithidongbang;
                temp.Tenchithinhietdo = item.Tenchithinhietdo;
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
