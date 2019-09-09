using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaEntidades{
    public class entProducto{
        public int idProducto { get; set; }
        public String Codigo { get; set; }
        public String Descripcion { get; set; }
        public Decimal Precio { get; set; }
        public int Stock { get; set; }
        public String Imagen { get; set; }
        public entMarca Marca { get; set; }
    }
}
