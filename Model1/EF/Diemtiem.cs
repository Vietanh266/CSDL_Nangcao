namespace Model1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Diemtiem")]
    public partial class Diemtiem
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Diemtiem()
        {
            Phieulinhs = new HashSet<Phieulinh>();
            Phieuthongkes = new HashSet<Phieuthongke>();
            Phieutiems = new HashSet<Phieutiem>();
            Phieuxuats = new HashSet<Phieuxuat>();
        }

        [Key]
        [StringLength(10)]
        public string Madiemtiem { get; set; }

        [StringLength(100)]
        public string Tendiemtiem { get; set; }

        [StringLength(50)]
        public string Tennguoidungdau { get; set; }

        [StringLength(10)]
        public string Maquan { get; set; }

        public virtual Quan Quan { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Phieulinh> Phieulinhs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Phieuthongke> Phieuthongkes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Phieutiem> Phieutiems { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Phieuxuat> Phieuxuats { get; set; }
    }
}
