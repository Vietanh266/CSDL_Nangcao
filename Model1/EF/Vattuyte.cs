namespace Model1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Vattuyte")]
    public partial class Vattuyte
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Vattuyte()
        {
            Chitietphhieutiems = new HashSet<Chitietphhieutiem>();
            Dongkiemkes = new HashSet<Dongkiemke>();
            Donglinhs = new HashSet<Donglinh>();
            Dongxuats = new HashSet<Dongxuat>();
        }

        [Key]
        [StringLength(10)]
        public string Mavattu { get; set; }

        [StringLength(100)]
        public string Tenvattu { get; set; }

        [StringLength(10)]
        public string Malo { get; set; }

        [StringLength(10)]
        public string Mansx { get; set; }

        [StringLength(10)]
        public string Maloaivattu { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Chitietphhieutiem> Chitietphhieutiems { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Dongkiemke> Dongkiemkes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Donglinh> Donglinhs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Dongxuat> Dongxuats { get; set; }

        public virtual Lo Lo { get; set; }

        public virtual Loaivattuyte Loaivattuyte { get; set; }

        public virtual Nhasanxuat Nhasanxuat { get; set; }
    }
}
