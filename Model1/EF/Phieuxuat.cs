namespace Model1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Phieuxuat")]
    public partial class Phieuxuat
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Phieuxuat()
        {
            Dongxuats = new HashSet<Dongxuat>();
        }

        [Key]
        [StringLength(10)]
        public string Sophieuxuat { get; set; }

        [Column(TypeName = "date")]
        public DateTime? Ngayxuat { get; set; }

        [StringLength(100)]
        public string Khoxuat { get; set; }

        [StringLength(100)]
        public string Khonhan { get; set; }

        [StringLength(10)]
        public string Manhanvien { get; set; }

        [StringLength(10)]
        public string Madiemtiem { get; set; }

        public virtual Diemtiem Diemtiem { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Dongxuat> Dongxuats { get; set; }

        public virtual Nhanvien Nhanvien { get; set; }
    }
}
