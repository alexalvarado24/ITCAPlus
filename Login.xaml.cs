using System.Data.SqlClient;
using System.Windows;
using System.Windows.Input;

namespace ITCAPlus
{
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        #region CAMBIAR PAGE REGISTRAR NUEVA CUENTA
        // Cambiar a Registro (Para crear una nueva cuenta)
        private void txbSignUp_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            frContenido.Navigate(new SignUp());
            Content = new SignUp();
        }
        #endregion

        #region INICIO SESION COMPROBAR REGISTRO BD
        // Iniciar sesión con cuenta ya creada
        private void btn_Login_Click(object sender, RoutedEventArgs e)
        {
            string username = txtNombre.Text;
            string password = txtPassword.Password;

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                MessageBox.Show("Por favor, complete todos los campos.");
                return;
            }

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT UsuarioPassword, UsuarioID, UsuarioCorreo, UsuarioRol FROM Usuarios WHERE UsuarioNombre = @UsuarioNombre";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@UsuarioNombre", username);

                    try
                    {
                        connection.Open();
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.Read())
                        {
                            string storedPasswordHash = reader["UsuarioPassword"].ToString();
                            string userID = reader["UsuarioID"].ToString();
                            string correo = reader["UsuarioCorreo"].ToString();
                            string rol = reader["UsuarioRol"].ToString();

                            if (BCrypt.Net.BCrypt.Verify(password, storedPasswordHash))
                            {
                                Menu mainMenu = new Menu();
                                mainMenu.Show();
                                this.Close();
                            }
                            else
                            {
                                MessageBox.Show("Contraseña incorrecta.");
                                txtNombre.Clear();
                                txtPassword.Clear();
                            }
                        }
                        else
                        {
                            MessageBox.Show("El usuario no existe en la base de datos.");
                            txtNombre.Clear();
                            txtPassword.Clear();
                        }
                    }
                    catch (SqlException ex)
                    {
                        MessageBox.Show("Ocurrió un error al acceder a la base de datos: " + ex.Message);
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Ocurrió un error: " + ex.Message);
                    }
                }
            }
        }
        #endregion
    }
}
