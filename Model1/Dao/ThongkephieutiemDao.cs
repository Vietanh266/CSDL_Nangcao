using Model1.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model1.Dao
{
    public class ThongkephieutiemDao
    {
        CSDL_NangcaoDbContext db = null;
        public ThongkephieutiemDao()
        {
            db = new CSDL_NangcaoDbContext();
        }

        public string Insert(Phieuthongke entity)
        {
            db.Phieuthongkes.Add(entity);
            db.SaveChanges();
            return entity.Sophieu;
        }

        public bool Update(Phieuthongke entity)
        {
            try
            {
                var user = db.Phieuthongkes.Find(entity.Sophieu);
                user.SLtiem = entity.SLtiem;
                user.Sltrieuchung = entity.Sltrieuchung;
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                //logging
                return false;
            }

        }

        public IEnumerable<Phieuthongke> ListAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<Phieuthongke> model = db.Phieuthongkes;
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.Sophieu.Contains(searchString) || x.Sophieu.Contains(searchString));
            }

            return model.OrderByDescending(x => x.Sophieu);//.ToPagedList(page, pageSize);
        }

        public Phieuthongke GetById(string sophieu)
        {
            return db.Phieuthongkes.SingleOrDefault(x => x.Sophieu == sophieu);
        }
        public Phieuthongke ViewDetail(string id)
        {
            return db.Phieuthongkes.Find(id);
        }


        public bool Delete(string id)
        {
            try
            {
                var user = db.Phieuthongkes.Find(id);
                db.Phieuthongkes.Remove(user);
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
