using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using CapaEntidades;

namespace CapaLogica{
    public class negProducto{
        #region Singleton
        private static readonly negProducto _instancia = new negProducto();
        public static negProducto Instancia{
            get { return negProducto._instancia; }
        }
        #endregion Singleton

        #region metodos
        public List<entProducto> ListarProductos(Int16 idMarca)
        {
            try{
                return datProducto.Instancia.ListarProductos(idMarca);
            }catch (Exception){
                throw;
            }
        }
        #endregion metodos
    }
}
