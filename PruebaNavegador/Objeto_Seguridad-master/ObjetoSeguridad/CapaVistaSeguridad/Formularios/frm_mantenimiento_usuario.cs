using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Odbc;
using System.Drawing;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaControladorSeguridad;

namespace CapaVistaSeguridad.Formularios.Mantenimientos
{
    public partial class frm_mantenimiento_usuario : Form
    {
        String ap = "aplicacion";
        public frm_mantenimiento_usuario()
        {
            InitializeComponent();
        }

        private void btn_buscar_Click(object sender, EventArgs e)
        {
            //Cls_aplicacion app = new Cls_aplicacion();
            //DataTable dt = app.buscarLogin(txt_codigo_usuario.Text);
            //dtl_registro_usuario.DataSource = dt;

            

            string codusuario, usuario, contraseña, nombreempleado, estado;
            codusuario = txt_codigo_usuario.Text;

            if (codusuario == "")
            {
                MessageBox.Show("debe llenar la casilla codigo");
            }
            else
            {
                Cls_aplicacion app = new Cls_aplicacion();
                DataTable dt = app.buscarLogin(txt_codigo_usuario.Text);
                dtl_registro_usuario.DataSource = dt;

            }

        }

        private void btn_insertar_Click(object sender, EventArgs e)
        {
            //Cls_aplicacion app = new Cls_aplicacion();
            //app.insertarLogin(txt_usuario.Text, txt_contraseña.Text, cbx_estado.Text, txt_codigo_empleado.Text);
            
            string codusuario, usuario, contraseña, nombreempleado, estado;
            codusuario = txt_codigo_usuario.Text;
            usuario = txt_usuario.Text;
            contraseña = txt_contraseña.Text;
            estado = cbx_estado.Text;
            nombreempleado = txt_codigo_empleado.Text;



            if ((usuario == "") || (contraseña == "") || (estado == "") || (nombreempleado == "") && !(codusuario == ""))
            {
                MessageBox.Show("debe llenar todas las casillas");
            }
            else
            {

                Cls_aplicacion app = new Cls_aplicacion();
                app.insertarLogin(txt_usuario.Text, txt_contraseña.Text, txt_codigo_empleado.Text, cbx_estado.Text);
                MessageBox.Show("se inserto correctamente");

                txt_usuario.Clear();
                txt_contraseña.Clear();
                txt_codigo_empleado.Clear();
               
            }
        }

        private void btn_modificar_Click(object sender, EventArgs e)
        {
            //Cls_aplicacion app = new Cls_aplicacion();
            //app.modificarLogin(txt_codigo_usuario.Text, txt_usuario.Text, txt_contraseña.Text, cbx_estado.Text, txt_codigo_empleado.Text);
            string codusuario, usuario, contraseña, nombreempleado, estado;
            codusuario = txt_codigo_usuario.Text;
            usuario = txt_usuario.Text;
            contraseña = txt_contraseña.Text;
            estado = cbx_estado.Text;
            nombreempleado = txt_codigo_empleado.Text;

            if ((usuario == "") || (contraseña == "") || (estado == "") || (nombreempleado == "") && !(codusuario == ""))
            {
                MessageBox.Show("debe llenar todas las casillas");
            }
            else
            {

                Cls_aplicacion app = new Cls_aplicacion();
                app.modificarLogin(txt_codigo_usuario.Text, txt_usuario.Text, txt_contraseña.Text, txt_codigo_empleado.Text, cbx_estado.Text);
                MessageBox.Show("se modifico correctamente");

                txt_usuario.Clear();
                txt_contraseña.Clear();
                txt_codigo_empleado.Clear();
            }
        }

        private void btn_eliminar_Click(object sender, EventArgs e)
        {
            Cls_aplicacion app = new Cls_aplicacion();
            app.eliminarLogin(txt_codigo_usuario.Text);
        }

        private void dtl_registro_usuario_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            txt_usuario.Text = dtl_registro_usuario.CurrentRow.Cells[1].Value.ToString();
            txt_contraseña.Text = dtl_registro_usuario.CurrentRow.Cells[2].Value.ToString();
            txt_codigo_empleado.Text = dtl_registro_usuario.CurrentRow.Cells[3].Value.ToString();
            cbx_estado.Text = dtl_registro_usuario.CurrentRow.Cells[4].Value.ToString();
            
        }
    }
}
