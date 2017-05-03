using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Institucion.Cursos
{
    public partial class Cursos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.IsInRole("Admin"))
            {
                //agregar boton para llevar admin a crear
            }
        }

        protected void botonDetalle_Click(object sender, EventArgs e)
        {
            // enviar otra página.
            //var i = ListView1.SelectedIndex;
            //var curso = ListView1.Items[i];
        }
    }
}