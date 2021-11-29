using Model1.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model1.Dao
{
    public class PhieutiemDao
    {
        CSDL_NangcaoDbContext db = null;
        public PhieutiemDao()
        {
            db = new CSDL_NangcaoDbContext();
        }

        public string Insert(Phieutiem entity)
        {
            db.Phieutiems.Add(entity);
            db.SaveChanges();
            return entity.Sophieu;
        }

        public bool Update(Phieutiem entity)
        {
            try
            {
                var user = db.Phieutiems.Find(entity.Sophieu);
                user.Madiemtiem = entity.Madiemtiem;
                user.Manguoidan = entity.Manguoidan;
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                //logging
                return false;
            }

        }

        public IEnumerable<Phieutiem> ListAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<Phieutiem> model = db.Phieutiems;
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.Sophieu.Contains(searchString) || x.Sophieu.Contains(searchString));
            }

            return model.OrderByDescending(x => x.Sophieu);//.ToPagedList(page, pageSize);
        }

        public Phieutiem GetById(string sophieu)
        {
            return db.Phieutiems.SingleOrDefault(x => x.Sophieu == sophieu);
        }
        public Phieutiem ViewDetail(string id)
        {
            return db.Phieutiems.Find(id);
        }

   
        public bool Delete(string id)
        {
            try
            {
                var user = db.Phieutiems.Find(id);
                db.Phieutiems.Remove(user);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }

    }

}
