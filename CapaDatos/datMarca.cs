using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.SqlClient;
using System.Data;
using CapaEntidades;
namespace CapaDatos{
    public class datMarca{
        #region Singleton
        private static readonly datMarca _instancia = new datMarca();
        public static datMarca Instancia
        {
            get { return datMarca._instancia; }
        }
        #endregion Singleton

        #region metodos
        public List<entMarca> ListarMarcas() {
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            List<entMarca> lista = null;
            try{
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("spListarMarcas", cn);
                cn.Open();
                dr = cmd.ExecuteReader();
                lista = new List<entMarca>();
                while (dr.Read()){
                    entMarca m = new entMarca();
                    m.idMarca = Convert.ToInt16(dr["idMarca"]);
                    m.Descripcion = dr["Descripcion"].ToString();
                    lista.Add(m);
                }
            }catch (Exception e){
                throw e;
            }finally { cmd.Connection.Close(); }
            return lista;
        }

        #endregion metodos
    }
}
