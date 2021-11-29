namespace Model1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Nhanvien")]
    public partial class Nhanvien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Nhanvien()
        {
            Hoadonnhaps = new HashSet<Hoadonnhap>();
            Nhanvienkiemkes = new HashSet<Nhanvienkiemke>();
            Phieulinhs = new HashSet<Phieulinh>();
            Phieuthongkes = new HashSet<Phieuthongke>();
            Phieuxuats = new HashSet<Phieuxuat>();
        }

        [Key]
        [StringLength(10)]
        public string Manhanvien { get; set; }

        [StringLength(100)]
        public string Tennhanvien { get; set; }

        [StringLength(20)]
        public string Chucvu { get; set; }

        [StringLength(30)]
        public string Taikhoan { get; set; }

        [StringLength(10)]
        public string Manhom { get; set; }

        [StringLength(15)]
        public string SDT { get; set; }

        [StringLength(55)]
        public string Email { get; set; }

        public bool? Trangthai { get; set; }

        [StringLength(50)]
        public string Matkhau { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Hoadonnhap> Hoadonnhaps { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Nhanvienkiemke> Nhanvienkiemkes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Phieulinh> Phieulinhs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Phieuthongke> Phieuthongkes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Phieuxuat> Phieuxuats { get; set; }

        public virtual Nhomnhanvien Nhomnhanvien { get; set; }
    }
}
