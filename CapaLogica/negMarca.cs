using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using CapaDatos;
using CapaEntidades;
namespace CapaLogica{
    public class negMarca{
        #region Singleton
        private static readonly negMarca _instancia = new negMarca();
        public static negMarca Instancia{
            get { return negMarca._instancia; }
        }
        #endregion Singleton

        #region metodos
        public List<entMarca> ListarMarcas(){
            try{
                return datMarca.Instancia.ListarMarcas();
            }catch (Exception e){
                throw e;
            }
        }

        #endregion metodos
    }
}
