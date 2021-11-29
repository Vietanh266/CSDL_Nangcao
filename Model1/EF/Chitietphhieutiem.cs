namespace Model1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Chitietphhieutiem")]
    public partial class Chitietphhieutiem
    {
        [Key]
        [StringLength(10)]
        public string Machitietphieutiem { get; set; }

        [Column(TypeName = "date")]
        public DateTime? Ngaytiem { get; set; }

        [StringLength(10)]
        public string Loaimui { get; set; }

        [StringLength(50)]
        public string Phanung { get; set; }

        [StringLength(10)]
        public string Mathuoc { get; set; }

        [StringLength(10)]
        public string Sophieutiem { get; set; }

        public virtual Phieutiem Phieutiem { get; set; }

        public virtual Vattuyte Vattuyte { get; set; }
    }
}
