namespace Model1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Phieuthongke")]
    public partial class Phieuthongke
    {
        [Key]
        [StringLength(10)]
        public string Sophieu { get; set; }

        public short? SLtiem { get; set; }

        public short? Sltrieuchung { get; set; }

        [Column(TypeName = "date")]
        public DateTime? Ngaytiem { get; set; }

        [StringLength(10)]
        public string Manhanvien { get; set; }

        [StringLength(10)]
        public string Madiemtiem { get; set; }

        public virtual Diemtiem Diemtiem { get; set; }

        public virtual Nhanvien Nhanvien { get; set; }
    }
}
