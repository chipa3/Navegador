namespace CapaVistaSeguridad.Formularios.Mantenimientos
{
    partial class frmMantenimientoPerfil
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
            this.gbxDatosPerfil = new System.Windows.Forms.GroupBox();
            this.lblCodigoPerfil = new System.Windows.Forms.Label();
            this.lblNombrePerfil = new System.Windows.Forms.Label();
            this.lblDescripcion = new System.Windows.Forms.Label();
            this.txtNombrePerfil = new System.Windows.Forms.TextBox();
            this.lblNoCodigo = new System.Windows.Forms.Label();
            this.txtDescripcion = new System.Windows.Forms.TextBox();
            this.dgvAplicacionesAsignadas = new System.Windows.Forms.DataGridView();
            this.btnGuardarPerfil = new System.Windows.Forms.Button();
            this.gbxAplicacionesAsignadas = new System.Windows.Forms.GroupBox();
            this.lblGuardar = new System.Windows.Forms.Label();
            this.lblAgregarAplicacion = new System.Windows.Forms.Label();
            this.btnAgregarAplicacion = new System.Windows.Forms.Button();
            this.lblPermisosaplicacion = new System.Windows.Forms.Label();
            this.btnEditarPermisos = new System.Windows.Forms.Button();
            this.lblLimpiar = new System.Windows.Forms.Label();
            this.btnLimpiar = new System.Windows.Forms.Button();
            this.colCodigo = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colNombreAplicacion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.colEstado = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.gbxEstado = new System.Windows.Forms.GroupBox();
            this.rbtnHabilitado = new System.Windows.Forms.RadioButton();
            this.rbtnDesabilitado = new System.Windows.Forms.RadioButton();
            this.lblModificar = new System.Windows.Forms.Label();
            this.btnModificar = new System.Windows.Forms.Button();
            this.lblBuscar = new System.Windows.Forms.Label();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.gbxDatosPerfil.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAplicacionesAsignadas)).BeginInit();
            this.gbxAplicacionesAsignadas.SuspendLayout();
            this.gbxEstado.SuspendLayout();
            this.SuspendLayout();
            // 
            // gbxDatosPerfil
            // 
            this.gbxDatosPerfil.Controls.Add(this.btnBuscar);
            this.gbxDatosPerfil.Controls.Add(this.lblBuscar);
            this.gbxDatosPerfil.Controls.Add(this.btnModificar);
            this.gbxDatosPerfil.Controls.Add(this.lblModificar);
            this.gbxDatosPerfil.Controls.Add(this.gbxEstado);
            this.gbxDatosPerfil.Controls.Add(this.lblGuardar);
            this.gbxDatosPerfil.Controls.Add(this.txtDescripcion);
            this.gbxDatosPerfil.Controls.Add(this.lblNoCodigo);
            this.gbxDatosPerfil.Controls.Add(this.btnGuardarPerfil);
            this.gbxDatosPerfil.Controls.Add(this.txtNombrePerfil);
            this.gbxDatosPerfil.Controls.Add(this.lblDescripcion);
            this.gbxDatosPerfil.Controls.Add(this.lblNombrePerfil);
            this.gbxDatosPerfil.Controls.Add(this.lblCodigoPerfil);
            this.gbxDatosPerfil.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxDatosPerfil.Location = new System.Drawing.Point(21, 1);
            this.gbxDatosPerfil.Name = "gbxDatosPerfil";
            this.gbxDatosPerfil.Size = new System.Drawing.Size(510, 190);
            this.gbxDatosPerfil.TabIndex = 0;
            this.gbxDatosPerfil.TabStop = false;
            this.gbxDatosPerfil.Text = "Datos Perfil";
            // 
            // lblCodigoPerfil
            // 
            this.lblCodigoPerfil.AutoSize = true;
            this.lblCodigoPerfil.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCodigoPerfil.Location = new System.Drawing.Point(15, 30);
            this.lblCodigoPerfil.Name = "lblCodigoPerfil";
            this.lblCodigoPerfil.Size = new System.Drawing.Size(83, 16);
            this.lblCodigoPerfil.TabIndex = 0;
            this.lblCodigoPerfil.Text = "Código Perfil";
            // 
            // lblNombrePerfil
            // 
            this.lblNombrePerfil.AutoSize = true;
            this.lblNombrePerfil.Location = new System.Drawing.Point(224, 30);
            this.lblNombrePerfil.Name = "lblNombrePerfil";
            this.lblNombrePerfil.Size = new System.Drawing.Size(87, 16);
            this.lblNombrePerfil.TabIndex = 1;
            this.lblNombrePerfil.Text = "Nombre Prefil";
            // 
            // lblDescripcion
            // 
            this.lblDescripcion.AutoSize = true;
            this.lblDescripcion.Location = new System.Drawing.Point(15, 56);
            this.lblDescripcion.Name = "lblDescripcion";
            this.lblDescripcion.Size = new System.Drawing.Size(77, 16);
            this.lblDescripcion.TabIndex = 2;
            this.lblDescripcion.Text = "Descripción";
            // 
            // txtNombrePerfil
            // 
            this.txtNombrePerfil.Location = new System.Drawing.Point(317, 27);
            this.txtNombrePerfil.Name = "txtNombrePerfil";
            this.txtNombrePerfil.Size = new System.Drawing.Size(156, 23);
            this.txtNombrePerfil.TabIndex = 3;
            // 
            // lblNoCodigo
            // 
            this.lblNoCodigo.AutoSize = true;
            this.lblNoCodigo.Location = new System.Drawing.Point(118, 30);
            this.lblNoCodigo.Name = "lblNoCodigo";
            this.lblNoCodigo.Size = new System.Drawing.Size(74, 16);
            this.lblNoCodigo.TabIndex = 4;
            this.lblNoCodigo.Text = "No. Código";
            this.lblNoCodigo.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // txtDescripcion
            // 
            this.txtDescripcion.Location = new System.Drawing.Point(98, 56);
            this.txtDescripcion.Multiline = true;
            this.txtDescripcion.Name = "txtDescripcion";
            this.txtDescripcion.Size = new System.Drawing.Size(213, 78);
            this.txtDescripcion.TabIndex = 4;
            // 
            // dgvAplicacionesAsignadas
            // 
            this.dgvAplicacionesAsignadas.AllowUserToAddRows = false;
            this.dgvAplicacionesAsignadas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvAplicacionesAsignadas.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colCodigo,
            this.colNombreAplicacion,
            this.colEstado});
            this.dgvAplicacionesAsignadas.Location = new System.Drawing.Point(9, 102);
            this.dgvAplicacionesAsignadas.Name = "dgvAplicacionesAsignadas";
            this.dgvAplicacionesAsignadas.RowHeadersVisible = false;
            this.dgvAplicacionesAsignadas.Size = new System.Drawing.Size(486, 194);
            this.dgvAplicacionesAsignadas.TabIndex = 1;
            // 
            // btnGuardarPerfil
            // 
            this.btnGuardarPerfil.Location = new System.Drawing.Point(130, 145);
            this.btnGuardarPerfil.Name = "btnGuardarPerfil";
            this.btnGuardarPerfil.Size = new System.Drawing.Size(49, 39);
            this.btnGuardarPerfil.TabIndex = 8;
            this.btnGuardarPerfil.UseVisualStyleBackColor = true;
            this.btnGuardarPerfil.Click += new System.EventHandler(this.btnGuardarPerfil_Click);
            // 
            // gbxAplicacionesAsignadas
            // 
            this.gbxAplicacionesAsignadas.Controls.Add(this.btnLimpiar);
            this.gbxAplicacionesAsignadas.Controls.Add(this.lblLimpiar);
            this.gbxAplicacionesAsignadas.Controls.Add(this.btnEditarPermisos);
            this.gbxAplicacionesAsignadas.Controls.Add(this.lblPermisosaplicacion);
            this.gbxAplicacionesAsignadas.Controls.Add(this.btnAgregarAplicacion);
            this.gbxAplicacionesAsignadas.Controls.Add(this.lblAgregarAplicacion);
            this.gbxAplicacionesAsignadas.Controls.Add(this.dgvAplicacionesAsignadas);
            this.gbxAplicacionesAsignadas.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxAplicacionesAsignadas.Location = new System.Drawing.Point(21, 197);
            this.gbxAplicacionesAsignadas.Name = "gbxAplicacionesAsignadas";
            this.gbxAplicacionesAsignadas.Size = new System.Drawing.Size(510, 302);
            this.gbxAplicacionesAsignadas.TabIndex = 3;
            this.gbxAplicacionesAsignadas.TabStop = false;
            this.gbxAplicacionesAsignadas.Text = "Aplicaciones Asignadas a Perfil";
            // 
            // lblGuardar
            // 
            this.lblGuardar.AutoSize = true;
            this.lblGuardar.Location = new System.Drawing.Point(67, 156);
            this.lblGuardar.Name = "lblGuardar";
            this.lblGuardar.Size = new System.Drawing.Size(57, 16);
            this.lblGuardar.TabIndex = 3;
            this.lblGuardar.Text = "Guardar";
            // 
            // lblAgregarAplicacion
            // 
            this.lblAgregarAplicacion.AutoSize = true;
            this.lblAgregarAplicacion.Location = new System.Drawing.Point(11, 49);
            this.lblAgregarAplicacion.Name = "lblAgregarAplicacion";
            this.lblAgregarAplicacion.Size = new System.Drawing.Size(121, 16);
            this.lblAgregarAplicacion.TabIndex = 2;
            this.lblAgregarAplicacion.Text = "Agregar Aplicación";
            // 
            // btnAgregarAplicacion
            // 
            this.btnAgregarAplicacion.Location = new System.Drawing.Point(140, 38);
            this.btnAgregarAplicacion.Name = "btnAgregarAplicacion";
            this.btnAgregarAplicacion.Size = new System.Drawing.Size(49, 39);
            this.btnAgregarAplicacion.TabIndex = 3;
            this.btnAgregarAplicacion.UseVisualStyleBackColor = true;
            this.btnAgregarAplicacion.Click += new System.EventHandler(this.btnAgregarAplicacion_Click);
            // 
            // lblPermisosaplicacion
            // 
            this.lblPermisosaplicacion.AutoSize = true;
            this.lblPermisosaplicacion.Location = new System.Drawing.Point(215, 38);
            this.lblPermisosaplicacion.Name = "lblPermisosaplicacion";
            this.lblPermisosaplicacion.Size = new System.Drawing.Size(92, 32);
            this.lblPermisosaplicacion.TabIndex = 4;
            this.lblPermisosaplicacion.Text = "Editar Permiso\r\n    Aplicación";
            // 
            // btnEditarPermisos
            // 
            this.btnEditarPermisos.Location = new System.Drawing.Point(313, 38);
            this.btnEditarPermisos.Name = "btnEditarPermisos";
            this.btnEditarPermisos.Size = new System.Drawing.Size(49, 39);
            this.btnEditarPermisos.TabIndex = 4;
            this.btnEditarPermisos.UseVisualStyleBackColor = true;
            // 
            // lblLimpiar
            // 
            this.lblLimpiar.AutoSize = true;
            this.lblLimpiar.Location = new System.Drawing.Point(379, 49);
            this.lblLimpiar.Name = "lblLimpiar";
            this.lblLimpiar.Size = new System.Drawing.Size(52, 16);
            this.lblLimpiar.TabIndex = 6;
            this.lblLimpiar.Text = "Limpiar";
            // 
            // btnLimpiar
            // 
            this.btnLimpiar.Location = new System.Drawing.Point(434, 38);
            this.btnLimpiar.Name = "btnLimpiar";
            this.btnLimpiar.Size = new System.Drawing.Size(49, 39);
            this.btnLimpiar.TabIndex = 5;
            this.btnLimpiar.UseVisualStyleBackColor = true;
            this.btnLimpiar.Click += new System.EventHandler(this.btnLimpiar_Click);
            // 
            // colCodigo
            // 
            this.colCodigo.HeaderText = "Código";
            this.colCodigo.Name = "colCodigo";
            // 
            // colNombreAplicacion
            // 
            this.colNombreAplicacion.HeaderText = "Nombre Aplicación";
            this.colNombreAplicacion.Name = "colNombreAplicacion";
            this.colNombreAplicacion.Width = 300;
            // 
            // colEstado
            // 
            this.colEstado.HeaderText = "Estado";
            this.colEstado.Name = "colEstado";
            this.colEstado.Width = 80;
            // 
            // gbxEstado
            // 
            this.gbxEstado.Controls.Add(this.rbtnDesabilitado);
            this.gbxEstado.Controls.Add(this.rbtnHabilitado);
            this.gbxEstado.Location = new System.Drawing.Point(334, 56);
            this.gbxEstado.Name = "gbxEstado";
            this.gbxEstado.Size = new System.Drawing.Size(139, 78);
            this.gbxEstado.TabIndex = 5;
            this.gbxEstado.TabStop = false;
            this.gbxEstado.Text = "Estado";
            // 
            // rbtnHabilitado
            // 
            this.rbtnHabilitado.AutoSize = true;
            this.rbtnHabilitado.Location = new System.Drawing.Point(18, 22);
            this.rbtnHabilitado.Name = "rbtnHabilitado";
            this.rbtnHabilitado.Size = new System.Drawing.Size(85, 20);
            this.rbtnHabilitado.TabIndex = 6;
            this.rbtnHabilitado.TabStop = true;
            this.rbtnHabilitado.Text = "Habilitado";
            this.rbtnHabilitado.UseVisualStyleBackColor = true;
            // 
            // rbtnDesabilitado
            // 
            this.rbtnDesabilitado.AutoSize = true;
            this.rbtnDesabilitado.Location = new System.Drawing.Point(18, 48);
            this.rbtnDesabilitado.Name = "rbtnDesabilitado";
            this.rbtnDesabilitado.Size = new System.Drawing.Size(105, 20);
            this.rbtnDesabilitado.TabIndex = 7;
            this.rbtnDesabilitado.TabStop = true;
            this.rbtnDesabilitado.Text = "Deshabilitado";
            this.rbtnDesabilitado.UseVisualStyleBackColor = true;
            // 
            // lblModificar
            // 
            this.lblModificar.AutoSize = true;
            this.lblModificar.Location = new System.Drawing.Point(185, 156);
            this.lblModificar.Name = "lblModificar";
            this.lblModificar.Size = new System.Drawing.Size(63, 16);
            this.lblModificar.TabIndex = 9;
            this.lblModificar.Text = "Modificar";
            // 
            // btnModificar
            // 
            this.btnModificar.Location = new System.Drawing.Point(249, 145);
            this.btnModificar.Name = "btnModificar";
            this.btnModificar.Size = new System.Drawing.Size(49, 39);
            this.btnModificar.TabIndex = 10;
            this.btnModificar.UseVisualStyleBackColor = true;
            // 
            // lblBuscar
            // 
            this.lblBuscar.AutoSize = true;
            this.lblBuscar.Location = new System.Drawing.Point(317, 156);
            this.lblBuscar.Name = "lblBuscar";
            this.lblBuscar.Size = new System.Drawing.Size(48, 16);
            this.lblBuscar.TabIndex = 11;
            this.lblBuscar.Text = "Buscar";
            // 
            // btnBuscar
            // 
            this.btnBuscar.Location = new System.Drawing.Point(371, 145);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(49, 39);
            this.btnBuscar.TabIndex = 12;
            this.btnBuscar.UseVisualStyleBackColor = true;
            // 
            // frmMantenimientoPerfil
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.LightCyan;
            this.ClientSize = new System.Drawing.Size(554, 511);
            this.Controls.Add(this.gbxAplicacionesAsignadas);
            this.Controls.Add(this.gbxDatosPerfil);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmMantenimientoPerfil";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmMantenimientoPerfil";
            this.gbxDatosPerfil.ResumeLayout(false);
            this.gbxDatosPerfil.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAplicacionesAsignadas)).EndInit();
            this.gbxAplicacionesAsignadas.ResumeLayout(false);
            this.gbxAplicacionesAsignadas.PerformLayout();
            this.gbxEstado.ResumeLayout(false);
            this.gbxEstado.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox gbxDatosPerfil;
        private System.Windows.Forms.TextBox txtDescripcion;
        private System.Windows.Forms.Label lblNoCodigo;
        private System.Windows.Forms.TextBox txtNombrePerfil;
        private System.Windows.Forms.Label lblDescripcion;
        private System.Windows.Forms.Label lblNombrePerfil;
        private System.Windows.Forms.Label lblCodigoPerfil;
        private System.Windows.Forms.Label lblGuardar;
        private System.Windows.Forms.Button btnGuardarPerfil;
        private System.Windows.Forms.DataGridView dgvAplicacionesAsignadas;
        private System.Windows.Forms.GroupBox gbxAplicacionesAsignadas;
        private System.Windows.Forms.Button btnEditarPermisos;
        private System.Windows.Forms.Label lblPermisosaplicacion;
        private System.Windows.Forms.Button btnAgregarAplicacion;
        private System.Windows.Forms.Label lblAgregarAplicacion;
        private System.Windows.Forms.Label lblLimpiar;
        private System.Windows.Forms.Button btnLimpiar;
        private System.Windows.Forms.DataGridViewTextBoxColumn colCodigo;
        private System.Windows.Forms.DataGridViewTextBoxColumn colNombreAplicacion;
        private System.Windows.Forms.DataGridViewTextBoxColumn colEstado;
        private System.Windows.Forms.GroupBox gbxEstado;
        private System.Windows.Forms.RadioButton rbtnDesabilitado;
        private System.Windows.Forms.RadioButton rbtnHabilitado;
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.Label lblBuscar;
        private System.Windows.Forms.Button btnModificar;
        private System.Windows.Forms.Label lblModificar;
    }
}