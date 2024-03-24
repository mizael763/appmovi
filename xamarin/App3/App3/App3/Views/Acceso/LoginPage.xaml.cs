using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using static App3.Views.Acceso.RegistroPage;

namespace App3.Views.Acceso
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class LoginPage : ContentPage
	{
		public LoginPage ()
		{
			InitializeComponent ();
		}
        protected override void OnAppearing()
        {
            base.OnAppearing();

            Device.BeginInvokeOnMainThread(async () =>
            {
                if (string.IsNullOrWhiteSpace(AppSettings.NombreUsuario) && string.IsNullOrWhiteSpace(AppSettings.Contraseña))
                {
                    var result = await DisplayAlert("Inicio de sesión", "Error: Aún no estás registrado. ¿Deseas registrarte ahora?", "Sí", "No");

                    if (result)
                    {
                        await Navigation.PushAsync(new RegistroPage());
                    }
                }
            });
        }

        public async void Login_clicked(object sender, EventArgs e)
		{
			String username = txtemail.Text;
			String password = txtclave.Text;
            
            if (username == AppSettings.NombreUsuario && password == AppSettings.Contraseña)
            {
                await DisplayAlert("Inicio de sesión", "Inicio de sesión exitoso", "OK");
                await Navigation.PushAsync(new MenuPrincipalPage(AppSettings.NombreUsuario));
            }
            else
            {
                await DisplayAlert("Inicio de sesión", "Usuario o contraseña incorrectos", "OK");
            }
        }
	}
}