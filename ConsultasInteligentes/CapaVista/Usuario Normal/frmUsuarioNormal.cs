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
using CapaControlador;
using System.Collections;
using CapaVista.Resultados;

namespace CapaVista.Usuario_Normal
{
    public partial class frmUsuarioNormal : Form
    {

        clsControlador cont = new clsControlador();
        
        //variable que obtiene el dato del txt
        string ValorComparar;
        //variable que obtiene que tipo de operador se usará en la consulta
        string operador;
        //variable que obtiene el dato del dgvCamposCreacion
        string campo;
        //nombre de la tabla de prueba
        string tabla="ESTADO_CIVIL";

        public frmUsuarioNormal()
        {
            InitializeComponent();
            actualizardatagriew();
        }


        public void actualizardatagriew()
        {

            


            //creacion de la conexion via ODBC
            OdbcConnection conn = new OdbcConnection("Dsn=Prueba");
            try
            {
                conn.Open();
            }
            catch (OdbcException)
            {
                Console.WriteLine("No Conectó");
            }


            //DataTable dt = cont.llenarCampos(tabla);
            //dgvCamposCreacion.DataSource = dt;
            //ciclo que recorre la fila de las columnas hasta que ya no hayan más
            //for (int i = 0; i < dt.DataSet.Tables[0].Columns.Count; i++)
            //{
                 //se agregan los nombres de las columnas al dgvCamposCreacion
            //    dgvCamposCreacion.Rows.Add(dt.DataSet.Tables[0].Columns[i].ColumnName);

            //}

            try
            {

                string MostrarEmpleados = "SELECT * FROM " + tabla;

                OdbcCommand Query_SELECT = new OdbcCommand(MostrarEmpleados, conn);

                OdbcDataAdapter adaptador = new OdbcDataAdapter(Query_SELECT);


                DataSet ds = new DataSet();
                adaptador.Fill(ds);

                //ciclo que recorre la fila de las columnas hasta que ya no hayan más
                for (int i = 0; i < ds.Tables[0].Columns.Count; i++)
                {
                    //se agregan los nombres de las columnas al dgvCamposCreacion
                    dgvCamposCreacion.Rows.Add(ds.Tables[0].Columns[i].ColumnName);

                }

            }
            catch (Exception ex)
            {

                Console.WriteLine("Error al ejecutar SQL: " +
                    System.Environment.NewLine + System.Environment.NewLine +
                    ex.GetType().ToString() + System.Environment.NewLine +
                    ex.Message, "Error",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);

            }


        }


        public void dgvCamposCreacion_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            //variable que obtiene el contenido de la celda a la que se le dió clic en dgvCamposCreacion
            campo = dgvCamposCreacion.Rows[e.RowIndex].Cells[e.ColumnIndex].Value.ToString();
        }


        public void creacionConsulta()
        {
            //variable que obtiene el contenido del txtValorCreacion
            ValorComparar = txtValorCreacion.Text;
            //ciclo if para saber que radioButton se está seleccionando, la variable operador obtiene el valor dependiendo el radioButton
            if (rbtnMayorCreacion.Checked == true )
            {
                operador = ">";
            }
            if (rbtnMenorCreacion.Checked == true)
            {
                operador = "<";
            }
            if (rbtnIgualCreacion.Checked == true)
            {
                operador = "=";
            }

            //variable global que arma toda la consulta 
            clsDatoConsulta.consulta = "SELECT * FROM " + tabla + " WHERE " + campo + " " + operador + " " + ValorComparar + ";";


        }


        private void btnBuscarCreacion_Click(object sender, EventArgs e)
        {

            if(rbtnIgualCreacion.Checked == false && rbtnMayorCreacion.Checked == false && rbtnMenorCreacion.Checked == false || txtValorCreacion.Text == ""){
                MessageBox.Show("No ha llenado Todos los Componentes para Realizar la Consulta", "Error",
                    MessageBoxButtons.OK, MessageBoxIcon.Error);
            } else{
                creacionConsulta();
                frmResultado frmSr = new frmResultado();
                frmSr.Show();
            }

        }
    }
}
