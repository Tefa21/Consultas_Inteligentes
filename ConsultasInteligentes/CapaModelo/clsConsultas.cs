using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Odbc;
using System.Collections;


namespace CapaModelo
{
    public class clsConsultas
    {

        clsConexion conexion = new clsConexion();


        public OdbcDataAdapter llenarCampos(string tabla)// metodo  que obtinene el contenio de una tabla
        {
           
            string Query_SELECT = "SELECT * FROM " + tabla;
            OdbcDataAdapter dataTable = new OdbcDataAdapter(Query_SELECT, conexion.conexion());
            return dataTable;

        }

        public OdbcDataAdapter ejecucionConsulta(string consulta)
        {
            string Query_SELECT = consulta;
            OdbcDataAdapter tablaDatos = new OdbcDataAdapter(Query_SELECT, conexion.conexion());
            return tablaDatos;
        }




    }
}
