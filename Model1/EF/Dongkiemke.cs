namespace Model1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Dongkiemke")]
    public partial class Dongkiemke
    {
        [Key]
        [StringLength(10)]
        public string Sophieukiem { get; set; }

        public int? SLtoncu { get; set; }

        public int? SLnhap { get; set; }

        public int? SLxuat { get; set; }

        public int? SLhethan { get; set; }

        public int? SLhuhong { get; set; }

        public int? SLcuoingay { get; set; }

        [StringLength(10)]
        public string Mathuoc { get; set; }

        public virtual Vattuyte Vattuyte { get; set; }
    }
}
