namespace Model1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Dongxuat")]
    public partial class Dongxuat
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(10)]
        public string Sophieuxuat { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(10)]
        public string Mathuoc { get; set; }

        public int? SLxuat { get; set; }

        public int? Dongia { get; set; }

        public virtual Vattuyte Vattuyte { get; set; }

        public virtual Phieuxuat Phieuxuat { get; set; }
    }
}
