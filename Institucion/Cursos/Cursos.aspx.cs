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
        }

        protected void botonDetalle_Click(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            Entities cursos = new Entities();
            if (row != null)
            {
                string name = HttpContext.Current.User.Identity.Name;
                AspNetUser user = cursos.AspNetUsers.Where(u => u.Email == name).First();
                int id = int.Parse(row.Cells[6].Text);
                //look for a curso with given id
                Curso curso = cursos.Cursoes.Find(id);
                Label1.Text = "";
                if (int.Parse(curso.Max) == 0)
                {
                    Label1.Text = "NO HAY CUPOS";
                }
                else
                {
                    Label1.Text = "";
                    var cursosXestudiantes = cursos.CursoXEstudiantes.
                        Where(c => c.IdCurso == id && c.IdUsuario == user.Id).FirstOrDefault();
                    if(cursosXestudiantes == null)
                    {
                        curso.Max = (int.Parse(curso.Max) - 1).ToString();
                        CursoXEstudiante newCurso = new CursoXEstudiante();
                        newCurso.IdCurso = id;
                        newCurso.IdUsuario = user.Id;
                        cursos.CursoXEstudiantes.Add(newCurso);
                        cursos.SaveChanges();
                        this.GridView1.DataBind();
                        Label1.Text = "";
                    }
                    else
                    {
                        Label1.Text = "YA SE INSCRIBIÓ AL CURSO";
                    }
                }
            }
            else
            {
                Label1.Text = "SELECCIONE UN CURSO";
            }
        }
    }
}