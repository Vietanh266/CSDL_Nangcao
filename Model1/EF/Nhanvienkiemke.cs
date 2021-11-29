namespace Model1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Nhanvienkiemke")]
    public partial class Nhanvienkiemke
    {
        [Key]
        [StringLength(10)]
        public string Sophieu { get; set; }

        [Column(TypeName = "date")]
        public DateTime? Ngaykiem { get; set; }

        [StringLength(10)]
        public string Manhanvien { get; set; }

        public virtual Nhanvien Nhanvien { get; set; }
    }
}
