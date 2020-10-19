using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaModeloSeguridad
{
    public class clsPermisos
    {
        clsConexion cn = new clsConexion();
        //Funcion para obtener el codigo del usuario
        public string obtenerCodigoUsuario(string usuarioLogin)
        {
            string strCodigo = "";
            try
            {
                OdbcCommand command = new OdbcCommand("select LO.pk_id_login from LOGIN LO where LO.usuario_login ='" + usuarioLogin + "';", cn.conexion());
                OdbcDataReader reader = command.ExecuteReader();
                reader.Read();
                strCodigo = reader.GetString(0);
                reader.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine("CapaModelo Error al consular obtenerCodigoUsuario:  " + ex);
            }
            return strCodigo;
        }


        //funcion para obtener los permisos por aplicacion del usuario.
        public string PermisosPorAplicacion(string strAplicacion, string strUsuario)
        {
            string strCodigo = obtenerCodigoUsuario(strUsuario);
            string strPermisosAplicacion="";
            try
            {
                OdbcCommand command = new OdbcCommand("SELECT PER.insertar_permiso, PER.modificar_permiso, PER.eliminar_permiso, PER.consultar_permiso, PER.imprimir_permiso " +
                                                    "FROM PERMISO PER INNER JOIN APLICACIONUSUARIO APU " +
                                                    "ON APU.fk_idpermiso_aplicacionusuario = PER.pk_id_permiso INNER JOIN LOGIN LO " +
                                                    "ON LO.pk_id_login = APU.fk_idlogin_aplicacionusuario INNER JOIN APLICACION AP " +
                                                    "ON APU.fk_idaplicacion_aplicacionusuario = AP.pk_id_aplicacion " +
                                                    "WHERE LO.pk_id_login = " + strCodigo + " AND AP.pk_id_aplicacion = " + strAplicacion + "", cn.conexion());
                OdbcDataReader reader = command.ExecuteReader();
                reader.Read();
                strPermisosAplicacion = reader.GetString(0) + "," + reader.GetString(1) + "," + reader.GetString(2) + "," + reader.GetString(3) + "," + reader.GetString(4);
                reader.Close();
                return strPermisosAplicacion;
            }
            catch (Exception ex)
            {
                Console.WriteLine("CapaModelo Error al consular PermisosPorAplicacion:  " + ex);
                return null;
            }
            
        }
        //Permiso por perfil
        public string PermisosPorPerfil(string strAplicacion, string strUsuario)
        {
            string strCodigo = obtenerCodigoUsuario(strUsuario);
            string strPermisoPerfil = "";
            try
            {
                OdbcCommand command = new OdbcCommand("SELECT PER.insertar_permiso, PER.modificar_permiso, PER.eliminar_permiso, PER.consultar_permiso, PER.imprimir_permiso " +
                                                        "FROM PERMISO PER INNER JOIN APLICACIONPERFIL APP " +
                                                        "ON PER.pk_id_permiso = APP.fk_idpermiso_aplicacionperfil INNER JOIN APLICACION AP " +
                                                        "ON AP.pk_id_aplicacion = APP.fk_idaplicacion_aplicacionperfil INNER JOIN PERFIL P " +
                                                        "ON APP.fk_idperfil_aplicacionperfil = P.pk_id_perfil INNER JOIN PERFILUSUARIO PEU " +
                                                        "ON PEU.pk_id_perfilusuario = P.pk_id_perfil INNER JOIN LOGIN LO " +
                                                        "ON LO.pk_id_login = PEU.fk_idperfil_perfilusuario " +
                                                        "WHERE APP.fk_idaplicacion_aplicacionperfil = "+ strAplicacion + " and LO.usuario_login = "+ strCodigo + " and " +
                                                        "APP.fk_idperfil_aplicacionperfil = (SELECT PER.pk_id_perfil FROM PERFIL PER INNER JOIN PERFILUSUARIO PEUS " +
                                                        "ON PEUS.fk_idperfil_perfilusuario = PER.pk_id_perfil  INNER JOIN LOGIN LOG " +
                                                        "ON PEUS.fk_idusuario_perfilusuario = LOG.pk_id_login " +
                                                        "WHERE LOG.pk_id_login = "+ strCodigo + ")", cn.conexion());
                OdbcDataReader reader = command.ExecuteReader();
                reader.Read();
                strPermisoPerfil = reader.GetString(0) + "," + reader.GetString(1) + "," + reader.GetString(2) + "," + reader.GetString(4) + "," + reader.GetString(5);
                reader.Close();
                return strPermisoPerfil;
            }
            catch (Exception ex)
            {
                Console.WriteLine("CapaModelo Error al consular PermisosPorPerfil:  " + ex);
                return null;
            }
            
        }
        //Acceso a aplicacion por perfil
        public int AccesoAplicacionPerfil(string strIdAplicacion, string strNombreUsuario)
        {
            try
            {
                OdbcCommand command = new OdbcCommand("SELECT APP.fk_idaplicacion_aplicacionperfil, P.nombre_perfil " +
                                                        "FROM APLICACIONPERFIL APP INNER JOIN APLICACION AP " +
                                                        "ON APP.fk_idaplicacion_aplicacionperfil = AP.pk_id_aplicacion INNER JOIN PERFIL P " +
                                                        "ON APP.fk_idperfil_aplicacionperfil = P.pk_id_perfil " +
                                                        "where AP.pk_id_aplicacion = " + strIdAplicacion + " and P.pk_id_perfil = (SELECT PER.pk_id_perfil FROM PERFIL PER INNER JOIN PERFILUSUARIO PEUS " +
                                                        "ON PEUS.fk_idperfil_perfilusuario = PER.pk_id_perfil  INNER JOIN LOGIN LOG " +
                                                        "ON PEUS.fk_idusuario_perfilusuario = LOG.pk_id_login " +
                                                        "WHERE LOG.usuario_login = '" + strNombreUsuario + "')", cn.conexion());
                OdbcDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {                    
                    return 1;
                }
                else
                {
                    return 0;
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine("CapaModelo Error al consular AccesoAplicacionPerfil:  " + ex);
                return 0;
            }
        }


        //ACCESO A APLICACION
        public int AccesoAplicacion(string strIdAplicacion, string strNombreUsuario)
        {
            string prueba1;
            try
            {
                OdbcCommand command = new OdbcCommand("SELECT APU.fk_idaplicacion_aplicacionusuario "+
                                                        "FROM APLICACIONUSUARIO APU INNER JOIN LOGIN LO "+
                                                        "ON APU.fk_idlogin_aplicacionusuario = LO.pk_id_login "+
                                                        "WHERE usuario_login = '"+strNombreUsuario+"' and APU.fk_idaplicacion_aplicacionusuario = "+strIdAplicacion, cn.conexion());
                OdbcDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    return 1;
                }
                else
                {
                    return 0;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("CapaModelo Error al consular AccesoAplicacion:  " + ex);
                return 0;
            }
        }

    }
}
