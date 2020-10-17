using CapaModeloNavegador;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Odbc;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaControladorNavegador
{
    public class Controlador
    {
        Sentencias sn = new Sentencias();

        public int codigoMax(string tabla, string campo)
        {
            int codigo = sn.procInsertar(tabla, campo);

            return codigo;
        }

        public void Datos(string tabla, List<string> lista,int aplicacion)
        {
            sn.Insertar(tabla, lista,aplicacion);
        }
        public void Datos2(string tabla, List<string> campos, List<string> datos, int aplicacion)
        {
            sn.Modificar(tabla, campos, datos,aplicacion);
        }

        public DataTable enviar(string tabla,string estado)
        {
            try
            {
                OdbcDataAdapter dt = sn.obtener(tabla,estado);
                DataTable table = new DataTable();
                dt.Fill(table);
                return table;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Puede que los parametros seas erroneos, verifique los parametro enviados" + ex);
                return null;
            }

        }

       // --------------------------------------------------------------------------
        public bool Eliminar(string tabla, string campo, string idTabla, string id,int aplicacion)
        {
        
            if (sn.procEliminar(tabla, campo, idTabla, id, aplicacion))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        /////////////////////////
        public string VerficarTabla(string tabla)
        {
            string Mensaje = sn.procTablas(tabla);
            return Mensaje;
        }

        public List<string> VerficarCampo(string tabla)
        {
            List<string> Campos = sn.procCampos(tabla);
            return Campos;
        }
    }
}
