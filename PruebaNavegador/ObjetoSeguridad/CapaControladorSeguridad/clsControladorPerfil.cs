
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaModeloSeguridad;
using System.Drawing;
using System.Windows.Forms;

namespace CapaControladorSeguridad
{
    public class clsControladorPerfil
    {
        clsModeloPerfil Modelo = new clsModeloPerfil();

        public int Login(string strUsuario, string strContrasena)
        {
            int estado = Modelo.Login(strUsuario, strContrasena);
            return estado;
        }

    }
}
