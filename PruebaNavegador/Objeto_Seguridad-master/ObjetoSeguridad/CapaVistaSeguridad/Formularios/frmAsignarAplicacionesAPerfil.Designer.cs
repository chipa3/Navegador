namespace CapaVistaSeguridad.Formularios
{
    partial class frmAsignarAplicacionesAPerfil
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
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnNuevo = new System.Windows.Forms.Button();
            this.btnEliminar = new System.Windows.Forms.Button();
            this.btnModificar = new System.Windows.Forms.Button();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.lblPerfil = new System.Windows.Forms.Label();
            this.txtPerfil = new System.Windows.Forms.TextBox();
            this.txtAplicacion = new System.Windows.Forms.TextBox();
            this.lblAplicacion = new System.Windows.Forms.Label();
            this.btnPerfil = new System.Windows.Forms.Button();
            this.btnAplicación = new System.Windows.Forms.Button();
            this.gbxPermisos = new System.Windows.Forms.GroupBox();
            this.chkImprimir = new System.Windows.Forms.CheckBox();
            this.chkConsultar = new System.Windows.Forms.CheckBox();
            this.chkEliminar = new System.Windows.Forms.CheckBox();
            this.chkModificar = new System.Windows.Forms.CheckBox();
            this.chkIngreso = new System.Windows.Forms.CheckBox();
            this.dgvAppAsignadas = new System.Windows.Forms.DataGridView();
            this.colCodigo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colNombreAPP = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.btnSeleccionar = new System.Windows.Forms.Button();
            this.gbxPermisos.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAppAsignadas)).BeginInit();
            this.SuspendLayout();
            // 
            // btnCancelar
            // 
            this.btnCancelar.Font = new System.Drawing.Font("Rockwell", 8.25F);
            this.btnCancelar.Location = new System.Drawing.Point(334, 25);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(61, 39);
            this.btnCancelar.TabIndex = 5;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // btnNuevo
            // 
            this.btnNuevo.Font = new System.Drawing.Font("Rockwell", 8.25F);
            this.btnNuevo.Location = new System.Drawing.Point(62, 25);
            this.btnNuevo.Name = "btnNuevo";
            this.btnNuevo.Size = new System.Drawing.Size(57, 39);
            this.btnNuevo.TabIndex = 1;
            this.btnNuevo.Text = "Nuevo";
            this.btnNuevo.UseVisualStyleBackColor = true;
            this.btnNuevo.Click += new System.EventHandler(this.btnNuevo_Click);
            // 
            // btnEliminar
            // 
            this.btnEliminar.Font = new System.Drawing.Font("Rockwell", 8F);
            this.btnEliminar.Location = new System.Drawing.Point(262, 25);
            this.btnEliminar.Name = "btnEliminar";
            this.btnEliminar.Size = new System.Drawing.Size(66, 39);
            this.btnEliminar.TabIndex = 4;
            this.btnEliminar.Text = "Eliminar";
            this.btnEliminar.UseVisualStyleBackColor = true;
            this.btnEliminar.Click += new System.EventHandler(this.btnEliminar_Click);
            // 
            // btnModificar
            // 
            this.btnModificar.Font = new System.Drawing.Font("Rockwell", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnModificar.Location = new System.Drawing.Point(191, 25);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(65, 39);
            this.btnModificar.TabIndex = 3;
            this.btnModificar.Text = "Modificar";
            this.btnModificar.UseVisualStyleBackColor = true;
            this.btnModificar.Click += new System.EventHandler(this.btnModificar_Click);
            // 
            // btnGuardar
            // 
            this.btnGuardar.Font = new System.Drawing.Font("Rockwell", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGuardar.Location = new System.Drawing.Point(125, 25);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(60, 39);
            this.btnGuardar.TabIndex = 2;
            this.btnGuardar.Text = "Guardar";
            this.btnGuardar.UseVisualStyleBackColor = true;
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // lblPerfil
            // 
            this.lblPerfil.AutoSize = true;
            this.lblPerfil.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPerfil.Location = new System.Drawing.Point(28, 90);
            this.lblPerfil.Name = "lblPerfil";
            this.lblPerfil.Size = new System.Drawing.Size(37, 16);
            this.lblPerfil.TabIndex = 6;
            this.lblPerfil.Text = "Perfil";
            // 
            // txtPerfil
            // 
            this.txtPerfil.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPerfil.Location = new System.Drawing.Point(71, 90);
            this.txtPerfil.Name = "txtPerfil";
            this.txtPerfil.Size = new System.Drawing.Size(203, 23);
            this.txtPerfil.TabIndex = 7;
            // 
            // txtAplicacion
            // 
            this.txtAplicacion.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtAplicacion.Location = new System.Drawing.Point(417, 87);
            this.txtAplicacion.Name = "txtAplicacion";
            this.txtAplicacion.Size = new System.Drawing.Size(203, 23);
            this.txtAplicacion.TabIndex = 10;
            // 
            // lblAplicacion
            // 
            this.lblAplicacion.AutoSize = true;
            this.lblAplicacion.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAplicacion.Location = new System.Drawing.Point(342, 90);
            this.lblAplicacion.Name = "lblAplicacion";
            this.lblAplicacion.Size = new System.Drawing.Size(69, 16);
            this.lblAplicacion.TabIndex = 9;
            this.lblAplicacion.Text = "Aplicación";
            // 
            // btnPerfil
            // 
            this.btnPerfil.Location = new System.Drawing.Point(273, 89);
            this.btnPerfil.Name = "btnPerfil";
            this.btnPerfil.Size = new System.Drawing.Size(24, 25);
            this.btnPerfil.TabIndex = 8;
            this.btnPerfil.Text = "?";
            this.btnPerfil.UseVisualStyleBackColor = true;
            this.btnPerfil.Click += new System.EventHandler(this.btnPerfil_Click);
            // 
            // btnAplicación
            // 
            this.btnAplicación.Location = new System.Drawing.Point(618, 86);
            this.btnAplicación.Name = "btnAplicación";
            this.btnAplicación.Size = new System.Drawing.Size(24, 25);
            this.btnAplicación.TabIndex = 11;
            this.btnAplicación.Text = "?";
            this.btnAplicación.UseVisualStyleBackColor = true;
            this.btnAplicación.Click += new System.EventHandler(this.btnAplicación_Click);
            // 
            // gbxPermisos
            // 
            this.gbxPermisos.Controls.Add(this.chkImprimir);
            this.gbxPermisos.Controls.Add(this.chkConsultar);
            this.gbxPermisos.Controls.Add(this.chkEliminar);
            this.gbxPermisos.Controls.Add(this.chkModificar);
            this.gbxPermisos.Controls.Add(this.chkIngreso);
            this.gbxPermisos.Location = new System.Drawing.Point(52, 133);
            this.gbxPermisos.Name = "gbxPermisos";
            this.gbxPermisos.Size = new System.Drawing.Size(290, 124);
            this.gbxPermisos.TabIndex = 12;
            this.gbxPermisos.TabStop = false;
            this.gbxPermisos.Text = "Permisos";
            // 
            // chkImprimir
            // 
            this.chkImprimir.AutoSize = true;
            this.chkImprimir.Location = new System.Drawing.Point(93, 89);
            this.chkImprimir.Name = "chkImprimir";
            this.chkImprimir.Size = new System.Drawing.Size(61, 17);
            this.chkImprimir.TabIndex = 4;
            this.chkImprimir.Text = "Imprimir";
            this.chkImprimir.UseVisualStyleBackColor = true;
            // 
            // chkConsultar
            // 
            this.chkConsultar.AutoSize = true;
            this.chkConsultar.Location = new System.Drawing.Point(152, 60);
            this.chkConsultar.Name = "chkConsultar";
            this.chkConsultar.Size = new System.Drawing.Size(70, 17);
            this.chkConsultar.TabIndex = 3;
            this.chkConsultar.Text = "Consultar";
            this.chkConsultar.UseVisualStyleBackColor = true;
            // 
            // chkEliminar
            // 
            this.chkEliminar.AutoSize = true;
            this.chkEliminar.Location = new System.Drawing.Point(32, 60);
            this.chkEliminar.Name = "chkEliminar";
            this.chkEliminar.Size = new System.Drawing.Size(62, 17);
            this.chkEliminar.TabIndex = 2;
            this.chkEliminar.Text = "Eliminar";
            this.chkEliminar.UseVisualStyleBackColor = true;
            // 
            // chkModificar
            // 
            this.chkModificar.AutoSize = true;
            this.chkModificar.Location = new System.Drawing.Point(155, 27);
            this.chkModificar.Name = "chkModificar";
            this.chkModificar.Size = new System.Drawing.Size(69, 17);
            this.chkModificar.TabIndex = 1;
            this.chkModificar.Text = "Modificar";
            this.chkModificar.UseVisualStyleBackColor = true;
            // 
            // chkIngreso
            // 
            this.chkIngreso.AutoSize = true;
            this.chkIngreso.Location = new System.Drawing.Point(32, 27);
            this.chkIngreso.Name = "chkIngreso";
            this.chkIngreso.Size = new System.Drawing.Size(61, 17);
            this.chkIngreso.TabIndex = 0;
            this.chkIngreso.Text = "Ingreso";
            this.chkIngreso.UseVisualStyleBackColor = true;
            // 
            // dgvAppAsignadas
            // 
            this.dgvAppAsignadas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvAppAsignadas.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colCodigo,
            this.colNombreAPP});
            this.dgvAppAsignadas.Location = new System.Drawing.Point(31, 263);
            this.dgvAppAsignadas.Name = "dgvAppAsignadas";
            this.dgvAppAsignadas.Size = new System.Drawing.Size(448, 175);
            this.dgvAppAsignadas.TabIndex = 13;
            // 
            // colCodigo
            // 
            this.colCodigo.HeaderText = "Código";
            this.colCodigo.Name = "colCodigo";
            // 
            // colNombreAPP
            // 
            this.colNombreAPP.HeaderText = "Nombre de aplicación";
            this.colNombreAPP.Name = "colNombreAPP";
            this.colNombreAPP.Width = 300;
            // 
            // btnSeleccionar
            // 
            this.btnSeleccionar.Location = new System.Drawing.Point(479, 263);
            this.btnSeleccionar.Name = "btnSeleccionar";
            this.btnSeleccionar.Size = new System.Drawing.Size(73, 36);
            this.btnSeleccionar.TabIndex = 14;
            this.btnSeleccionar.Text = "Seleccionar";
            this.btnSeleccionar.UseVisualStyleBackColor = true;
            this.btnSeleccionar.Click += new System.EventHandler(this.btnSeleccionar_Click);
            // 
            // frmAsignarAplicacionesAPerfil
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.LightCyan;
            this.ClientSize = new System.Drawing.Size(656, 450);
            this.Controls.Add(this.btnSeleccionar);
            this.Controls.Add(this.dgvAppAsignadas);
            this.Controls.Add(this.gbxPermisos);
            this.Controls.Add(this.btnAplicación);
            this.Controls.Add(this.btnPerfil);
            this.Controls.Add(this.txtAplicacion);
            this.Controls.Add(this.lblAplicacion);
            this.Controls.Add(this.txtPerfil);
            this.Controls.Add(this.lblPerfil);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.btnNuevo);
            this.Controls.Add(this.btnEliminar);
            this.Controls.Add(this.btnModificar);
            this.Controls.Add(this.btnGuardar);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmAsignarAplicacionesAPerfil";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmAsignarAplicacionesAPerfil";
            this.gbxPermisos.ResumeLayout(false);
            this.gbxPermisos.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAppAsignadas)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Button btnNuevo;
        private System.Windows.Forms.Button btnEliminar;
        private System.Windows.Forms.Button btnModificar;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.Label lblPerfil;
        private System.Windows.Forms.TextBox txtPerfil;
        private System.Windows.Forms.TextBox txtAplicacion;
        private System.Windows.Forms.Label lblAplicacion;
        private System.Windows.Forms.Button btnPerfil;
        private System.Windows.Forms.Button btnAplicación;
        private System.Windows.Forms.GroupBox gbxPermisos;
        private System.Windows.Forms.CheckBox chkImprimir;
        private System.Windows.Forms.CheckBox chkConsultar;
        private System.Windows.Forms.CheckBox chkEliminar;
        private System.Windows.Forms.CheckBox chkModificar;
        private System.Windows.Forms.CheckBox chkIngreso;
        private System.Windows.Forms.DataGridView dgvAppAsignadas;
        private System.Windows.Forms.Button btnSeleccionar;
        private System.Windows.Forms.DataGridViewTextBoxColumn colCodigo;
        private System.Windows.Forms.DataGridViewTextBoxColumn colNombreAPP;
    }
}