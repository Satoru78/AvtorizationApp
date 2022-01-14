using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfAvtorizationApp.Context;
using WpfAvtorizationApp.Model;

namespace WpfAvtorizationApp.Views.Pages
{
    /// <summary>
    /// Логика взаимодействия для RegistrationPage.xaml
    /// </summary>
    public partial class RegistrationPage : Page
    {
        public Login Login { get; set; }
        public List<Login> Logins { get; set; }
        public RegistrationPage(Login login)

        {
            InitializeComponent();
            Logins = Data.ae.Login.ToList();
            this.Login = login;
            this.DataContext = this;
        }


        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {

            if (Login.ID == 0)
            {
                Data.ae.Login.Add(Login);
               
            }
            Data.ae.SaveChanges();
            MessageBox.Show("User registered", "Success", MessageBoxButton.OK, MessageBoxImage.Information);
            NavigationService.GoBack();
        }

      
    }

  }

