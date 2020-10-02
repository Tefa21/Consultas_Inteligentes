using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Data.Odbc;
using System.Collections;
using CapaControlador;




namespace CapaVista.Usuario_Normal
{
    public partial class frmUsuarioNormal : Form
    {
        
        
        
        public frmUsuarioNormal()
        {
            InitializeComponent();
            
        }


        string ValorComparar;
        string operador;
        string campo;
        string consulta;
        string tabla;

        
        /*
        void listado()
        {
            try
            {
                
                string MostrarEmpleados = "SELECT ID_EMPLEADO, NOMBRE1 'PRIMER NOMBRE', NOMBRE2 'SEGUNDO NOMBRE', APELLIDO1 'PRIMER APELLIDO', APELLIDO2 'SEGUNDO APELLIDO', CORREO 'CORREO ELECTRONICO', TELEFONO FROM EMPLEADO";

               // OdbcCommand Query_SELECT = new OdbcCommand(MostrarEmpleados, conexion.conexion());
               // OdbcDataAdapter adaptador = new OdbcDataAdapter(Query_SELECT);
                DataSet ds = new DataSet();
              //  adaptador.Fill(ds);
                ArrayList columnas = new ArrayList();
                for (int i = 0; i < ds.Tables[0].Columns.Count; i++)
                {
                   // dgvCamposCreacion.items.Add(ds.Tables[0].Columns[i].ColumnName);
                    //columnas.Add(ds.Tables[0].Columns[i].ColumnName);
                }
                



            }
            catch (Exception ex)
            {

                MessageBox.Show("Error al ejecutar SQL: " +
                    System.Environment.NewLine + System.Environment.NewLine +
                    ex.GetType().ToString() + System.Environment.NewLine +
                    ex.Message, "Error",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);

            }
        }
        */
        public void dgvCamposCreacion_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            campo = dgvCamposCreacion.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();

        }


        public void creacionConsulta()
        {
            ValorComparar = txtValorCreacion.Text;
            if (rbtnMayorCreacion.Checked = true )
            {
                operador = ">";
            }
            if (rbtnMenorCreacion.Checked = true)
            {
                operador = "<";
            }
            if (rbtnIgualCreacion.Checked = true)
            {
                operador = "=";
            }


            consulta = "SELECT * FROM "+tabla+" WHERE " + campo + " " + operador + " " + ValorComparar+";";

        }

        private void btnGuardarCreacion_Click(object sender, EventArgs e)
        {

            creacionConsulta();

        }

       
    }
}
