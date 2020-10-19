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
    public partial class frmAgregarAplicacion : Form
    {
        clsControladorPerfil Controlador = new clsControladorPerfil();
        public frmAgregarAplicacion()
        {
            InitializeComponent();
            LlenarDgv();
        }
        public void LlenarDgv()
        {
            dgvAplicaciones.Rows.Clear();
            OdbcDataReader mostrar = Controlador.consulta("aplicacion","estado_aplicacion");
            try
            {
                while (mostrar.Read())
                {
                    dgvAplicaciones.Rows.Add(mostrar.GetString(0), mostrar.GetString(1));
                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }

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
