﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace CapaDatos
{
    public class Conexion
    {
        #region Singleton
        private static readonly Conexion _instancia = new Conexion();
        public static Conexion Instancia {
            get { return Conexion._instancia; }
        }
        #endregion Singleton

        #region metodos
        public SqlConnection Conectar() {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=.; Initial Catalog=BDArticulos;" +
                                "User ID=sa; Password=A123a";
                                //"Integrated Security=true";
            return cn;
        }
        #endregion metodos
    }
}
