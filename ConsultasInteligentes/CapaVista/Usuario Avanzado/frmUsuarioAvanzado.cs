using CapaControlador;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaVista.Usuario_Avanzado
{
    public partial class frmUsuarioAvanzado : Form
    {
        public frmUsuarioAvanzado()
        {
            InitializeComponent();
            Tablas();
        }

        clsControlador Cont = new clsControlador();

        public void Tablas()
        {
            DataTable Datos = Cont.ItemsTablas();
            cmbTablasCreacion.DisplayMember = Datos.Columns[0].ToString();
            cmbTablasCreacion.DataSource = Datos;
            cmbTablasCreacion.ResetText();
        }

        private void frmUsuarioAvanzado_Load(object sender, EventArgs e)
        {

        }
    }
}
