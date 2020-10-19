namespace CapaVistaSeguridad.Formularios.Mantenimientos
{
    partial class frm_aplicacion
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
            this.components = new System.ComponentModel.Container();
            this.lb_nombre_de_aplicacion = new System.Windows.Forms.Label();
            this.lb_infome_de_aplicacion = new System.Windows.Forms.Label();
            this.txt_nombre_aplicacion = new System.Windows.Forms.TextBox();
            this.txt_informe_de_aplicacion = new System.Windows.Forms.TextBox();
            this.btn_insertar = new System.Windows.Forms.Button();
            this.btn_modificar = new System.Windows.Forms.Button();
            this.btn_eliminar = new System.Windows.Forms.Button();
            this.btn_buscar = new System.Windows.Forms.Button();
            this.dtl_registro_aplicacion = new System.Windows.Forms.DataGridView();
            this.lb_registros_aplicacion = new System.Windows.Forms.Label();
            this.lb_codigo_aplicacion = new System.Windows.Forms.Label();
            this.text_codigo_aplcacion = new System.Windows.Forms.TextBox();
            this.cbx_modulo = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.tt_seleccionar = new System.Windows.Forms.ToolTip(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.dtl_registro_aplicacion)).BeginInit();
            this.SuspendLayout();
            // 
            // lb_nombre_de_aplicacion
            // 
            this.lb_nombre_de_aplicacion.AutoSize = true;
            this.lb_nombre_de_aplicacion.Location = new System.Drawing.Point(31, 63);
            this.lb_nombre_de_aplicacion.Name = "lb_nombre_de_aplicacion";
            this.lb_nombre_de_aplicacion.Size = new System.Drawing.Size(110, 13);
            this.lb_nombre_de_aplicacion.TabIndex = 0;
            this.lb_nombre_de_aplicacion.Text = "Nombre de aplicacion";
            // 
            // lb_infome_de_aplicacion
            // 
            this.lb_infome_de_aplicacion.AutoSize = true;
            this.lb_infome_de_aplicacion.Location = new System.Drawing.Point(31, 98);
            this.lb_infome_de_aplicacion.Name = "lb_infome_de_aplicacion";
            this.lb_infome_de_aplicacion.Size = new System.Drawing.Size(108, 13);
            this.lb_infome_de_aplicacion.TabIndex = 1;
            this.lb_infome_de_aplicacion.Text = "Informe de aplicacion";
            this.lb_infome_de_aplicacion.Click += new System.EventHandler(this.label1_Click);
            // 
            // txt_nombre_aplicacion
            // 
            this.txt_nombre_aplicacion.Location = new System.Drawing.Point(182, 60);
            this.txt_nombre_aplicacion.Name = "txt_nombre_aplicacion";
            this.txt_nombre_aplicacion.Size = new System.Drawing.Size(121, 20);
            this.txt_nombre_aplicacion.TabIndex = 2;
            // 
            // txt_informe_de_aplicacion
            // 
            this.txt_informe_de_aplicacion.Location = new System.Drawing.Point(182, 98);
            this.txt_informe_de_aplicacion.Name = "txt_informe_de_aplicacion";
            this.txt_informe_de_aplicacion.Size = new System.Drawing.Size(121, 20);
            this.txt_informe_de_aplicacion.TabIndex = 3;
            // 
            // btn_insertar
            // 
            this.btn_insertar.Location = new System.Drawing.Point(349, 12);
            this.btn_insertar.Name = "btn_insertar";
            this.btn_insertar.Size = new System.Drawing.Size(75, 23);
            this.btn_insertar.TabIndex = 6;
            this.btn_insertar.Text = "Insertar";
            this.btn_insertar.UseVisualStyleBackColor = true;
            this.btn_insertar.Click += new System.EventHandler(this.btn_insertar_Click);
            // 
            // btn_modificar
            // 
            this.btn_modificar.Location = new System.Drawing.Point(349, 70);
            this.btn_modificar.Name = "btn_modificar";
            this.btn_modificar.Size = new System.Drawing.Size(75, 23);
            this.btn_modificar.TabIndex = 7;
            this.btn_modificar.Text = "Modificar ";
            this.btn_modificar.UseVisualStyleBackColor = true;
            this.btn_modificar.Click += new System.EventHandler(this.btn_modificar_Click);
            // 
            // btn_eliminar
            // 
            this.btn_eliminar.Location = new System.Drawing.Point(349, 99);
            this.btn_eliminar.Name = "btn_eliminar";
            this.btn_eliminar.Size = new System.Drawing.Size(75, 23);
            this.btn_eliminar.TabIndex = 8;
            this.btn_eliminar.Text = "Eliminar";
            this.btn_eliminar.UseVisualStyleBackColor = true;
            this.btn_eliminar.Click += new System.EventHandler(this.btn_eliminar_Click);
            // 
            // btn_buscar
            // 
            this.btn_buscar.Location = new System.Drawing.Point(349, 41);
            this.btn_buscar.Name = "btn_buscar";
            this.btn_buscar.Size = new System.Drawing.Size(75, 23);
            this.btn_buscar.TabIndex = 9;
            this.btn_buscar.Text = "Buscar";
            this.btn_buscar.UseVisualStyleBackColor = true;
            this.btn_buscar.Click += new System.EventHandler(this.btn_buscar_Click);
            // 
            // dtl_registro_aplicacion
            // 
            this.dtl_registro_aplicacion.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtl_registro_aplicacion.Location = new System.Drawing.Point(182, 137);
            this.dtl_registro_aplicacion.Name = "dtl_registro_aplicacion";
            this.dtl_registro_aplicacion.Size = new System.Drawing.Size(341, 81);
            this.dtl_registro_aplicacion.TabIndex = 10;
            this.dtl_registro_aplicacion.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dtl_registro_aplicacion_CellContentClick);
            // 
            // lb_registros_aplicacion
            // 
            this.lb_registros_aplicacion.AutoSize = true;
            this.lb_registros_aplicacion.Location = new System.Drawing.Point(31, 137);
            this.lb_registros_aplicacion.Name = "lb_registros_aplicacion";
            this.lb_registros_aplicacion.Size = new System.Drawing.Size(102, 13);
            this.lb_registros_aplicacion.TabIndex = 11;
            this.lb_registros_aplicacion.Text = "Registros aplicacion";
            this.lb_registros_aplicacion.Click += new System.EventHandler(this.lb_registros_aplicacion_Click);
            // 
            // lb_codigo_aplicacion
            // 
            this.lb_codigo_aplicacion.AutoSize = true;
            this.lb_codigo_aplicacion.Location = new System.Drawing.Point(31, 33);
            this.lb_codigo_aplicacion.Name = "lb_codigo_aplicacion";
            this.lb_codigo_aplicacion.Size = new System.Drawing.Size(40, 13);
            this.lb_codigo_aplicacion.TabIndex = 12;
            this.lb_codigo_aplicacion.Text = "Codigo";
            // 
            // text_codigo_aplcacion
            // 
            this.text_codigo_aplcacion.Location = new System.Drawing.Point(182, 30);
            this.text_codigo_aplcacion.Name = "text_codigo_aplcacion";
            this.text_codigo_aplcacion.Size = new System.Drawing.Size(37, 20);
            this.text_codigo_aplcacion.TabIndex = 13;
            this.text_codigo_aplcacion.MouseClick += new System.Windows.Forms.MouseEventHandler(this.text_codigo_aplcacion_MouseClick);
            this.text_codigo_aplcacion.TextChanged += new System.EventHandler(this.text_codigo_aplcacion_TextChanged);
            this.text_codigo_aplcacion.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.text_codigo_aplcacion_KeyPress);
            // 
            // cbx_modulo
            // 
            this.cbx_modulo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cbx_modulo.FormattingEnabled = true;
            this.cbx_modulo.Items.AddRange(new object[] {
            "Seguridad",
            "Reporteador",
            "Consultas Inteligentes",
            "Modulo HRM",
            "Modulo FRM",
            "Modulo SCM",
            "Modulo MRP",
            "Modulo CRM"});
            this.cbx_modulo.Location = new System.Drawing.Point(463, 43);
            this.cbx_modulo.Name = "cbx_modulo";
            this.cbx_modulo.Size = new System.Drawing.Size(121, 21);
            this.cbx_modulo.TabIndex = 14;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(466, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(112, 13);
            this.label1.TabIndex = 15;
            this.label1.Text = "Seleccione un modulo";
            // 
            // tt_seleccionar
            // 
            this.tt_seleccionar.IsBalloon = true;
            this.tt_seleccionar.Popup += new System.Windows.Forms.PopupEventHandler(this.tt_seleccionar_modulo);
            // 
            // frm_aplicacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(192)))), ((int)(((byte)(192)))));
            this.ClientSize = new System.Drawing.Size(686, 319);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cbx_modulo);
            this.Controls.Add(this.text_codigo_aplcacion);
            this.Controls.Add(this.lb_codigo_aplicacion);
            this.Controls.Add(this.lb_registros_aplicacion);
            this.Controls.Add(this.dtl_registro_aplicacion);
            this.Controls.Add(this.btn_buscar);
            this.Controls.Add(this.btn_eliminar);
            this.Controls.Add(this.btn_modificar);
            this.Controls.Add(this.btn_insertar);
            this.Controls.Add(this.txt_informe_de_aplicacion);
            this.Controls.Add(this.txt_nombre_aplicacion);
            this.Controls.Add(this.lb_infome_de_aplicacion);
            this.Controls.Add(this.lb_nombre_de_aplicacion);
            this.ForeColor = System.Drawing.SystemColors.ControlText;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frm_aplicacion";
            this.Text = "frm_aplicacion";
            this.Load += new System.EventHandler(this.frm_aplicacion_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dtl_registro_aplicacion)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lb_nombre_de_aplicacion;
        private System.Windows.Forms.Label lb_infome_de_aplicacion;
        private System.Windows.Forms.TextBox txt_nombre_aplicacion;
        private System.Windows.Forms.TextBox txt_informe_de_aplicacion;
        private System.Windows.Forms.Button btn_insertar;
        private System.Windows.Forms.Button btn_modificar;
        private System.Windows.Forms.Button btn_eliminar;
        private System.Windows.Forms.Button btn_buscar;
        private System.Windows.Forms.DataGridView dtl_registro_aplicacion;
        private System.Windows.Forms.Label lb_registros_aplicacion;
        private System.Windows.Forms.Label lb_codigo_aplicacion;
        private System.Windows.Forms.TextBox text_codigo_aplcacion;
        private System.Windows.Forms.ComboBox cbx_modulo;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ToolTip tt_seleccionar;
    }
}