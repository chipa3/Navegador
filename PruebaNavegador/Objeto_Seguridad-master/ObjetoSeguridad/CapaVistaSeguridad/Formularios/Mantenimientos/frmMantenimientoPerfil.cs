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
    public partial class frmMantenimientoPerfil : Form
    {
        clsControladorPerfil Controlador = new clsControladorPerfil();
        clsVistaBitacora cn = new clsVistaBitacora();
        public frmMantenimientoPerfil()
        {
            InitializeComponent();
        }

        public void inicio()
        {
            txtNombrePerfil.Text = "";
            btnNuevo.Enabled = true;
            btnGuardarPerfil.Enabled = false;
            btnEliminar.Enabled = false;
            btnModificar.Enabled = false;
            btnCancelar.Enabled = false;
            btnSeleccionar.Enabled = true;
            txtDescripcion.Text = "";
            rbtnHabilitado.Checked = true;
            rbtnDesabilitado.Checked = false;
            ValorRadioboton();
            lblNoCodigo.Text = Controlador.NuevoCodigo();
            LlenarDgv();
        }
        public void LlenarDgv()
        {
            dgvPerfil.Rows.Clear();
            OdbcDataReader mostrar = Controlador.consultaperfil("perfil");
            try
            {
                while (mostrar.Read())
                {
                    dgvPerfil.Rows.Add(mostrar.GetString(0), mostrar.GetString(1), mostrar.GetString(2), mostrar.GetString(3));
                }
                cn.insert("Consulta perfil", 2);
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }

        }
        int Estado=0;
        public void ValorRadioboton()
        {
            if (rbtnHabilitado.Checked == true)
            {
                Estado = 1;
                rbtnDesabilitado.Checked = false;
            }
            else
            {
                rbtnDesabilitado.Checked = true;
                Estado = 0;
            }
        }
        public bool Validar()
        {
            ValorRadioboton();
            if (txtNombrePerfil.Text== "")
            {
                MessageBox.Show("Debe de llenar el campo Nombre Perfil");
                return false;
            }
            if (txtDescripcion.Text == "")
            {
                MessageBox.Show("Debe de llenar el campo Descripción");
                return false;
            }
            return true;
        }

        private void frmMantenimientoPerfil_Load(object sender, EventArgs e)
        {
            inicio();
        }

        private void btnGuardarPerfil_Click(object sender, EventArgs e)
        {
           if(Validar())
            {
                if (Controlador.InsertarPerfil(lblNoCodigo.Text, txtNombrePerfil.Text, txtDescripcion.Text) == null)
                {
                    MessageBox.Show("NO se pudo Guardar los datos Contacte al encargado de sistemas");
                }
                else
                {
                    MessageBox.Show("Datos guardados");
                    cn.insert("Inserción de nuevo perfil: "+ txtNombrePerfil.Text, 2);
                    dgvPerfil.Enabled = true;
                    inicio();
                }
            }
            
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            if (Validar())
            {
                if (Controlador.Modificar_perfil(lblNoCodigo.Text, txtNombrePerfil.Text, txtDescripcion.Text, Estado) == null)
                {
                    MessageBox.Show("NO se pudo Modificar los datos Contacte al encargado de sistemas");
                }
                else
                {
                    MessageBox.Show("Datos Modificados");
                    cn.insert("Modificacion de perfil :"+txtNombrePerfil.Text, 2);
                    inicio();
                }
            }
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            if (Validar())
            {
                if (Controlador.Eliminar_perfil(lblNoCodigo.Text) == null)
                {
                    MessageBox.Show("NO se pudo eliminar los datos Contacte al encargado de sistemas");
                }
                else
                {
                    MessageBox.Show("Datos Eliminados");
                    cn.insert("Eliminación de perfil :" + txtNombrePerfil.Text, 2);
                    inicio();
                }
            }
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            btnNuevo.Enabled = false;
            btnGuardarPerfil.Enabled = true;
            btnModificar.Enabled = false;
            btnEliminar.Enabled = false;
            btnCancelar.Enabled = true;
            dgvPerfil.Enabled = false;

        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            inicio();
        }

        private void btnSeleccionar_Click(object sender, EventArgs e)
        {
            btnNuevo.Enabled = false;
            btnGuardarPerfil.Enabled = false;
            btnModificar.Enabled = true;
            btnEliminar.Enabled = true;
            btnCancelar.Enabled = true;
            btnSeleccionar.Enabled = false;

            if (dgvPerfil.Rows.Count!=0)
            {
                lblNoCodigo.Text = dgvPerfil.Rows[dgvPerfil.CurrentRow.Index].Cells[0].Value.ToString();
                txtNombrePerfil.Text = dgvPerfil.Rows[dgvPerfil.CurrentRow.Index].Cells[1].Value.ToString();
                txtDescripcion.Text = dgvPerfil.Rows[dgvPerfil.CurrentRow.Index].Cells[2].Value.ToString();
                string Dato = dgvPerfil.Rows[dgvPerfil.CurrentRow.Index].Cells[3].Value.ToString();
                if (Dato == "1")
                {
                    rbtnHabilitado.Checked = true;
                    rbtnDesabilitado.Checked = false;
                }
                else
                {
                    rbtnHabilitado.Checked = false;
                    rbtnDesabilitado.Checked = true;
                }
            }
            else
            {
                MessageBox.Show("Debe Seleccionar una fila");
            }
            
        }
    }
}
