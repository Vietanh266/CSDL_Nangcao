using Model1.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model1.Dao
{
    public class DiemtiemDao
    {
        CSDL_NangcaoDbContext db = null;
        public DiemtiemDao()
        {
            db = new CSDL_NangcaoDbContext();
        }

        public string Insert(Diemtiem entity)
        {
            db.Diemtiems.Add(entity);
            db.SaveChanges();
            return entity.Madiemtiem;
        }

        public bool Update(Diemtiem entity)
        {
            try
            {
                var user = db.Diemtiems.Find(entity.Madiemtiem);
                user.Tendiemtiem = entity.Tendiemtiem;
                user.Madiemtiem = entity.Madiemtiem;
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        public IEnumerable<Diemtiem> ListAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<Diemtiem> model = db.Diemtiems;
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.Tendiemtiem.Contains(searchString) || x.Tendiemtiem.Contains(searchString));
            }

            return model.OrderByDescending(x => x.Maquan);//.ToPagedList(page, pageSize);
        }

        public Diemtiem GetById(string userName)
        {
            return db.Diemtiems.SingleOrDefault(x => x.Madiemtiem == userName);
        }

        public Diemtiem ViewDetail(string id)
        {
            return db.Diemtiems.Find(id);
        }
       
        public bool Delete(string id)
        {
            try
            {
                var user = db.Diemtiems.Find(id);
                db.Diemtiems.Remove(user);
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
