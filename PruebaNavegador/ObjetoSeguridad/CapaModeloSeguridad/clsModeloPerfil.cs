using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaModeloSeguridad
{
    public class clsModeloPerfil
    {
        clsConexion cn = new clsConexion();
        
        public int Login(string strUsuario, string strContrasena)
        {
            try
            {
                string strUsuarioDB = "";
                string strContrasenaDB = "";
                OdbcCommand command = new OdbcCommand("SELECT usuario_login, contraseña_login FROM login WHERE usuario_login ='" + strUsuario + "' AND contraseña_login ='" + strContrasena + "' AND estado_login = 1 ;", cn.conexion());
                OdbcDataReader reader = command.ExecuteReader();
                reader.Read();
                strUsuarioDB = reader.GetString(0);
                strContrasenaDB = reader.GetString(1);
                Console.WriteLine("Es true" + strUsuarioDB + strContrasenaDB);
                reader.Close();
                if (String.IsNullOrEmpty(strUsuarioDB) || String.IsNullOrEmpty(strContrasenaDB))
                {
                    return 0;
                }
                else
                {
                    return 1;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("CapaModelo Error al consular usuario:  "+ ex);
                return 0;
            }
        }
    }
}
