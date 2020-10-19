namespace CapaVistaSeguridad.Formularios
{
    partial class frmAsignacionDeAplicaciones
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmAsignacionDeAplicaciones));
            this.gbxUsuarioSelect = new System.Windows.Forms.GroupBox();
            this.lblNombreUsuario = new System.Windows.Forms.Label();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.txtNombreUsuario = new System.Windows.Forms.TextBox();
            this.lblUsuario = new System.Windows.Forms.Label();
            this.txtUsuario = new System.Windows.Forms.TextBox();
            this.lblPerfilesDisponibles = new System.Windows.Forms.Label();
            this.lblAplicacionesDisponibles = new System.Windows.Forms.Label();
            this.gbxPerfilesyAplicaciones = new System.Windows.Forms.GroupBox();
            this.dgvAplicacionesAsignadas = new System.Windows.Forms.DataGridView();
            this.colAplicacionesD = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dgvPerfilesAsignados = new System.Windows.Forms.DataGridView();
            this.colPerfil = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dgvAplicacionesDisponibles = new System.Windows.Forms.DataGridView();
            this.colNombre_Aplicacion = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dgvPerfilesDisponibles = new System.Windows.Forms.DataGridView();
            this.colNombre_Perfil = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.lblEditar = new System.Windows.Forms.Label();
            this.btnEditar = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.lblQuitar = new System.Windows.Forms.Label();
            this.lblAgregar = new System.Windows.Forms.Label();
            this.btnAgregarTodo = new System.Windows.Forms.Button();
            this.rbtnAplicaciones = new System.Windows.Forms.RadioButton();
            this.rbtnPerfiles = new System.Windows.Forms.RadioButton();
            this.BtnLimpiar = new System.Windows.Forms.Button();
            this.lblLimpiar = new System.Windows.Forms.Label();
            this.lblSalir = new System.Windows.Forms.Label();
            this.btnSalir = new System.Windows.Forms.Button();
            this.gbxUsuarioSelect.SuspendLayout();
            this.gbxPerfilesyAplicaciones.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAplicacionesAsignadas)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPerfilesAsignados)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAplicacionesDisponibles)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPerfilesDisponibles)).BeginInit();
            this.SuspendLayout();
            // 
            // gbxUsuarioSelect
            // 
            this.gbxUsuarioSelect.Controls.Add(this.lblNombreUsuario);
            this.gbxUsuarioSelect.Controls.Add(this.btnBuscar);
            this.gbxUsuarioSelect.Controls.Add(this.txtNombreUsuario);
            this.gbxUsuarioSelect.Controls.Add(this.lblUsuario);
            this.gbxUsuarioSelect.Controls.Add(this.txtUsuario);
            this.gbxUsuarioSelect.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxUsuarioSelect.Location = new System.Drawing.Point(28, 14);
            this.gbxUsuarioSelect.Margin = new System.Windows.Forms.Padding(4);
            this.gbxUsuarioSelect.Name = "gbxUsuarioSelect";
            this.gbxUsuarioSelect.Padding = new System.Windows.Forms.Padding(4);
            this.gbxUsuarioSelect.Size = new System.Drawing.Size(771, 96);
            this.gbxUsuarioSelect.TabIndex = 0;
            this.gbxUsuarioSelect.TabStop = false;
            this.gbxUsuarioSelect.Text = "Usuario Seleccionado";
            // 
            // lblNombreUsuario
            // 
            this.lblNombreUsuario.AutoSize = true;
            this.lblNombreUsuario.Location = new System.Drawing.Point(279, 42);
            this.lblNombreUsuario.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblNombreUsuario.Name = "lblNombreUsuario";
            this.lblNombreUsuario.Size = new System.Drawing.Size(138, 20);
            this.lblNombreUsuario.TabIndex = 4;
            this.lblNombreUsuario.Text = "Nombre Usuario";
            // 
            // btnBuscar
            // 
            this.btnBuscar.Image = ((System.Drawing.Image)(resources.GetObject("btnBuscar.Image")));
            this.btnBuscar.Location = new System.Drawing.Point(231, 38);
            this.btnBuscar.Margin = new System.Windows.Forms.Padding(4);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(40, 31);
            this.btnBuscar.TabIndex = 2;
            this.btnBuscar.UseVisualStyleBackColor = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // txtNombreUsuario
            // 
            this.txtNombreUsuario.Enabled = false;
            this.txtNombreUsuario.Location = new System.Drawing.Point(421, 38);
            this.txtNombreUsuario.Margin = new System.Windows.Forms.Padding(4);
            this.txtNombreUsuario.Name = "txtNombreUsuario";
            this.txtNombreUsuario.Size = new System.Drawing.Size(327, 27);
            this.txtNombreUsuario.TabIndex = 3;
            // 
            // lblUsuario
            // 
            this.lblUsuario.AutoSize = true;
            this.lblUsuario.Location = new System.Drawing.Point(7, 43);
            this.lblUsuario.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblUsuario.Name = "lblUsuario";
            this.lblUsuario.Size = new System.Drawing.Size(70, 20);
            this.lblUsuario.TabIndex = 1;
            this.lblUsuario.Text = "Usuario";
            // 
            // txtUsuario
            // 
            this.txtUsuario.Location = new System.Drawing.Point(77, 39);
            this.txtUsuario.Margin = new System.Windows.Forms.Padding(4);
            this.txtUsuario.Name = "txtUsuario";
            this.txtUsuario.Size = new System.Drawing.Size(152, 27);
            this.txtUsuario.TabIndex = 0;
            // 
            // lblPerfilesDisponibles
            // 
            this.lblPerfilesDisponibles.AutoSize = true;
            this.lblPerfilesDisponibles.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPerfilesDisponibles.Location = new System.Drawing.Point(44, 23);
            this.lblPerfilesDisponibles.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblPerfilesDisponibles.Name = "lblPerfilesDisponibles";
            this.lblPerfilesDisponibles.Size = new System.Drawing.Size(166, 20);
            this.lblPerfilesDisponibles.TabIndex = 3;
            this.lblPerfilesDisponibles.Text = "Perfiles Disponibles";
            // 
            // lblAplicacionesDisponibles
            // 
            this.lblAplicacionesDisponibles.AutoSize = true;
            this.lblAplicacionesDisponibles.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAplicacionesDisponibles.Location = new System.Drawing.Point(32, 236);
            this.lblAplicacionesDisponibles.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblAplicacionesDisponibles.Name = "lblAplicacionesDisponibles";
            this.lblAplicacionesDisponibles.Size = new System.Drawing.Size(208, 20);
            this.lblAplicacionesDisponibles.TabIndex = 4;
            this.lblAplicacionesDisponibles.Text = "Aplicaciones Disponibles";
            // 
            // gbxPerfilesyAplicaciones
            // 
            this.gbxPerfilesyAplicaciones.Controls.Add(this.dgvAplicacionesAsignadas);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.dgvPerfilesAsignados);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.dgvAplicacionesDisponibles);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.dgvPerfilesDisponibles);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.lblEditar);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.btnEditar);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.button1);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.lblQuitar);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.lblAgregar);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.btnAgregarTodo);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.rbtnAplicaciones);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.rbtnPerfiles);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.lblPerfilesDisponibles);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.lblAplicacionesDisponibles);
            this.gbxPerfilesyAplicaciones.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxPerfilesyAplicaciones.Location = new System.Drawing.Point(28, 117);
            this.gbxPerfilesyAplicaciones.Margin = new System.Windows.Forms.Padding(4);
            this.gbxPerfilesyAplicaciones.Name = "gbxPerfilesyAplicaciones";
            this.gbxPerfilesyAplicaciones.Padding = new System.Windows.Forms.Padding(4);
            this.gbxPerfilesyAplicaciones.Size = new System.Drawing.Size(771, 448);
            this.gbxPerfilesyAplicaciones.TabIndex = 4;
            this.gbxPerfilesyAplicaciones.TabStop = false;
            this.gbxPerfilesyAplicaciones.Text = "Perfiles y Aplicaciones";
            // 
            // dgvAplicacionesAsignadas
            // 
            this.dgvAplicacionesAsignadas.AllowUserToAddRows = false;
            this.dgvAplicacionesAsignadas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvAplicacionesAsignadas.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colAplicacionesD});
            this.dgvAplicacionesAsignadas.Location = new System.Drawing.Point(451, 248);
            this.dgvAplicacionesAsignadas.Name = "dgvAplicacionesAsignadas";
            this.dgvAplicacionesAsignadas.RowHeadersVisible = false;
            this.dgvAplicacionesAsignadas.RowHeadersWidth = 51;
            this.dgvAplicacionesAsignadas.RowTemplate.Height = 24;
            this.dgvAplicacionesAsignadas.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvAplicacionesAsignadas.Size = new System.Drawing.Size(279, 150);
            this.dgvAplicacionesAsignadas.TabIndex = 24;
            // 
            // colAplicacionesD
            // 
            this.colAplicacionesD.HeaderText = "Aplicaciones Asignadas";
            this.colAplicacionesD.MinimumWidth = 6;
            this.colAplicacionesD.Name = "colAplicacionesD";
            this.colAplicacionesD.Width = 125;
            // 
            // dgvPerfilesAsignados
            // 
            this.dgvPerfilesAsignados.AllowUserToAddRows = false;
            this.dgvPerfilesAsignados.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPerfilesAsignados.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colPerfil});
            this.dgvPerfilesAsignados.Location = new System.Drawing.Point(451, 52);
            this.dgvPerfilesAsignados.Name = "dgvPerfilesAsignados";
            this.dgvPerfilesAsignados.RowHeadersVisible = false;
            this.dgvPerfilesAsignados.RowHeadersWidth = 51;
            this.dgvPerfilesAsignados.RowTemplate.Height = 24;
            this.dgvPerfilesAsignados.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvPerfilesAsignados.Size = new System.Drawing.Size(279, 172);
            this.dgvPerfilesAsignados.TabIndex = 23;
            // 
            // colPerfil
            // 
            this.colPerfil.HeaderText = "Perfiles Asignados";
            this.colPerfil.MinimumWidth = 6;
            this.colPerfil.Name = "colPerfil";
            this.colPerfil.Width = 125;
            // 
            // dgvAplicacionesDisponibles
            // 
            this.dgvAplicacionesDisponibles.AllowUserToAddRows = false;
            this.dgvAplicacionesDisponibles.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvAplicacionesDisponibles.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colNombre_Aplicacion});
            this.dgvAplicacionesDisponibles.Location = new System.Drawing.Point(20, 260);
            this.dgvAplicacionesDisponibles.Margin = new System.Windows.Forms.Padding(4);
            this.dgvAplicacionesDisponibles.Name = "dgvAplicacionesDisponibles";
            this.dgvAplicacionesDisponibles.RowHeadersVisible = false;
            this.dgvAplicacionesDisponibles.RowHeadersWidth = 51;
            this.dgvAplicacionesDisponibles.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvAplicacionesDisponibles.Size = new System.Drawing.Size(280, 161);
            this.dgvAplicacionesDisponibles.TabIndex = 21;
            // 
            // colNombre_Aplicacion
            // 
            this.colNombre_Aplicacion.HeaderText = "nombre_aplicacion";
            this.colNombre_Aplicacion.MinimumWidth = 6;
            this.colNombre_Aplicacion.Name = "colNombre_Aplicacion";
            this.colNombre_Aplicacion.Width = 125;
            // 
            // dgvPerfilesDisponibles
            // 
            this.dgvPerfilesDisponibles.AllowUserToAddRows = false;
            this.dgvPerfilesDisponibles.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPerfilesDisponibles.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.colNombre_Perfil});
            this.dgvPerfilesDisponibles.Location = new System.Drawing.Point(20, 52);
            this.dgvPerfilesDisponibles.Margin = new System.Windows.Forms.Padding(4);
            this.dgvPerfilesDisponibles.Name = "dgvPerfilesDisponibles";
            this.dgvPerfilesDisponibles.RowHeadersVisible = false;
            this.dgvPerfilesDisponibles.RowHeadersWidth = 51;
            this.dgvPerfilesDisponibles.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvPerfilesDisponibles.Size = new System.Drawing.Size(280, 172);
            this.dgvPerfilesDisponibles.TabIndex = 20;
            // 
            // colNombre_Perfil
            // 
            this.colNombre_Perfil.HeaderText = "nombre_perfil";
            this.colNombre_Perfil.MinimumWidth = 6;
            this.colNombre_Perfil.Name = "colNombre_Perfil";
            this.colNombre_Perfil.Width = 125;
            // 
            // lblEditar
            // 
            this.lblEditar.AutoSize = true;
            this.lblEditar.Location = new System.Drawing.Point(337, 278);
            this.lblEditar.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblEditar.Name = "lblEditar";
            this.lblEditar.Size = new System.Drawing.Size(56, 20);
            this.lblEditar.TabIndex = 19;
            this.lblEditar.Text = "Editar";
            // 
            // btnEditar
            // 
            this.btnEditar.Location = new System.Drawing.Point(340, 302);
            this.btnEditar.Margin = new System.Windows.Forms.Padding(4);
            this.btnEditar.Name = "btnEditar";
            this.btnEditar.Size = new System.Drawing.Size(53, 37);
            this.btnEditar.TabIndex = 8;
            this.btnEditar.UseVisualStyleBackColor = true;
            this.btnEditar.Click += new System.EventHandler(this.btnEditar_Click);
            // 
            // button1
            // 
            this.button1.Image = ((System.Drawing.Image)(resources.GetObject("button1.Image")));
            this.button1.Location = new System.Drawing.Point(340, 228);
            this.button1.Margin = new System.Windows.Forms.Padding(4);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(53, 37);
            this.button1.TabIndex = 7;
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // lblQuitar
            // 
            this.lblQuitar.AutoSize = true;
            this.lblQuitar.Location = new System.Drawing.Point(335, 204);
            this.lblQuitar.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblQuitar.Name = "lblQuitar";
            this.lblQuitar.Size = new System.Drawing.Size(59, 20);
            this.lblQuitar.TabIndex = 13;
            this.lblQuitar.Text = "Quitar";
            // 
            // lblAgregar
            // 
            this.lblAgregar.AutoSize = true;
            this.lblAgregar.Location = new System.Drawing.Point(336, 117);
            this.lblAgregar.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblAgregar.Name = "lblAgregar";
            this.lblAgregar.Size = new System.Drawing.Size(74, 20);
            this.lblAgregar.TabIndex = 12;
            this.lblAgregar.Text = "Agregar";
            // 
            // btnAgregarTodo
            // 
            this.btnAgregarTodo.Image = ((System.Drawing.Image)(resources.GetObject("btnAgregarTodo.Image")));
            this.btnAgregarTodo.Location = new System.Drawing.Point(340, 151);
            this.btnAgregarTodo.Margin = new System.Windows.Forms.Padding(4);
            this.btnAgregarTodo.Name = "btnAgregarTodo";
            this.btnAgregarTodo.Size = new System.Drawing.Size(53, 37);
            this.btnAgregarTodo.TabIndex = 6;
            this.btnAgregarTodo.UseVisualStyleBackColor = true;
            this.btnAgregarTodo.Click += new System.EventHandler(this.btnAgregarTodo_Click);
            // 
            // rbtnAplicaciones
            // 
            this.rbtnAplicaciones.AutoSize = true;
            this.rbtnAplicaciones.Location = new System.Drawing.Point(568, 405);
            this.rbtnAplicaciones.Margin = new System.Windows.Forms.Padding(4);
            this.rbtnAplicaciones.Name = "rbtnAplicaciones";
            this.rbtnAplicaciones.Size = new System.Drawing.Size(132, 24);
            this.rbtnAplicaciones.TabIndex = 12;
            this.rbtnAplicaciones.TabStop = true;
            this.rbtnAplicaciones.Text = "Aplicaciones";
            this.rbtnAplicaciones.UseVisualStyleBackColor = true;
            this.rbtnAplicaciones.CheckedChanged += new System.EventHandler(this.rbtnAplicaciones_CheckedChanged);
            // 
            // rbtnPerfiles
            // 
            this.rbtnPerfiles.AutoSize = true;
            this.rbtnPerfiles.Location = new System.Drawing.Point(469, 405);
            this.rbtnPerfiles.Margin = new System.Windows.Forms.Padding(4);
            this.rbtnPerfiles.Name = "rbtnPerfiles";
            this.rbtnPerfiles.Size = new System.Drawing.Size(90, 24);
            this.rbtnPerfiles.TabIndex = 11;
            this.rbtnPerfiles.TabStop = true;
            this.rbtnPerfiles.Text = "Perfiles";
            this.rbtnPerfiles.UseVisualStyleBackColor = true;
            this.rbtnPerfiles.CheckedChanged += new System.EventHandler(this.rbtnPerfiles_CheckedChanged);
            // 
            // BtnLimpiar
            // 
            this.BtnLimpiar.Location = new System.Drawing.Point(468, 582);
            this.BtnLimpiar.Margin = new System.Windows.Forms.Padding(4);
            this.BtnLimpiar.Name = "BtnLimpiar";
            this.BtnLimpiar.Size = new System.Drawing.Size(80, 31);
            this.BtnLimpiar.TabIndex = 13;
            this.BtnLimpiar.UseVisualStyleBackColor = true;
            this.BtnLimpiar.Click += new System.EventHandler(this.BtnLimpiar_Click);
            // 
            // lblLimpiar
            // 
            this.lblLimpiar.AutoSize = true;
            this.lblLimpiar.Location = new System.Drawing.Point(389, 588);
            this.lblLimpiar.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblLimpiar.Name = "lblLimpiar";
            this.lblLimpiar.Size = new System.Drawing.Size(54, 17);
            this.lblLimpiar.TabIndex = 16;
            this.lblLimpiar.Text = "Limpiar";
            // 
            // lblSalir
            // 
            this.lblSalir.AutoSize = true;
            this.lblSalir.Location = new System.Drawing.Point(573, 591);
            this.lblSalir.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblSalir.Name = "lblSalir";
            this.lblSalir.Size = new System.Drawing.Size(36, 17);
            this.lblSalir.TabIndex = 17;
            this.lblSalir.Text = "Salir";
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(629, 583);
            this.btnSalir.Margin = new System.Windows.Forms.Padding(4);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(80, 31);
            this.btnSalir.TabIndex = 14;
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // frmAsignacionDeAplicaciones
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.LightCyan;
            this.ClientSize = new System.Drawing.Size(828, 629);
            this.Controls.Add(this.gbxPerfilesyAplicaciones);
            this.Controls.Add(this.gbxUsuarioSelect);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.lblSalir);
            this.Controls.Add(this.BtnLimpiar);
            this.Controls.Add(this.lblLimpiar);
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmAsignacionDeAplicaciones";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmAsignacionDeAplicaciones";
            this.Load += new System.EventHandler(this.frmAsignacionDeAplicaciones_Load);
            this.gbxUsuarioSelect.ResumeLayout(false);
            this.gbxUsuarioSelect.PerformLayout();
            this.gbxPerfilesyAplicaciones.ResumeLayout(false);
            this.gbxPerfilesyAplicaciones.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAplicacionesAsignadas)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPerfilesAsignados)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAplicacionesDisponibles)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPerfilesDisponibles)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox gbxUsuarioSelect;
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.TextBox txtNombreUsuario;
        private System.Windows.Forms.Label lblUsuario;
        private System.Windows.Forms.TextBox txtUsuario;
        private System.Windows.Forms.Label lblPerfilesDisponibles;
        private System.Windows.Forms.Label lblAplicacionesDisponibles;
        private System.Windows.Forms.GroupBox gbxPerfilesyAplicaciones;
        private System.Windows.Forms.RadioButton rbtnAplicaciones;
        private System.Windows.Forms.RadioButton rbtnPerfiles;
        private System.Windows.Forms.Label lblNombreUsuario;
        private System.Windows.Forms.Button btnSalir;
        private System.Windows.Forms.Label lblSalir;
        private System.Windows.Forms.Label lblLimpiar;
        private System.Windows.Forms.Button BtnLimpiar;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label lblQuitar;
        private System.Windows.Forms.Label lblAgregar;
        private System.Windows.Forms.Button btnAgregarTodo;
        private System.Windows.Forms.Label lblEditar;
        private System.Windows.Forms.Button btnEditar;
        private System.Windows.Forms.DataGridView dgvAplicacionesDisponibles;
        private System.Windows.Forms.DataGridView dgvPerfilesDisponibles;
        private System.Windows.Forms.DataGridViewTextBoxColumn colNombre_Perfil;
        private System.Windows.Forms.DataGridViewTextBoxColumn colNombre_Aplicacion;
        private System.Windows.Forms.DataGridView dgvAplicacionesAsignadas;
        private System.Windows.Forms.DataGridViewTextBoxColumn colAplicacionesD;
        private System.Windows.Forms.DataGridView dgvPerfilesAsignados;
        private System.Windows.Forms.DataGridViewTextBoxColumn colPerfil;
    }
}