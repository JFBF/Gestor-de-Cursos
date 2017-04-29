using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Institucion.Startup))]
namespace Institucion
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
