
using CapaControladorSeguridad;
using System;
using System.Data.Odbc;
using System.Drawing;
using System.Windows.Forms;

namespace CapaVistaSeguridad
{
    public partial class frmLogin : Form
    {

        clsControladorPerfil controlador = new clsControladorPerfil();
        public frmLogin()
        {
            InitializeComponent();
            //CODIFICACION PARA EL TEXTFIELD DE CONTRASEÑA
            txtPassword.PasswordChar = '*';

        }


        private void panel1_Paint(object sender, PaintEventArgs e)
        {
            //CODIGO PARA HACER TRASLUCIDO EL PANEL
            pnlBlanco.BackColor = Color.FromArgb(25, 0, 0, 0);
        }


        private void btn_salir_Click(object sender, EventArgs e)
        {
             System.Windows.Forms.Application.Exit();
        }

        //public bool Verificacion { get; set; }
        public string usuario()
        {
            return txtUsuario.Text;
        }

        private void btnAceptar_Click(object sender, EventArgs e)
        {
            Console.WriteLine("antes de llamada");
            if(controlador.Login(txtUsuario.Text, txtPassword.Text)== 1)
            {
                Console.WriteLine("valor true" + txtUsuario.Text + txtPassword.Text);
                DialogResult = DialogResult.OK;
            }else
            {
                MessageBox.Show("Usuario o contraseña incorrectos");
            }
            
            
        }
    }
}
