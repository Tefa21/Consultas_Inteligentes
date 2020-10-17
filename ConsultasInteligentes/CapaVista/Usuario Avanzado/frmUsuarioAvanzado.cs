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

        private void funcTablas()
        {
            DataTable Datos = Cont.funcItemsTablas();
            cmbTablasCreacion.DisplayMember = Datos.Columns[0].ToString();
            cmbTablasCreacion.DataSource = Datos;
            cmbTablasCreacion.ResetText();
            dgvTablasCreacion.Enabled = false;
        }

        private void funcCampos()
        {
            string tabla = cmbTablasCreacion.Text;
            DataTable Campos = Cont.funcItemsCampos(tabla);
            cmbCampoCreacion.DisplayMember = Campos.Columns[3].ToString();
            cmbCampoCreacion.DataSource = Campos;
            cmbCampoCreacion.ResetText();

        }
        private void funcLlenarCmb() {

            DataTable dt = new DataTable();
            dt.Clear();
            cmbCampoComparacionCreacion.Items.Clear();
            cmbCampoAgruparCreacion.Items.Clear();
            dt.Columns.Add("clmCampo", typeof(System.String));
            foreach (DataGridViewRow rowGrid in dgvCamposCreacion.Rows)
            {
                DataRow row = dt.NewRow();
                row["clmCampo"] = Convert.ToString(rowGrid.Cells[0].Value);

                dt.Rows.Add(row);
            }
            foreach (DataRow row in dt.Rows)
            {
                cmbCampoComparacionCreacion.Items.Add(row[0].ToString());
                cmbCampoAgruparCreacion.Items.Add(row[0].ToString());
            }
        }

        private void frmUsuarioAvanzado_Load(object sender, EventArgs e)
        {

        }

        private void btnAgregarTablaCreacion_Click(object sender, EventArgs e)
        {

            if (dgvTablasCreacion.RowCount > -1)
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
                    
                    dgvTablasCreacion.Rows.Add(cmbTablasCreacion.Text);
                    cmbTablasCreacion.Enabled = false;
                    btnAgregarTablaCreacion.Enabled = false;
                    funcCampos();
                }
            }
        }

        private void btnQuitarTablaCreacion_Click(object sender, EventArgs e)
        {
            if (dgvTablasCreacion.SelectedRows.Count > 0)
            {
                dgvTablasCreacion.Rows.Remove(dgvTablasCreacion.CurrentRow);
                cmbTablasCreacion.Enabled = true;
                btnAgregarTablaCreacion.Enabled = true;
                cmbCampoCreacion.Text = "";
                txtAliasCreacion.Text = "";
                dgvCamposCreacion.Rows.Clear();
            }

        }

        private void btnAgregarCampoCreacion_Click(object sender, EventArgs e)
        {
            if (chkTodosCamp.Checked == true) {

                dgvCamposCreacion.Rows.Add("*", "Todos los campos");
                funcLlenarCmb();
            }
            else{
                if(cmbCampoCreacion.Text!=""||txtAliasCreacion.Text != ""){
                    // Primero averigua si el registro existe:
                    bool existe = false;
                    for (int i = 0; i < dgvCamposCreacion.RowCount; i++)
                    {
                        if (Convert.ToString(dgvCamposCreacion.Rows[i].Cells["clmCampo"].Value) == cmbCampoCreacion.Text)
                        {
                            MessageBox.Show("La tabla ya esta ingresada");
                            existe = true;
                            break;
                        }
                    }
                    if (existe == false)
                    {

                        dgvCamposCreacion.Rows.Add(cmbCampoCreacion.Text, txtAliasCreacion.Text);
                        funcLlenarCmb();
                    }
                }
            }

        }

        private void chkTodosCamp_CheckedChanged(object sender, EventArgs e)
        {
            if (chkTodosCamp.Checked == true) {
                txtAliasCreacion.Enabled = false;
                cmbCampoCreacion.Enabled = false;
                txtAliasCreacion.Text = "";
                cmbCampoCreacion.Text = "";
            }
            else
            {
                txtAliasCreacion.Enabled = true;
                cmbCampoCreacion.Enabled = true;
            }
        }

        private void btnQuitarCampoCreacion_Click(object sender, EventArgs e)
        {
            if (dgvCamposCreacion.SelectedRows.Count > 0)
            {
                dgvCamposCreacion.Rows.Remove(dgvCamposCreacion.CurrentRow);
                funcLlenarCmb();
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}
