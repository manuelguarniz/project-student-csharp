using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaEntidades;
using System.Data.SqlClient;
using System.Data;

namespace CapaDatos{
    public class datProducto{
        #region Singleton
        private static readonly datProducto _instancia = new datProducto();
        public static datProducto Instancia
        {
            get { return datProducto._instancia; }
        }
        #endregion Singleton

        #region metodos
        public List<entProducto> ListarProductos(Int16 idMarca)
        {
            SqlCommand cmd = null;
            SqlDataReader dr = null;
            List<entProducto> lista = null;
            try{
                SqlConnection cn = Conexion.Instancia.Conectar();
                cmd = new SqlCommand("spListarProductosxMarca", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@prmintIdMarca", idMarca);                
                cn.Open();
                dr = cmd.ExecuteReader();
                lista = new List<entProducto>();
                while (dr.Read()){
                    entProducto p = new entProducto();
                    p.idProducto = Convert.ToInt16(dr["idProducto"]);
                    p.Codigo= dr["Codigo"].ToString();
                    p.Descripcion = dr["Descripcion"].ToString();
                    p.Imagen= dr["Imagen"].ToString();
                    p.Stock= Convert.ToInt16(dr["Stock"]);
                    p.Precio= Convert.ToDecimal(dr["Precio"]);

                        entMarca m = new entMarca();
                        m.idMarca = Convert.ToInt16(dr["idMarca"]);
                        m.Descripcion = dr["Descripcion"].ToString();
                    p.Marca = m;
                    lista.Add(p);
                }
            }catch (Exception e){
                throw e;
            }finally { cmd.Connection.Close(); }
            return lista;
        }

        #endregion metodos
    }
}
