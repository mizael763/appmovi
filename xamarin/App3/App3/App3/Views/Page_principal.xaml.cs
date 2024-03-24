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
    public partial class Page_principal : ContentPage
    {
        public Page_principal()
        {
            InitializeComponent();
        }

        private async void Empezar_clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Page_SubPrincipal());
        }
    }
}