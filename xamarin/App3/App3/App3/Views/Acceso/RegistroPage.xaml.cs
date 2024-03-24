using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App3.Views.Acceso
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class RegistroPage : ContentPage
    {
        public RegistroPage ()
        {
            InitializeComponent ();
        }

        async void RegistrarClicked(object sender, EventArgs e)
        {
            // 
            if (string.IsNullOrWhiteSpace(nombreUsuarioEntry.Text) ||
                string.IsNullOrWhiteSpace(correoEntry.Text) ||
                string.IsNullOrWhiteSpace(contraseñaEntry.Text))
            {
                await DisplayAlert("Registro", "Por favor, complete todos los campos.", "OK");
                return;
            }
            String nombreUsuario = nombreUsuarioEntry.Text;
            String correo = correoEntry.Text;
            String contraseña = contraseñaEntry.Text;
            //
            AppSettings.NombreUsuario = nombreUsuario;
            AppSettings.Correo = correo;
            AppSettings.Contraseña = contraseña;

            await DisplayAlert("Registro", "Usuario registrado correctamente", "OK");
            await Navigation.PushAsync(new LoginPage());
        }
        public static class AppSettings
        {
            public static string NombreUsuario { get; set; }
            public static string Correo { get; set; }
            public static string Contraseña { get; set; }
        }
    }
}