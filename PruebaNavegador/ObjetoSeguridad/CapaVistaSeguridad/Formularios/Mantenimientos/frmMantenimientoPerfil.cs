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
    public partial class frmMantenimientoPerfil : Form
    {
        public frmMantenimientoPerfil()
        {
            InitializeComponent();
            inicio();
        }

        public void inicio()
        {
            // lblNoCodigo.Text= funcionmaximocodigo();  falta hacer
            txtNombrePerfil.Text = "";
            txtDescripcion.Text = "";
            rbtnHabilitado.Checked = false;
            rbtnDesabilitado.Checked = false;
            gbxDatosPerfil.Enabled = true;
            gbxAplicacionesAsignadas.Enabled = false;
            dgvAplicacionesAsignadas.Rows.Clear();
        }

        private void btnAgregarAplicacion_Click(object sender, EventArgs e)
        {
            frmAgregarAplicacion frmAgregar = new frmAgregarAplicacion();
            frmAgregar.ShowDialog();
        }

        private void btnGuardarPerfil_Click(object sender, EventArgs e)
        {
            gbxAplicacionesAsignadas.Enabled = true;
            gbxDatosPerfil.Enabled = false;
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            inicio();
        }
    }
}
