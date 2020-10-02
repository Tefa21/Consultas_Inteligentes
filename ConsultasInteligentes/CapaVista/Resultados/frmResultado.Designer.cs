namespace CapaVista.Resultados
{
    partial class frmResultado
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmResultado));
            this.dgvDatosMostrar = new System.Windows.Forms.DataGridView();
            this.gbxBuscarMostrar = new System.Windows.Forms.GroupBox();
            this.btnMostrarBuscar = new System.Windows.Forms.Button();
            this.txtBuscarMostrar = new System.Windows.Forms.TextBox();
            this.lblNombreMostrar = new System.Windows.Forms.Label();
            this.gbxOrdenCreacion = new System.Windows.Forms.GroupBox();
            this.rbtnMenorMayorCreacion = new System.Windows.Forms.RadioButton();
            this.rbtnMayorMenorCreacion = new System.Windows.Forms.RadioButton();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDatosMostrar)).BeginInit();
            this.gbxBuscarMostrar.SuspendLayout();
            this.gbxOrdenCreacion.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgvDatosMostrar
            // 
            this.dgvDatosMostrar.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDatosMostrar.Location = new System.Drawing.Point(12, 120);
            this.dgvDatosMostrar.Name = "dgvDatosMostrar";
            this.dgvDatosMostrar.Size = new System.Drawing.Size(776, 318);
            this.dgvDatosMostrar.TabIndex = 4;
            // 
            // gbxBuscarMostrar
            // 
            this.gbxBuscarMostrar.Controls.Add(this.btnMostrarBuscar);
            this.gbxBuscarMostrar.Controls.Add(this.txtBuscarMostrar);
            this.gbxBuscarMostrar.Controls.Add(this.lblNombreMostrar);
            this.gbxBuscarMostrar.Location = new System.Drawing.Point(12, 29);
            this.gbxBuscarMostrar.Name = "gbxBuscarMostrar";
            this.gbxBuscarMostrar.Size = new System.Drawing.Size(616, 71);
            this.gbxBuscarMostrar.TabIndex = 3;
            this.gbxBuscarMostrar.TabStop = false;
            this.gbxBuscarMostrar.Text = "Búsqueda de Consulta";
            // 
            // btnMostrarBuscar
            // 
            this.btnMostrarBuscar.Image = ((System.Drawing.Image)(resources.GetObject("btnMostrarBuscar.Image")));
            this.btnMostrarBuscar.Location = new System.Drawing.Point(544, 22);
            this.btnMostrarBuscar.Name = "btnMostrarBuscar";
            this.btnMostrarBuscar.Size = new System.Drawing.Size(48, 33);
            this.btnMostrarBuscar.TabIndex = 2;
            this.btnMostrarBuscar.UseVisualStyleBackColor = true;
            // 
            // txtBuscarMostrar
            // 
            this.txtBuscarMostrar.Location = new System.Drawing.Point(194, 29);
            this.txtBuscarMostrar.Name = "txtBuscarMostrar";
            this.txtBuscarMostrar.Size = new System.Drawing.Size(312, 20);
            this.txtBuscarMostrar.TabIndex = 1;
            // 
            // lblNombreMostrar
            // 
            this.lblNombreMostrar.AutoSize = true;
            this.lblNombreMostrar.Location = new System.Drawing.Point(38, 32);
            this.lblNombreMostrar.Name = "lblNombreMostrar";
            this.lblNombreMostrar.Size = new System.Drawing.Size(123, 13);
            this.lblNombreMostrar.TabIndex = 0;
            this.lblNombreMostrar.Text = "Nombre de la Consulta";
            // 
            // gbxOrdenCreacion
            // 
            this.gbxOrdenCreacion.Controls.Add(this.rbtnMenorMayorCreacion);
            this.gbxOrdenCreacion.Controls.Add(this.rbtnMayorMenorCreacion);
            this.gbxOrdenCreacion.Location = new System.Drawing.Point(645, 12);
            this.gbxOrdenCreacion.Name = "gbxOrdenCreacion";
            this.gbxOrdenCreacion.Size = new System.Drawing.Size(143, 88);
            this.gbxOrdenCreacion.TabIndex = 16;
            this.gbxOrdenCreacion.TabStop = false;
            this.gbxOrdenCreacion.Text = "Orden de la Consulta";
            // 
            // rbtnMenorMayorCreacion
            // 
            this.rbtnMenorMayorCreacion.AutoSize = true;
            this.rbtnMenorMayorCreacion.Location = new System.Drawing.Point(17, 52);
            this.rbtnMenorMayorCreacion.Name = "rbtnMenorMayorCreacion";
            this.rbtnMenorMayorCreacion.Size = new System.Drawing.Size(103, 17);
            this.rbtnMenorMayorCreacion.TabIndex = 1;
            this.rbtnMenorMayorCreacion.TabStop = true;
            this.rbtnMenorMayorCreacion.Text = "Menor a Mayor";
            this.rbtnMenorMayorCreacion.UseVisualStyleBackColor = true;
            // 
            // rbtnMayorMenorCreacion
            // 
            this.rbtnMayorMenorCreacion.AutoSize = true;
            this.rbtnMayorMenorCreacion.Location = new System.Drawing.Point(17, 29);
            this.rbtnMayorMenorCreacion.Name = "rbtnMayorMenorCreacion";
            this.rbtnMayorMenorCreacion.Size = new System.Drawing.Size(103, 17);
            this.rbtnMayorMenorCreacion.TabIndex = 0;
            this.rbtnMayorMenorCreacion.TabStop = true;
            this.rbtnMayorMenorCreacion.Text = "Mayor a Menor";
            this.rbtnMayorMenorCreacion.UseVisualStyleBackColor = true;
            // 
            // frmResultado
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.gbxOrdenCreacion);
            this.Controls.Add(this.dgvDatosMostrar);
            this.Controls.Add(this.gbxBuscarMostrar);
            this.Font = new System.Drawing.Font("Rockwell", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmResultado";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Resultado de la Consulta";
            ((System.ComponentModel.ISupportInitialize)(this.dgvDatosMostrar)).EndInit();
            this.gbxBuscarMostrar.ResumeLayout(false);
            this.gbxBuscarMostrar.PerformLayout();
            this.gbxOrdenCreacion.ResumeLayout(false);
            this.gbxOrdenCreacion.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvDatosMostrar;
        private System.Windows.Forms.GroupBox gbxBuscarMostrar;
        private System.Windows.Forms.Button btnMostrarBuscar;
        private System.Windows.Forms.TextBox txtBuscarMostrar;
        private System.Windows.Forms.Label lblNombreMostrar;
        private System.Windows.Forms.GroupBox gbxOrdenCreacion;
        private System.Windows.Forms.RadioButton rbtnMenorMayorCreacion;
        private System.Windows.Forms.RadioButton rbtnMayorMenorCreacion;
    }
}