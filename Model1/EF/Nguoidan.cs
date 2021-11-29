namespace Model1.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Nguoidan")]
    public partial class Nguoidan
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Nguoidan()
        {
            Phieutiems = new HashSet<Phieutiem>();
        }

        [Key]
        [StringLength(10)]
        public string Manguoidan { get; set; }

        [StringLength(100)]
        public string Tennguoidan { get; set; }

        [Column(TypeName = "date")]
        public DateTime? Ngaysinh { get; set; }

        [StringLength(12)]
        public string CCCD { get; set; }

        [StringLength(10)]
        public string SDT { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Phieutiem> Phieutiems { get; set; }
    }
}
