using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaVistaSeguridad;
namespace EjecucionNavegador
{
    public partial class MDI : Form
    {
        public MDI()
        {
            InitializeComponent();
        }

        private void MDI_Load(object sender, EventArgs e)
        {
            frmLogin login = new frmLogin();
            login.ShowDialog();
            textBox1.Text = login.usuario();
        }

        private void bANCOSToolStripMenuItem_Click(object sender, EventArgs e)
        {
            clsVistaBitacora bit = new clsVistaBitacora();
            clsFuncionesSeguridad seguridad = new clsFuncionesSeguridad();
            if (seguridad.PermisosAcceso("5", textBox1.Text) == 1)
            {
                bit.user(textBox1.Text);
                frmBanco Bancos = new frmBanco(textBox1.Text);
                Bancos.MdiParent = this;
                Bancos.Show();
            }
            else
            {
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }

        private void mATERIAPRIMAToolStripMenuItem_Click(object sender, EventArgs e)
        {

            clsVistaBitacora bit = new clsVistaBitacora();
            clsFuncionesSeguridad seguridad = new clsFuncionesSeguridad();
            if (seguridad.PermisosAcceso("6", textBox1.Text) == 1)
            {
                bit.user(textBox1.Text);
                frmarea Bancos = new frmarea(textBox1.Text);
                Bancos.MdiParent = this;
                Bancos.Show();
            }
            else
            {
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }


        }
    }
}
