using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Odbc;
using System.Drawing;
using System.Linq;
using System.Net.Http.Headers;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaControladorSeguridad;



namespace CapaVistaSeguridad.Formularios.Mantenimientos
{
    public partial class frm_aplicacion : Form
    {
        String ap = "aplicacion";
        public frm_aplicacion()
        {
            InitializeComponent();
            this.tt_seleccionar.SetToolTip(this.cbx_modulo,
                "puede utilizar los siguientes codigos\n" +
                "para crear una nueva aplicacion:\n" +
                "Seguridad 1-100\n" +
                "Reporteador 101-200\n" +
                "Consultas inteligentes 201-300\n" +
                "Modulo HRM 301-1300\n" +
                "Modulo FRM 1301-2300\n" +
                "Modulo SCM 2301-3300\n" +
                "Modulo MRP 3301-4300\n" +
                "Moculo CRM 4301-5300\n");
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void frm_aplicacion_Load(object sender, EventArgs e)
        {

        }

        private void lb_registros_aplicacion_Click(object sender, EventArgs e)
        {

        }

        private void btn_insertar_Click(object sender, EventArgs e)
        {
            string id, nombre, informe, validacion;
            //int codigo = Convert.ToInt32(text_codigo_aplcacion.Text);
            nombre = txt_nombre_aplicacion.Text;
            informe = txt_informe_de_aplicacion.Text;
            id = text_codigo_aplcacion.Text;
            validacion = cbx_modulo.Text;
            if ((id == "") || (nombre == "") || (informe == "") || (validacion == ""))
            {
                MessageBox.Show("debe llenar todas las casillas");
            }
            else
            {
                int codigo = Convert.ToInt32(text_codigo_aplcacion.Text);
                if (validacion == "Seguridad")
                {
                    if ((codigo <= 100) && (codigo >= 1))
                    {
                        MessageBox.Show("codigo de seguridad");
                        Cls_aplicacion app = new Cls_aplicacion();
                        app.insertar(text_codigo_aplcacion.Text, txt_nombre_aplicacion.Text, txt_informe_de_aplicacion.Text);
                        text_codigo_aplcacion.Clear();
                        txt_nombre_aplicacion.Clear();
                        txt_informe_de_aplicacion.Clear();
                    }
                    else
                    {
                        MessageBox.Show("no se encuentra en el rango");
                    }
                }
                else if (validacion == "Reporteador")
                {
                    if ((codigo <= 200) && (codigo >= 101))
                    {
                        MessageBox.Show("codigo de reporteador");
                        Cls_aplicacion app = new Cls_aplicacion();
                        app.insertar(text_codigo_aplcacion.Text, txt_nombre_aplicacion.Text, txt_informe_de_aplicacion.Text);
                        text_codigo_aplcacion.Clear();
                        txt_nombre_aplicacion.Clear();
                        txt_informe_de_aplicacion.Clear();
                    }

                    else { MessageBox.Show("fuera de rango"); }

                }
                else if (validacion == "Consultas Inteligentes")
                {
                    if ((codigo <= 300) && (codigo >= 201))
                    {
                        MessageBox.Show("codigo consultas inteligentes");
                        Cls_aplicacion app = new Cls_aplicacion();
                        app.insertar(text_codigo_aplcacion.Text, txt_nombre_aplicacion.Text, txt_informe_de_aplicacion.Text);
                        text_codigo_aplcacion.Clear();
                        txt_nombre_aplicacion.Clear();
                        txt_informe_de_aplicacion.Clear();
                    }

                    else { MessageBox.Show("fuera de rango"); }

                }
                else if (validacion == "Modulo HRM")
                {
                    if ((codigo <= 1300) && (codigo >= 301))
                    {
                        MessageBox.Show("codigo de HRM");
                        Cls_aplicacion app = new Cls_aplicacion();
                        app.insertar(text_codigo_aplcacion.Text, txt_nombre_aplicacion.Text, txt_informe_de_aplicacion.Text);
                        text_codigo_aplcacion.Clear();
                        txt_nombre_aplicacion.Clear();
                        txt_informe_de_aplicacion.Clear();
                    }

                    else { MessageBox.Show("fuera de rango"); }

                }
                else if (validacion == "Modulo FRM")
                {
                    if ((codigo <= 2300) && (codigo >= 1301))
                    {
                        MessageBox.Show("codigo FRM");
                        Cls_aplicacion app = new Cls_aplicacion();
                        app.insertar(text_codigo_aplcacion.Text, txt_nombre_aplicacion.Text, txt_informe_de_aplicacion.Text);
                        text_codigo_aplcacion.Clear();
                        txt_nombre_aplicacion.Clear();
                        txt_informe_de_aplicacion.Clear();
                    }

                    else { MessageBox.Show("fuera de rango"); }

                }
                else if (validacion == "Modulo SCM")
                {
                    if ((codigo <= 3300) && (codigo >= 2301))
                    {
                        MessageBox.Show("codigo SCM");
                        Cls_aplicacion app = new Cls_aplicacion();
                        app.insertar(text_codigo_aplcacion.Text, txt_nombre_aplicacion.Text, txt_informe_de_aplicacion.Text);
                        text_codigo_aplcacion.Clear();
                        txt_nombre_aplicacion.Clear();
                        txt_informe_de_aplicacion.Clear();
                    }

                    else { MessageBox.Show("fuera de rango"); }

                }
                else if (validacion == "Modulo MRP")
                {
                    if ((codigo <= 4300) && (codigo >= 3301))
                    {
                        MessageBox.Show("codigo MRP");
                        Cls_aplicacion app = new Cls_aplicacion();
                        app.insertar(text_codigo_aplcacion.Text, txt_nombre_aplicacion.Text, txt_informe_de_aplicacion.Text);
                        text_codigo_aplcacion.Clear();
                        txt_nombre_aplicacion.Clear();
                        txt_informe_de_aplicacion.Clear();
                    }

                    else { MessageBox.Show("fuera de rango"); }

                }
                else if (validacion == "Modulo CRM")
                {
                    if ((codigo <= 5300) && (codigo >= 4301))
                    {
                        MessageBox.Show("codigo CRM");
                        Cls_aplicacion app = new Cls_aplicacion();
                        app.insertar(text_codigo_aplcacion.Text, txt_nombre_aplicacion.Text, txt_informe_de_aplicacion.Text);
                        text_codigo_aplcacion.Clear();
                        txt_nombre_aplicacion.Clear();
                        txt_informe_de_aplicacion.Clear();
                    }

                    else { MessageBox.Show("fuera de rango"); }

                }

            }





        }


        private void btn_eliminar_Click(object sender, EventArgs e)
        {
            string id, nombre, informe, validacion;
            id = text_codigo_aplcacion.Text;
            if (id == "")
            {
                MessageBox.Show("debe llenar la casilla codigo");
            }
            else
            {
                Cls_aplicacion app = new Cls_aplicacion();
                app.eliminar(text_codigo_aplcacion.Text);

            } 
        } 

        private void btn_modificar_Click(object sender, EventArgs e)
        {
            string id, nombre, informe, validacion;
            nombre = txt_nombre_aplicacion.Text;
            informe = txt_informe_de_aplicacion.Text;
            id = text_codigo_aplcacion.Text;
            validacion = cbx_modulo.Text;
            if ((id == "") || (nombre == "") || (informe == "") || (validacion == ""))
            {
                MessageBox.Show("debe llenar todas las casillas");
            }
            else
            {

                Cls_aplicacion app = new Cls_aplicacion();
                app.modificar(text_codigo_aplcacion.Text, txt_nombre_aplicacion.Text, txt_informe_de_aplicacion.Text);
            }
        }
        private void btn_buscar_Click(object sender, EventArgs e)
        {
            string id, nombre, informe, validacion;  
            id = text_codigo_aplcacion.Text;
          
            if (id == "") 
            {
                MessageBox.Show("debe llenar la casilla codigo");
            }
            else
            {
                Cls_aplicacion app = new Cls_aplicacion();
                DataTable dt = app.buscar(text_codigo_aplcacion.Text);
                dtl_registro_aplicacion.DataSource = dt;

            }
          

        }

        private void dtl_registro_aplicacion_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            txt_nombre_aplicacion.Text = dtl_registro_aplicacion.CurrentRow.Cells[1].Value.ToString();
            txt_informe_de_aplicacion.Text = dtl_registro_aplicacion.CurrentRow.Cells[2].Value.ToString();
        }

        private void lbl_seleccion_de_aplicacion_Click(object sender, EventArgs e)
        {

        }

        private void text_codigo_aplcacion_MouseClick(object sender, MouseEventArgs e)
        {

        }

        private void tt_seleccionar_modulo(object sender, PopupEventArgs e)
        {

        }

        private void text_codigo_aplcacion_TextChanged(object sender, EventArgs e)
        {
            

        }

        private void text_codigo_aplcacion_KeyPress(object sender, KeyPressEventArgs e)
        {
            Cls_aplicacion.SoloNumeros(e);
        }
    }
}
    

