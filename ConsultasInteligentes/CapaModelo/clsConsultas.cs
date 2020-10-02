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



       public void campos_entidad(string MostrarEmpleados)
        {

            try
            {

                MostrarEmpleados = "SELECT ID_EMPLEADO, NOMBRE1 'PRIMER NOMBRE', NOMBRE2 'SEGUNDO NOMBRE', APELLIDO1 'PRIMER APELLIDO', APELLIDO2 'SEGUNDO APELLIDO', CORREO 'CORREO ELECTRONICO', TELEFONO FROM EMPLEADO";

                OdbcCommand Query_SELECT = new OdbcCommand(MostrarEmpleados, conexion.conexion());
                OdbcDataAdapter Adaptador = new OdbcDataAdapter(Query_SELECT);
                DataSet ds = new DataSet();
                Adaptador.Fill(ds);

                ArrayList columnas = new ArrayList();
                for (int i = 0; i < ds.Tables[0].Columns.Count; i++)
                {
                    columnas.Add(ds.Tables[0].Columns[i].ColumnName);
                    
                }
                

            }
            catch (Exception ex)
            {

                Console.WriteLine("Error al ejecutar SQL: " +
                    System.Environment.NewLine + System.Environment.NewLine +
                    ex.GetType().ToString() + System.Environment.NewLine +
                    ex.Message, "Error");
                
            }
        }


    }
}
