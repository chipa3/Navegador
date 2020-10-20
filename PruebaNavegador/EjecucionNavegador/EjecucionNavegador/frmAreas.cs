using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EjecucionNavegador
{
    public partial class frmAreas : Form
    {
        string UsuarioAplicacion;
        public frmAreas(string usuario)
        {
            InitializeComponent();
            UsuarioAplicacion = usuario;
            navegador1.Usuario = UsuarioAplicacion;
        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            
            List<string> CamposTabla = new List<string>();
            List<Control> lista = new List<Control>();
            //List<Control> lista = new List<Control>();
            navegador1.aplicacion = 5;
            navegador1.tbl = "area";
            navegador1.campoEstado = "estado_area";

            //se agregan los componentes del formulario a la lista tipo control

            foreach (Control C in this.Controls)
            {
                if (C.Tag != null)
                {
                    //  MessageBox.Show(""+C.Name)
                    if (C is TextBox)
                    {
                        lista.Add(C);

                    }
                    else if (C is ComboBox)
                    {
                        lista.Add(C);

                    }
                    else if (C is DateTimePicker)
                    {
                        lista.Add(C);

                    }
                }


            }

            navegador1.control = lista;
            navegador1.DatosActualizar = dataGridView1;
            navegador1.actualizarData();
            navegador1.cargar();
            navegador1.ruta = "AgregarCliente.html";
            
        }


    }
}
