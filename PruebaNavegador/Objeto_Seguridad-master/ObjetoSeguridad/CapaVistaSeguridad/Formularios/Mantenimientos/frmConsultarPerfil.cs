using CapaControladorSeguridad;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Odbc;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaVistaSeguridad.Formularios.Mantenimientos
{
    public partial class frmConsultarPerfil : Form
    {
        clsControladorPerfil Controlador = new clsControladorPerfil();
        public frmConsultarPerfil()
        {
            InitializeComponent();
            LlenarDgv();
        }
        public void LlenarDgv()
        {
            dgvPerfilDisponibles.Rows.Clear();
            OdbcDataReader mostrar = Controlador.consulta("perfil","estado_perfil");
            try
            {
                while (mostrar.Read())
                {
                    dgvPerfilDisponibles.Rows.Add(mostrar.GetString(0), mostrar.GetString(1), mostrar.GetString(2));
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }

        }

        private void btnSeleccionar_Click(object sender, EventArgs e)
        {
            if (dgvPerfilDisponibles.Rows.Count == 0)
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

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Dispose();
        }
    }
}
