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


        public DataSet llenarCampos(string tabla)
        {
            DataSet Items = cons.llenarCampos(tabla);
            return Items;
        }

        public DataTable ItemsTablas()
        {
            DataTable Items = cons.llenarCmbTablas();
            return Items;
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
