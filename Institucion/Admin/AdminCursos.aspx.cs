using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Institucion.Admin
{
    public partial class AdminCursos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUser_Click(object sender, EventArgs e)
        {
            Curso curso = new Curso();
            curso.Area = Area.Text;
            curso.Descripcion = Descripcion.Text;
            curso.Nombre = Nombre.Text;
            curso.Max = Max.Text;
            curso.Habilitado = Habilitado.Checked;
            // Web service called
            ServiceReference1.Service1Client client = new ServiceReference1.Service1Client();
            curso.GUID = client.ObtenerGUID(curso.Nombre).ToString();
            curso.IdInstitucion = 1;

            Entities cursos = new Entities();
            cursos.Cursoes.Add(curso);
            try
            {
                cursos.SaveChanges();
            }catch(DbEntityValidationException ex)
            {
                var errorMessages = ex.EntityValidationErrors
                    .SelectMany(x => x.ValidationErrors)
                    .Select(x => x.ErrorMessage);

                // Join the list to a single string.
                var fullErrorMessage = string.Join("; ", errorMessages);

                // Combine the original exception message with the new one.
                var exceptionMessage = string.Concat(ex.Message, " The validation errors are: ", fullErrorMessage);

                // Throw a new DbEntityValidationException with the improved exception message.
                throw new DbEntityValidationException(exceptionMessage, ex.EntityValidationErrors);
            }
        }
    }
}