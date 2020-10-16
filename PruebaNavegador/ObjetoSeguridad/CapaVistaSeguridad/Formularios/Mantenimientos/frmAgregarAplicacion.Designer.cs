namespace CapaVistaSeguridad.Formularios.Mantenimientos
{
    partial class frmAgregarAplicacion
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
            this.dgvAplicaciones = new System.Windows.Forms.DataGridView();
            this.colCodigo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colNombreAplicacion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnSeleccionar = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnSalir = new System.Windows.Forms.Button();
            this.gbxAplicacionesdisponibles = new System.Windows.Forms.GroupBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAplicaciones)).BeginInit();
            this.gbxAplicacionesdisponibles.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgvAplicaciones
            // 
            this.dgvAplicaciones.AllowUserToAddRows = false;
            this.dgvAplicaciones.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvAplicaciones.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colCodigo,
            this.colNombreAplicacion});
            this.dgvAplicaciones.Location = new System.Drawing.Point(19, 34);
            this.dgvAplicaciones.Name = "dgvAplicaciones";
            this.dgvAplicaciones.RowHeadersVisible = false;
            this.dgvAplicaciones.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvAplicaciones.Size = new System.Drawing.Size(445, 157);
            this.dgvAplicaciones.TabIndex = 0;
            // 
            // colCodigo
            // 
            this.colCodigo.HeaderText = "Código";
            this.colCodigo.Name = "colCodigo";
            // 
            // colNombreAplicacion
            // 
            this.colNombreAplicacion.HeaderText = "Nombre aplicación";
            this.colNombreAplicacion.Name = "colNombreAplicacion";
            this.colNombreAplicacion.Width = 340;
            // 
            // btnSeleccionar
            // 
            this.btnSeleccionar.Location = new System.Drawing.Point(71, 234);
            this.btnSeleccionar.Name = "btnSeleccionar";
            this.btnSeleccionar.Size = new System.Drawing.Size(100, 47);
            this.btnSeleccionar.TabIndex = 1;
            this.btnSeleccionar.UseVisualStyleBackColor = true;
            this.btnSeleccionar.Click += new System.EventHandler(this.btnSeleccionar_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(83, 204);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(75, 16);
            this.label1.TabIndex = 2;
            this.label1.Text = "Seleccionar";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(286, 204);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(61, 16);
            this.label2.TabIndex = 3;
            this.label2.Text = "Cancelar";
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(264, 234);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(100, 47);
            this.btnSalir.TabIndex = 4;
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // gbxAplicacionesdisponibles
            // 
            this.gbxAplicacionesdisponibles.Controls.Add(this.dgvAplicaciones);
            this.gbxAplicacionesdisponibles.Controls.Add(this.btnSalir);
            this.gbxAplicacionesdisponibles.Controls.Add(this.label2);
            this.gbxAplicacionesdisponibles.Controls.Add(this.btnSeleccionar);
            this.gbxAplicacionesdisponibles.Controls.Add(this.label1);
            this.gbxAplicacionesdisponibles.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxAplicacionesdisponibles.Location = new System.Drawing.Point(24, 21);
            this.gbxAplicacionesdisponibles.Name = "gbxAplicacionesdisponibles";
            this.gbxAplicacionesdisponibles.Size = new System.Drawing.Size(486, 323);
            this.gbxAplicacionesdisponibles.TabIndex = 5;
            this.gbxAplicacionesdisponibles.TabStop = false;
            this.gbxAplicacionesdisponibles.Text = "Aplicaciones Disponibles";
            // 
            // frmAgregarAplicacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.LightCyan;
            this.ClientSize = new System.Drawing.Size(534, 361);
            this.Controls.Add(this.gbxAplicacionesdisponibles);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmAgregarAplicacion";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmAgregarAplicacion";
            ((System.ComponentModel.ISupportInitialize)(this.dgvAplicaciones)).EndInit();
            this.gbxAplicacionesdisponibles.ResumeLayout(false);
            this.gbxAplicacionesdisponibles.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Button btnSeleccionar;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.GroupBox gbxAplicacionesdisponibles;
        public System.Windows.Forms.DataGridView dgvAplicaciones;
        private System.Windows.Forms.DataGridViewTextBoxColumn colCodigo;
        private System.Windows.Forms.DataGridViewTextBoxColumn colNombreAplicacion;
    }
}