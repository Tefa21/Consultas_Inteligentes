using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Odbc;
using CapaModelo;
using System.Collections;
using System.Windows;

namespace CapaControlador
{
    public class clsControlador
    {
        clsConsultas cons = new clsConsultas();


        public DataTable llenarCampos(string tabla)
        {
            OdbcDataAdapter dt = cons.llenarCampos(tabla);
                        DataTable table = new DataTable();
            //DataSet ds = new DataSet();
            //ds.Tables.Add(table);
          
            dt.Fill(table);


            return table;
            

        }

        public DataTable ejecucionConsulta(string consulta)
        {

            OdbcDataAdapter dt = cons.ejecucionConsulta(consulta);
            DataTable table = new DataTable();
            dt.Fill(table);
            return table;

        }








    }
}
