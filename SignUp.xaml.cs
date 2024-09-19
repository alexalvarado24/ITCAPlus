using System;
using System.Data.SqlClient;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;

namespace ITCAPlus
{
    /// <summary>
    /// Lógica de interacción para SignUp.xaml
    /// </summary>
    public partial class SignUp : Page
    {
        Menu menu = new Menu();
        public SignUp()
        {
            InitializeComponent();
        }

        #region REGISTRO USUARIO EN BD
        // Registrar un usuario nuevo y guardar sus datos en BD
        private void btn_Registrar_Click(object sender, RoutedEventArgs e)
        {
            string nombre = txtNombreUsuario.Text;
            string correo = txtCorreo.Text;
            string contraseña = txtPassword.Password;
            ComboBoxItem selectedItem = (ComboBoxItem)Rol.SelectedItem;
            string rol = selectedItem.Content.ToString();

            if (string.IsNullOrEmpty(nombre) || string.IsNullOrEmpty(correo) || string.IsNullOrEmpty(contraseña) || string.IsNullOrEmpty(rol))
            {
                MessageBox.Show("Por favor complete todos los campos.", "Advertencia", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            // Generar 4 números aleatorios
            Random random = new Random();
            int randomNumbers = random.Next(1000, 10000); // 1000 a 9999 para 4 dígitos

            // Obtener la terminación del año actual
            string yearSuffix = DateTime.Now.Year.ToString().Substring(2); // '24' para 2024

            // Generar el ID de Usuario
            string userID = randomNumbers.ToString() + yearSuffix;

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Usuarios (UsuarioID, UsuarioNombre, UsuarioCorreo, UsuarioPassword, UsuarioRol) VALUES (@UsuarioID, @UsuarioNombre, @UsuarioCorreo, @UsuarioPassword, @UsuarioRol)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UsuarioID", userID);
                    command.Parameters.AddWithValue("@UsuarioNombre", nombre);
                    command.Parameters.AddWithValue("@UsuarioCorreo", correo);
                    command.Parameters.AddWithValue("@UsuarioPassword", BCrypt.Net.BCrypt.HashPassword(contraseña)); // Encriptar con BCrypt para el hash de contraseñas
                    command.Parameters.AddWithValue("@UsuarioRol", rol);

                    try
                    {
                        connection.Open();
                        command.ExecuteNonQuery();
                        MessageBox.Show("Usuario registrado con éxito.", "Registro", MessageBoxButton.OK, MessageBoxImage.Information);

                        menu.Show();
                        // Cerrar la ventana de registro
                        Window.GetWindow(this)?.Close();
                    }
                    catch (SqlException ex)
                    {
                        MessageBox.Show("Error al registrar el usuario en la base de datos: " + ex.Message);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Error al registrar el usuario: " + ex.Message);
                    }
                }
            }
        }
        #endregion

        #region CAMBIO PAGE INICIO SESION
        // Redirigir a la página "Login" para iniciar sesión
        private void txbLogin_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            // Navegar a la ventana de inicio de sesión
            NavigationService?.Navigate(new MainWindow());

            // Cerrar la ventana actual si `Registrarse` está dentro de una ventana
            Window.GetWindow(this)?.Close();
        }
        #endregion
    }
}
