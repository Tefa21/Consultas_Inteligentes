using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.Odbc;
using System.Collections;
using System.Windows.Forms;

namespace CapaModelo
{
    public class clsConsultas
    {

        clsConexion conexion = new clsConexion();


        public DataSet llenarCampos(string tabla)// metodo  que obtinene el contenio de una tabla
        {

            DataSet Campos = new DataSet();

            try
            {
                string Query_SELECT = "SELECT * FROM " + tabla;
                OdbcCommand Ejecucion_Query = new OdbcCommand(Query_SELECT, conexion.conexion());
                OdbcDataAdapter Lector = new OdbcDataAdapter();

                Lector.SelectCommand = Ejecucion_Query;
                Lector.Fill(Campos);

                return Campos;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al ejecutar SQL: " +
                     System.Environment.NewLine + System.Environment.NewLine +
                     ex.GetType().ToString() + System.Environment.NewLine +
                     ex.Message, "Error",
                     MessageBoxButtons.OK, MessageBoxIcon.Error);
                return Campos;
            }
            

        }

        public OdbcDataAdapter ejecucionConsulta(string consulta)
        {
            string Query_SELECT = consulta;
            OdbcDataAdapter tablaDatos = new OdbcDataAdapter(Query_SELECT, conexion.conexion());
            return tablaDatos;
        }

        public DataTable llenarCmbTablas()
        {
            DataTable Datos = new DataTable();

            try
            {

                string CargaDepa = "SHOW TABLES";
                OdbcCommand Query_Busqueda1 = new OdbcCommand(CargaDepa, conexion.conexion());

                OdbcDataAdapter Lector = new OdbcDataAdapter();
                Lector.SelectCommand = Query_Busqueda1;
                Lector.Fill(Datos);
                return Datos;

            }
            catch (Exception ex)
            {

                MessageBox.Show("Error al ejecutar SQL: " +
                    System.Environment.NewLine + System.Environment.NewLine +
                    ex.GetType().ToString() + System.Environment.NewLine +
                    ex.Message, "Error",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
                return Datos;

            }

        }

        public DataTable llenarCmbCampos(string tabla)
        {
            DataTable Datos = new DataTable();

            try 
            {
                string CargaCampos = "select * from Information_Schema.Columns WHERE TABLE_NAME = " + tabla;
                OdbcCommand Query_Busqueda1 = new OdbcCommand(CargaCampos, conexion.conexion());

                OdbcDataAdapter Lector = new OdbcDataAdapter();
                Lector.SelectCommand = Query_Busqueda1;
                Lector.Fill(Datos);
                return Datos;
            }
            catch (Exception ex)
            {

                MessageBox.Show("Error al ejecutar SQL: " +
                   System.Environment.NewLine + System.Environment.NewLine +
                   ex.GetType().ToString() + System.Environment.NewLine +
                   ex.Message, "Error",
                   MessageBoxButtons.OK, MessageBoxIcon.Error);
                return Datos;
            }
        }


    }
}
