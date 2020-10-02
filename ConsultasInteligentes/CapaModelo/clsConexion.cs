using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data.Odbc;


namespace CapaModelo
{
    class clsConexion
    {

        public OdbcConnection conexion()
        {
            //creacion de la conexion via ODBC
            OdbcConnection conexion = new OdbcConnection("Dsn=Polideportivo");
            try
            {
                conexion.Open();
            }
            catch (OdbcException)
            {
                Console.WriteLine("No Conectó");
            }
            return conexion;
        }

        //metodo para cerrar la conexion
        public void desconexion(OdbcConnection conn)
        {
            try
            {
                conn.Close();
            }
            catch (OdbcException)
            {
                Console.WriteLine("No Conectó");
            }
        }



    }
}
