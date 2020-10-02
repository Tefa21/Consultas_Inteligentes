namespace CapaVista.Usuario_Normal
{
    partial class frmUsuarioNormal
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmUsuarioNormal));
            this.btnCancelarCreacion = new System.Windows.Forms.Button();
            this.btnGuardarCreacion = new System.Windows.Forms.Button();
            this.dgvCamposCreacion = new System.Windows.Forms.DataGridView();
            this.clmCampo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.txtValorCreacion = new System.Windows.Forms.TextBox();
            this.lblValorCreacion = new System.Windows.Forms.Label();
            this.rbtnIgualCreacion = new System.Windows.Forms.RadioButton();
            this.rbtnMayorCreacion = new System.Windows.Forms.RadioButton();
            this.rbtnMenorCreacion = new System.Windows.Forms.RadioButton();
            this.gbxCamposCreacion = new System.Windows.Forms.GroupBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvCamposCreacion)).BeginInit();
            this.gbxCamposCreacion.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnCancelarCreacion
            // 
            this.btnCancelarCreacion.Image = ((System.Drawing.Image)(resources.GetObject("btnCancelarCreacion.Image")));
            this.btnCancelarCreacion.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnCancelarCreacion.Location = new System.Drawing.Point(428, 235);
            this.btnCancelarCreacion.Name = "btnCancelarCreacion";
            this.btnCancelarCreacion.Size = new System.Drawing.Size(90, 36);
            this.btnCancelarCreacion.TabIndex = 22;
            this.btnCancelarCreacion.Text = "Cancelar";
            this.btnCancelarCreacion.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCancelarCreacion.UseVisualStyleBackColor = true;
            // 
            // btnGuardarCreacion
            // 
            this.btnGuardarCreacion.Image = ((System.Drawing.Image)(resources.GetObject("btnGuardarCreacion.Image")));
            this.btnGuardarCreacion.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnGuardarCreacion.Location = new System.Drawing.Point(324, 235);
            this.btnGuardarCreacion.Name = "btnGuardarCreacion";
            this.btnGuardarCreacion.Size = new System.Drawing.Size(85, 36);
            this.btnGuardarCreacion.TabIndex = 21;
            this.btnGuardarCreacion.Text = "Buscar";
            this.btnGuardarCreacion.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnGuardarCreacion.UseVisualStyleBackColor = true;
            // 
            // dgvCamposCreacion
            // 
            this.dgvCamposCreacion.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvCamposCreacion.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.clmCampo});
            this.dgvCamposCreacion.Location = new System.Drawing.Point(18, 31);
            this.dgvCamposCreacion.Name = "dgvCamposCreacion";
            this.dgvCamposCreacion.Size = new System.Drawing.Size(227, 240);
            this.dgvCamposCreacion.TabIndex = 20;
            // 
            // clmCampo
            // 
            this.clmCampo.Frozen = true;
            this.clmCampo.HeaderText = "Campos";
            this.clmCampo.Name = "clmCampo";
            this.clmCampo.ReadOnly = true;
            // 
            // txtValorCreacion
            // 
            this.txtValorCreacion.Location = new System.Drawing.Point(324, 136);
            this.txtValorCreacion.Name = "txtValorCreacion";
            this.txtValorCreacion.Size = new System.Drawing.Size(194, 20);
            this.txtValorCreacion.TabIndex = 7;
            // 
            // lblValorCreacion
            // 
            this.lblValorCreacion.AutoSize = true;
            this.lblValorCreacion.Location = new System.Drawing.Point(370, 114);
            this.lblValorCreacion.Name = "lblValorCreacion";
            this.lblValorCreacion.Size = new System.Drawing.Size(100, 13);
            this.lblValorCreacion.TabIndex = 7;
            this.lblValorCreacion.Text = "Valor a Comparar";
            // 
            // rbtnIgualCreacion
            // 
            this.rbtnIgualCreacion.AutoSize = true;
            this.rbtnIgualCreacion.Location = new System.Drawing.Point(274, 137);
            this.rbtnIgualCreacion.Name = "rbtnIgualCreacion";
            this.rbtnIgualCreacion.Size = new System.Drawing.Size(32, 17);
            this.rbtnIgualCreacion.TabIndex = 2;
            this.rbtnIgualCreacion.TabStop = true;
            this.rbtnIgualCreacion.Text = "=";
            this.rbtnIgualCreacion.UseVisualStyleBackColor = true;
            // 
            // rbtnMayorCreacion
            // 
            this.rbtnMayorCreacion.AutoSize = true;
            this.rbtnMayorCreacion.Location = new System.Drawing.Point(274, 114);
            this.rbtnMayorCreacion.Name = "rbtnMayorCreacion";
            this.rbtnMayorCreacion.Size = new System.Drawing.Size(32, 17);
            this.rbtnMayorCreacion.TabIndex = 1;
            this.rbtnMayorCreacion.TabStop = true;
            this.rbtnMayorCreacion.Text = ">";
            this.rbtnMayorCreacion.UseVisualStyleBackColor = true;
            // 
            // rbtnMenorCreacion
            // 
            this.rbtnMenorCreacion.AutoSize = true;
            this.rbtnMenorCreacion.Location = new System.Drawing.Point(274, 160);
            this.rbtnMenorCreacion.Name = "rbtnMenorCreacion";
            this.rbtnMenorCreacion.Size = new System.Drawing.Size(32, 17);
            this.rbtnMenorCreacion.TabIndex = 0;
            this.rbtnMenorCreacion.TabStop = true;
            this.rbtnMenorCreacion.Text = "<";
            this.rbtnMenorCreacion.UseVisualStyleBackColor = true;
            // 
            // gbxCamposCreacion
            // 
            this.gbxCamposCreacion.Controls.Add(this.dgvCamposCreacion);
            this.gbxCamposCreacion.Controls.Add(this.btnCancelarCreacion);
            this.gbxCamposCreacion.Controls.Add(this.rbtnMayorCreacion);
            this.gbxCamposCreacion.Controls.Add(this.txtValorCreacion);
            this.gbxCamposCreacion.Controls.Add(this.lblValorCreacion);
            this.gbxCamposCreacion.Controls.Add(this.rbtnMenorCreacion);
            this.gbxCamposCreacion.Controls.Add(this.rbtnIgualCreacion);
            this.gbxCamposCreacion.Controls.Add(this.btnGuardarCreacion);
            this.gbxCamposCreacion.Location = new System.Drawing.Point(12, 12);
            this.gbxCamposCreacion.Name = "gbxCamposCreacion";
            this.gbxCamposCreacion.Size = new System.Drawing.Size(540, 286);
            this.gbxCamposCreacion.TabIndex = 13;
            this.gbxCamposCreacion.TabStop = false;
            this.gbxCamposCreacion.Text = "Campos de la Consulta";
            // 
            // frmUsuarioNormal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(564, 310);
            this.Controls.Add(this.gbxCamposCreacion);
            this.Font = new System.Drawing.Font("Rockwell", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmUsuarioNormal";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Consultas Inteligentes";
            ((System.ComponentModel.ISupportInitialize)(this.dgvCamposCreacion)).EndInit();
            this.gbxCamposCreacion.ResumeLayout(false);
            this.gbxCamposCreacion.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Button btnCancelarCreacion;
        private System.Windows.Forms.Button btnGuardarCreacion;
        private System.Windows.Forms.DataGridView dgvCamposCreacion;
        private System.Windows.Forms.DataGridViewTextBoxColumn clmCampo;
        private System.Windows.Forms.TextBox txtValorCreacion;
        private System.Windows.Forms.Label lblValorCreacion;
        private System.Windows.Forms.RadioButton rbtnIgualCreacion;
        private System.Windows.Forms.RadioButton rbtnMayorCreacion;
        private System.Windows.Forms.RadioButton rbtnMenorCreacion;
        private System.Windows.Forms.GroupBox gbxCamposCreacion;
    }
}