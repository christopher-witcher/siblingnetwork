using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Siblings_Networked.Startup))]
namespace Siblings_Networked
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
