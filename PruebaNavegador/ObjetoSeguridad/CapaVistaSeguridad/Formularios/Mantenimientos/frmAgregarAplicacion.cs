using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaVistaSeguridad.Formularios.Mantenimientos
{
    public partial class frmAgregarAplicacion : Form
    {
        public frmAgregarAplicacion()
        {
            InitializeComponent();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void btnSeleccionar_Click(object sender, EventArgs e)
        {
            if (dgvAplicaciones.Rows.Count == 0)
            {
                MessageBox.Show("Debe seleccionar la Aplicación deseada");
               // return;
            }
            else
            {
                DialogResult = DialogResult.OK;
                Close();
            }
        }
    }
}
