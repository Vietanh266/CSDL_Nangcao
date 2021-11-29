namespace Model1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Lo")]
    public partial class Lo
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Lo()
        {
            Vattuytes = new HashSet<Vattuyte>();
        }

        [Key]
        [StringLength(10)]
        public string Malo { get; set; }

        public int? SLnhap { get; set; }

        public int? Dongia { get; set; }

        [StringLength(10)]
        public string Sohoadon { get; set; }

        public int? Solieutrenmotcai { get; set; }

        [StringLength(50)]
        public string SDK_gnpk { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NSX { get; set; }

        [Column(TypeName = "date")]
        public DateTime? HSD { get; set; }

        [StringLength(10)]
        public string Nongdo { get; set; }

        [StringLength(100)]
        public string Hopchat { get; set; }

        [StringLength(10)]
        public string Dangdonggoi { get; set; }

        [StringLength(10)]
        public string Machithidongbang { get; set; }

        [StringLength(10)]
        public string Machithinhietdo { get; set; }

        public virtual Chithidongbang Chithidongbang { get; set; }

        public virtual Chithinhietdo Chithinhietdo { get; set; }

        public virtual Hoadonnhap Hoadonnhap { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Vattuyte> Vattuytes { get; set; }
    }
}
