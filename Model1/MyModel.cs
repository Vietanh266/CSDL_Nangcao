using Model1.DTO;
using Model1.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model1
{
    public class ModelCollection
    {
        public IEnumerable<HoadonnhapDTO> HoadonnhapDTOs { get; set; }
        //public IEnumerable<Hoadonnhap> Hoadonnhaps { get; set; }
        public IEnumerable<Lo> Los { get; set; }

        public IEnumerable<LoDTO> LoDTOs { get; set; }

        public IEnumerable<Phieutiem> Phieutiems { get; set; }

        public IEnumerable<Chitietphhieutiem> Chitietphhieutiems { get; set; }
    }
}
