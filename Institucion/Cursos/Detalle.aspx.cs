using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Institucion.Cursos
{
    public partial class Detalle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString.Count == 0)
            {
                Response.Redirect("Cursos.aspx");
            }
            else
            {
                Entities cursos = new Entities();

                //validate if user is in rolled.
                string name = HttpContext.Current.User.Identity.Name;
                AspNetUser user = cursos.AspNetUsers.Where(u => u.Email == name).First();
                int cursoId = int.Parse(Request.QueryString["cursoId"]);

                var some = cursos.CursoXEstudiantes.Where(ce => ce.IdCurso == cursoId && ce.IdUsuario == user.Id).FirstOrDefault();
                if(some == null)
                {
                    Response.Redirect("Cursos.aspx");
                }

                Curso c = cursos.Cursoes.Find(cursoId);
                Label1.Text = c.Nombre;

                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand(@"select u.Nombre, u.Apellido from CursoXEstudiante ce, Curso c, AspNetUsers u where u.Id = ce.IdUsuario AND c.Id = ce.IdCurso AND ce.IdCurso = "+cursoId, con);
                DataSet ds = new DataSet("MyDS");
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                //opening connection, filling dataset, closing connection
                con.Open();
                da.Fill(ds);
                con.Close();

                //binding datasource to GridView
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }
    }
}