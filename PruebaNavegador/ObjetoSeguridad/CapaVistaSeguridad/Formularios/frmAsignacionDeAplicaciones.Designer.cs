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
            this.txtUsuario = new System.Windows.Forms.TextBox();
            this.lblUsuario = new System.Windows.Forms.Label();
            this.txtNombreUsuario = new System.Windows.Forms.TextBox();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.lblPerfilesDisponibles = new System.Windows.Forms.Label();
            this.lblAplicacionesDisponibles = new System.Windows.Forms.Label();
            this.lsvPerfilesDisponibles = new System.Windows.Forms.ListView();
            this.lsvAplicacionesDisponibles = new System.Windows.Forms.ListView();
            this.lsvAplicacionesasignadas = new System.Windows.Forms.ListView();
            this.gbxPerfilesyAplicaciones = new System.Windows.Forms.GroupBox();
            this.rbtnPerfiles = new System.Windows.Forms.RadioButton();
            this.rbtnAplicaciones = new System.Windows.Forms.RadioButton();
            this.lblAplicacioneAsignadas = new System.Windows.Forms.Label();
            this.lblNombreUsuario = new System.Windows.Forms.Label();
            this.btnAgregarTodo = new System.Windows.Forms.Button();
            this.lblAgregar = new System.Windows.Forms.Label();
            this.lblQuitar = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.BtnLimpiar = new System.Windows.Forms.Button();
            this.lblLimpiar = new System.Windows.Forms.Label();
            this.lblSalir = new System.Windows.Forms.Label();
            this.btnSalir = new System.Windows.Forms.Button();
            this.btnEditar = new System.Windows.Forms.Button();
            this.lblEditar = new System.Windows.Forms.Label();
            this.gbxUsuarioSelect.SuspendLayout();
            this.gbxPerfilesyAplicaciones.SuspendLayout();
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
            this.gbxUsuarioSelect.Location = new System.Drawing.Point(21, 11);
            this.gbxUsuarioSelect.Name = "gbxUsuarioSelect";
            this.gbxUsuarioSelect.Size = new System.Drawing.Size(578, 78);
            this.gbxUsuarioSelect.TabIndex = 0;
            this.gbxUsuarioSelect.TabStop = false;
            this.gbxUsuarioSelect.Text = "Usuario Seleccionado";
            // 
            // txtUsuario
            // 
            this.txtUsuario.Location = new System.Drawing.Point(58, 32);
            this.txtUsuario.Name = "txtUsuario";
            this.txtUsuario.Size = new System.Drawing.Size(115, 23);
            this.txtUsuario.TabIndex = 0;
            // 
            // lblUsuario
            // 
            this.lblUsuario.AutoSize = true;
            this.lblUsuario.Location = new System.Drawing.Point(5, 35);
            this.lblUsuario.Name = "lblUsuario";
            this.lblUsuario.Size = new System.Drawing.Size(52, 16);
            this.lblUsuario.TabIndex = 1;
            this.lblUsuario.Text = "Usuario";
            // 
            // txtNombreUsuario
            // 
            this.txtNombreUsuario.Enabled = false;
            this.txtNombreUsuario.Location = new System.Drawing.Point(316, 31);
            this.txtNombreUsuario.Name = "txtNombreUsuario";
            this.txtNombreUsuario.Size = new System.Drawing.Size(246, 23);
            this.txtNombreUsuario.TabIndex = 3;
            // 
            // btnBuscar
            // 
            this.btnBuscar.Location = new System.Drawing.Point(173, 31);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(30, 25);
            this.btnBuscar.TabIndex = 2;
            this.btnBuscar.UseVisualStyleBackColor = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // lblPerfilesDisponibles
            // 
            this.lblPerfilesDisponibles.AutoSize = true;
            this.lblPerfilesDisponibles.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblPerfilesDisponibles.Location = new System.Drawing.Point(33, 19);
            this.lblPerfilesDisponibles.Name = "lblPerfilesDisponibles";
            this.lblPerfilesDisponibles.Size = new System.Drawing.Size(120, 16);
            this.lblPerfilesDisponibles.TabIndex = 3;
            this.lblPerfilesDisponibles.Text = "Perfiles Disponibles";
            // 
            // lblAplicacionesDisponibles
            // 
            this.lblAplicacionesDisponibles.AutoSize = true;
            this.lblAplicacionesDisponibles.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblAplicacionesDisponibles.Location = new System.Drawing.Point(24, 192);
            this.lblAplicacionesDisponibles.Name = "lblAplicacionesDisponibles";
            this.lblAplicacionesDisponibles.Size = new System.Drawing.Size(152, 16);
            this.lblAplicacionesDisponibles.TabIndex = 4;
            this.lblAplicacionesDisponibles.Text = "Aplicaciones Disponibles";
            // 
            // lsvPerfilesDisponibles
            // 
            this.lsvPerfilesDisponibles.HideSelection = false;
            this.lsvPerfilesDisponibles.Location = new System.Drawing.Point(15, 47);
            this.lsvPerfilesDisponibles.Name = "lsvPerfilesDisponibles";
            this.lsvPerfilesDisponibles.Size = new System.Drawing.Size(210, 132);
            this.lsvPerfilesDisponibles.TabIndex = 5;
            this.lsvPerfilesDisponibles.UseCompatibleStateImageBehavior = false;
            // 
            // lsvAplicacionesDisponibles
            // 
            this.lsvAplicacionesDisponibles.HideSelection = false;
            this.lsvAplicacionesDisponibles.Location = new System.Drawing.Point(15, 221);
            this.lsvAplicacionesDisponibles.Name = "lsvAplicacionesDisponibles";
            this.lsvAplicacionesDisponibles.Size = new System.Drawing.Size(210, 128);
            this.lsvAplicacionesDisponibles.TabIndex = 10;
            this.lsvAplicacionesDisponibles.UseCompatibleStateImageBehavior = false;
            // 
            // lsvAplicacionesasignadas
            // 
            this.lsvAplicacionesasignadas.HideSelection = false;
            this.lsvAplicacionesasignadas.Location = new System.Drawing.Point(330, 47);
            this.lsvAplicacionesasignadas.Name = "lsvAplicacionesasignadas";
            this.lsvAplicacionesasignadas.Size = new System.Drawing.Size(220, 272);
            this.lsvAplicacionesasignadas.TabIndex = 9;
            this.lsvAplicacionesasignadas.UseCompatibleStateImageBehavior = false;
            // 
            // gbxPerfilesyAplicaciones
            // 
            this.gbxPerfilesyAplicaciones.Controls.Add(this.lblEditar);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.btnEditar);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.button1);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.lblQuitar);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.lblAgregar);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.btnAgregarTodo);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.lblAplicacioneAsignadas);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.rbtnAplicaciones);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.rbtnPerfiles);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.lsvPerfilesDisponibles);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.lsvAplicacionesasignadas);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.lblPerfilesDisponibles);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.lsvAplicacionesDisponibles);
            this.gbxPerfilesyAplicaciones.Controls.Add(this.lblAplicacionesDisponibles);
            this.gbxPerfilesyAplicaciones.Font = new System.Drawing.Font("Rockwell", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbxPerfilesyAplicaciones.Location = new System.Drawing.Point(21, 95);
            this.gbxPerfilesyAplicaciones.Name = "gbxPerfilesyAplicaciones";
            this.gbxPerfilesyAplicaciones.Size = new System.Drawing.Size(578, 364);
            this.gbxPerfilesyAplicaciones.TabIndex = 4;
            this.gbxPerfilesyAplicaciones.TabStop = false;
            this.gbxPerfilesyAplicaciones.Text = "Perfiles y Aplicaciones";
            // 
            // rbtnPerfiles
            // 
            this.rbtnPerfiles.AutoSize = true;
            this.rbtnPerfiles.Location = new System.Drawing.Point(352, 329);
            this.rbtnPerfiles.Name = "rbtnPerfiles";
            this.rbtnPerfiles.Size = new System.Drawing.Size(68, 20);
            this.rbtnPerfiles.TabIndex = 11;
            this.rbtnPerfiles.TabStop = true;
            this.rbtnPerfiles.Text = "Perfiles";
            this.rbtnPerfiles.UseVisualStyleBackColor = true;
            this.rbtnPerfiles.CheckedChanged += new System.EventHandler(this.rbtnPerfiles_CheckedChanged);
            // 
            // rbtnAplicaciones
            // 
            this.rbtnAplicaciones.AutoSize = true;
            this.rbtnAplicaciones.Location = new System.Drawing.Point(426, 329);
            this.rbtnAplicaciones.Name = "rbtnAplicaciones";
            this.rbtnAplicaciones.Size = new System.Drawing.Size(100, 20);
            this.rbtnAplicaciones.TabIndex = 12;
            this.rbtnAplicaciones.TabStop = true;
            this.rbtnAplicaciones.Text = "Aplicaciones";
            this.rbtnAplicaciones.UseVisualStyleBackColor = true;
            this.rbtnAplicaciones.CheckedChanged += new System.EventHandler(this.rbtnAplicaciones_CheckedChanged);
            // 
            // lblAplicacioneAsignadas
            // 
            this.lblAplicacioneAsignadas.AutoSize = true;
            this.lblAplicacioneAsignadas.Location = new System.Drawing.Point(365, 22);
            this.lblAplicacioneAsignadas.Name = "lblAplicacioneAsignadas";
            this.lblAplicacioneAsignadas.Size = new System.Drawing.Size(146, 16);
            this.lblAplicacioneAsignadas.TabIndex = 10;
            this.lblAplicacioneAsignadas.Text = "Aplicaciones Asignadas";
            // 
            // lblNombreUsuario
            // 
            this.lblNombreUsuario.AutoSize = true;
            this.lblNombreUsuario.Location = new System.Drawing.Point(209, 34);
            this.lblNombreUsuario.Name = "lblNombreUsuario";
            this.lblNombreUsuario.Size = new System.Drawing.Size(102, 16);
            this.lblNombreUsuario.TabIndex = 4;
            this.lblNombreUsuario.Text = "Nombre Usuario";
            // 
            // btnAgregarTodo
            // 
            this.btnAgregarTodo.Image = ((System.Drawing.Image)(resources.GetObject("btnAgregarTodo.Image")));
            this.btnAgregarTodo.Location = new System.Drawing.Point(255, 123);
            this.btnAgregarTodo.Name = "btnAgregarTodo";
            this.btnAgregarTodo.Size = new System.Drawing.Size(40, 30);
            this.btnAgregarTodo.TabIndex = 6;
            this.btnAgregarTodo.UseVisualStyleBackColor = true;
            // 
            // lblAgregar
            // 
            this.lblAgregar.AutoSize = true;
            this.lblAgregar.Location = new System.Drawing.Point(252, 95);
            this.lblAgregar.Name = "lblAgregar";
            this.lblAgregar.Size = new System.Drawing.Size(57, 16);
            this.lblAgregar.TabIndex = 12;
            this.lblAgregar.Text = "Agregar";
            // 
            // lblQuitar
            // 
            this.lblQuitar.AutoSize = true;
            this.lblQuitar.Location = new System.Drawing.Point(251, 166);
            this.lblQuitar.Name = "lblQuitar";
            this.lblQuitar.Size = new System.Drawing.Size(44, 16);
            this.lblQuitar.TabIndex = 13;
            this.lblQuitar.Text = "Quitar";
            // 
            // button1
            // 
            this.button1.Image = ((System.Drawing.Image)(resources.GetObject("button1.Image")));
            this.button1.Location = new System.Drawing.Point(255, 185);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(40, 30);
            this.button1.TabIndex = 7;
            this.button1.UseVisualStyleBackColor = true;
            // 
            // BtnLimpiar
            // 
            this.BtnLimpiar.Location = new System.Drawing.Point(351, 473);
            this.BtnLimpiar.Name = "BtnLimpiar";
            this.BtnLimpiar.Size = new System.Drawing.Size(60, 25);
            this.BtnLimpiar.TabIndex = 13;
            this.BtnLimpiar.UseVisualStyleBackColor = true;
            this.BtnLimpiar.Click += new System.EventHandler(this.BtnLimpiar_Click);
            // 
            // lblLimpiar
            // 
            this.lblLimpiar.AutoSize = true;
            this.lblLimpiar.Location = new System.Drawing.Point(292, 478);
            this.lblLimpiar.Name = "lblLimpiar";
            this.lblLimpiar.Size = new System.Drawing.Size(40, 13);
            this.lblLimpiar.TabIndex = 16;
            this.lblLimpiar.Text = "Limpiar";
            // 
            // lblSalir
            // 
            this.lblSalir.AutoSize = true;
            this.lblSalir.Location = new System.Drawing.Point(430, 480);
            this.lblSalir.Name = "lblSalir";
            this.lblSalir.Size = new System.Drawing.Size(27, 13);
            this.lblSalir.TabIndex = 17;
            this.lblSalir.Text = "Salir";
            // 
            // btnSalir
            // 
            this.btnSalir.Location = new System.Drawing.Point(472, 474);
            this.btnSalir.Name = "btnSalir";
            this.btnSalir.Size = new System.Drawing.Size(60, 25);
            this.btnSalir.TabIndex = 14;
            this.btnSalir.UseVisualStyleBackColor = true;
            this.btnSalir.Click += new System.EventHandler(this.btnSalir_Click);
            // 
            // btnEditar
            // 
            this.btnEditar.Location = new System.Drawing.Point(255, 245);
            this.btnEditar.Name = "btnEditar";
            this.btnEditar.Size = new System.Drawing.Size(40, 30);
            this.btnEditar.TabIndex = 8;
            this.btnEditar.UseVisualStyleBackColor = true;
            // 
            // lblEditar
            // 
            this.lblEditar.AutoSize = true;
            this.lblEditar.Location = new System.Drawing.Point(253, 226);
            this.lblEditar.Name = "lblEditar";
            this.lblEditar.Size = new System.Drawing.Size(43, 16);
            this.lblEditar.TabIndex = 19;
            this.lblEditar.Text = "Editar";
            // 
            // frmAsignacionDeAplicaciones
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.LightCyan;
            this.ClientSize = new System.Drawing.Size(621, 511);
            this.Controls.Add(this.gbxPerfilesyAplicaciones);
            this.Controls.Add(this.gbxUsuarioSelect);
            this.Controls.Add(this.btnSalir);
            this.Controls.Add(this.lblSalir);
            this.Controls.Add(this.BtnLimpiar);
            this.Controls.Add(this.lblLimpiar);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmAsignacionDeAplicaciones";
            this.Text = "frmAsignacionDeAplicaciones";
            this.gbxUsuarioSelect.ResumeLayout(false);
            this.gbxUsuarioSelect.PerformLayout();
            this.gbxPerfilesyAplicaciones.ResumeLayout(false);
            this.gbxPerfilesyAplicaciones.PerformLayout();
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
        private System.Windows.Forms.ListView lsvPerfilesDisponibles;
        private System.Windows.Forms.ListView lsvAplicacionesDisponibles;
        private System.Windows.Forms.ListView lsvAplicacionesasignadas;
        private System.Windows.Forms.GroupBox gbxPerfilesyAplicaciones;
        private System.Windows.Forms.RadioButton rbtnAplicaciones;
        private System.Windows.Forms.RadioButton rbtnPerfiles;
        private System.Windows.Forms.Label lblAplicacioneAsignadas;
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
    }
}