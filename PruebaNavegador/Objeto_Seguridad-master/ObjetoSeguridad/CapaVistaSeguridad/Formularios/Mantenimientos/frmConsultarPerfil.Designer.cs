namespace CapaVistaSeguridad.Formularios.Mantenimientos
{
    partial class frmConsultarPerfil
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
            this.gbxPerfilesdisponibles = new System.Windows.Forms.GroupBox();
            this.dgvPerfilDisponibles = new System.Windows.Forms.DataGridView();
            this.btnSalir = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.btnSeleccionar = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.colCodigo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colNombrePerfil = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colDescripcion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.gbxPerfilesdisponibles.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPerfilDisponibles)).BeginInit();
            this.SuspendLayout();
            // 
            // gbxPerfilesdisponibles
            // 
            this.gbxPerfilesdisponibles.Controls.Add(this.dgvPerfilDisponibles);
            this.gbxPerfilesdisponibles.Controls.Add(this.btnSalir);
            this.gbxPerfilesdisponibles.Controls.Add(this.label2);
            this.gbxPerfilesdisponibles.Controls.Add(this.btnSeleccionar);
            this.gbxPerfilesdisponibles.Controls.Add(this.label1);
            this.gbxPerfilesdisponibles.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxPerfilesdisponibles.Location = new System.Drawing.Point(12, 12);
            this.gbxPerfilesdisponibles.Name = "gbxPerfilesdisponibles";
            this.gbxPerfilesdisponibles.Size = new System.Drawing.Size(486, 323);
            this.gbxPerfilesdisponibles.TabIndex = 6;
            this.gbxPerfilesdisponibles.TabStop = false;
            this.gbxPerfilesdisponibles.Text = "Perfiles Disponibles";
            // 
            // dgvPerfilDisponibles
            // 
            this.dgvPerfilDisponibles.AllowUserToAddRows = false;
            this.dgvPerfilDisponibles.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPerfilDisponibles.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colCodigo,
            this.colNombrePerfil,
            this.colDescripcion});
            this.dgvPerfilDisponibles.Location = new System.Drawing.Point(19, 34);
            this.dgvPerfilDisponibles.Name = "dgvPerfilDisponibles";
            this.dgvPerfilDisponibles.RowHeadersVisible = false;
            this.dgvPerfilDisponibles.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvPerfilDisponibles.Size = new System.Drawing.Size(445, 157);
            this.dgvPerfilDisponibles.TabIndex = 0;
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
            // colCodigo
            // 
            this.colCodigo.HeaderText = "Código";
            this.colCodigo.Name = "colCodigo";
            // 
            // colNombrePerfil
            // 
            this.colNombrePerfil.HeaderText = "Nombre Perfil";
            this.colNombrePerfil.Name = "colNombrePerfil";
            this.colNombrePerfil.Width = 340;
            // 
            // colDescripcion
            // 
            this.colDescripcion.HeaderText = "Descripción";
            this.colDescripcion.Name = "colDescripcion";
            // 
            // frmConsultarPerfil
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.LightCyan;
            this.ClientSize = new System.Drawing.Size(534, 361);
            this.Controls.Add(this.gbxPerfilesdisponibles);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmConsultarPerfil";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmConsultarPerfil";
            this.gbxPerfilesdisponibles.ResumeLayout(false);
            this.gbxPerfilesdisponibles.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPerfilDisponibles)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gbxPerfilesdisponibles;
        public System.Windows.Forms.DataGridView dgvPerfilDisponibles;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnSeleccionar;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridViewTextBoxColumn colCodigo;
        private System.Windows.Forms.DataGridViewTextBoxColumn colNombrePerfil;
        private System.Windows.Forms.DataGridViewTextBoxColumn colDescripcion;
    }
}