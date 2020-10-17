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
            funcTablas();
        }

        clsControlador Cont = new clsControlador();

        public void funcTablas()
        {
            DataTable Datos = Cont.funcItemsTablas();
            cmbTablasCreacion.DisplayMember = Datos.Columns[0].ToString();
            cmbTablasCreacion.DataSource = Datos;
            cmbTablasCreacion.ResetText();
            dgvTablasCreacion.Enabled = false;
        }

        public void funcCampos()
        {
            string tabla = cmbTablasCreacion.Text;
            DataTable Campos = Cont.funcItemsCampos(tabla);
            cmbCampoCreacion.DisplayMember = Campos.Columns[0].ToString();
            cmbCampoCreacion.DataSource = Campos;
            cmbCampoCreacion.ResetText();

        }

        private void frmUsuarioAvanzado_Load(object sender, EventArgs e)
        {

        }

        private void btnAgregarTablaCreacion_Click(object sender, EventArgs e)
        {

            if (dgvTablasCreacion.RowCount > 0)
            {
                // Primero averigua si el registro existe:
                bool existe = false;
                for (int i = 0; i < dgvTablasCreacion.RowCount; i++)
                {
                    if (Convert.ToString(dgvTablasCreacion.Rows[i].Cells["clmTabla"].Value) == cmbTablasCreacion.Text)
                    {
                        MessageBox.Show("La tabla ya esta ingresada");
                        existe = true;
                        break;
                    }
                }
                if (existe == false)
                {
                    dgvTablasCreacion.AutoGenerateColumns = false;
                    DataGridViewRow row = (DataGridViewRow)dgvTablasCreacion.Rows[0].Clone();
                    row.Cells[0].Value = cmbTablasCreacion.Text;
                    dgvTablasCreacion.Rows.Add(row);
                }
            }
        }

        private void btnQuitarTablaCreacion_Click(object sender, EventArgs e)
        {
            if (dgvTablasCreacion.SelectedRows.Count > -1)
            {
                for (int i = 0; i < dgvTablasCreacion.RowCount; i++)
                {
                    if (Convert.ToString(dgvTablasCreacion.Rows[i].Cells["clmTabla"].Value) == cmbTablasCreacion.Text)
                    {
                        dgvTablasCreacion.Rows.Remove(dgvTablasCreacion.Rows[i]);
                    }
                }
            }

        }
    }
}
