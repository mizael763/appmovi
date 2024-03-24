using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App3.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class MenuPrincipalPage : ContentPage
	{
		public MenuPrincipalPage ()
		{
			InitializeComponent ();
		}
        public MenuPrincipalPage(string nombreUsuario) : this()
        {
            welcomeLabel.Text = "Bienvenido " + nombreUsuario;
        }
    }
}