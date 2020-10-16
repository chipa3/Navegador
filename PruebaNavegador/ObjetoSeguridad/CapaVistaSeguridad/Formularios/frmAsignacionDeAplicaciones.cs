using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaVistaSeguridad.Formularios
{
    public partial class frmAsignacionDeAplicaciones : Form
    {
        public frmAsignacionDeAplicaciones()
        {
            InitializeComponent();
            inicio();
        }
        public void inicio()
        {
            txtUsuario.Text = "";
            txtNombreUsuario.Text = "";
            gbxUsuarioSelect.Enabled = true;
            gbxPerfilesyAplicaciones.Enabled = false;
            rbtnPerfiles.Checked = true;
            rbtnAplicaciones.Checked = false;
            lsvPerfilesDisponibles.Enabled = true;
            lsvAplicacionesDisponibles.Enabled = false;
            //funcion de llenado de lsvPerfilesDisponibles.Items perfiles pendiente
            //funcion de llenado de  lsvAplicacionesDisponibles.Items  aplicaciones pendiete
            lsvAplicacionesasignadas.Items.Clear();
        }

        public void ControlRadioBoton()
        {
            if (rbtnPerfiles.Checked == true)
            {
                lsvAplicacionesDisponibles.Enabled = false;
                lsvPerfilesDisponibles.Enabled = true;
            }
            else
            {
                lsvPerfilesDisponibles.Enabled = false;
                lsvAplicacionesDisponibles.Enabled = true;
            }
        }
        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }

        private void BtnLimpiar_Click(object sender, EventArgs e)
        {
            inicio();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            gbxUsuarioSelect.Enabled = false;
            gbxPerfilesyAplicaciones.Enabled = true;

        }

        private void rbtnPerfiles_CheckedChanged(object sender, EventArgs e)
        {
            ControlRadioBoton();
        }

        private void rbtnAplicaciones_CheckedChanged(object sender, EventArgs e)
        {
            ControlRadioBoton();
        }
    }
}
