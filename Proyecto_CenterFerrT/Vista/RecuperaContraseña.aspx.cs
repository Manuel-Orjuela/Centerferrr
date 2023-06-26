using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_CenterFerrT.Vista
{
    public partial class RecuperaContraseña : System.Web.UI.Page
    {
        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Vista/LoginF.aspx");
        }
        private bool enviarCorreo(string email, string password)
        {
            try
            {
                MailMessage message = new MailMessage();
                message.To.Add(email);
                message.Subject = "Recuperacion de contraseña Centerferr";
                message.Body = "Tu contraseña para iniciar sesion con Centerfer es: " + password;
                message.From = new MailAddress("morjuelarincon@gmail.com");
                SmtpClient smtpClient = new SmtpClient();
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new NetworkCredential("morjuelarincon@gmail.com", "jtmguzosbeihijkp");
                smtpClient.Send(message);
                return true;
            }
            catch (Exception ex)
            {

                return false;
            }
        }

        protected void btnRecuperar_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;

            SqlConnection conxion = new SqlConnection("Data Source=SOGAPRRBCFSD550;Initial Catalog=dbCenterferr_Pro_;Integrated Security=True");

            string consulta = "SELECT clave, email FROM Usuario WHERE email = email"; 

            SqlCommand comando = new SqlCommand(consulta, conxion);
            comando.Parameters.AddWithValue("email", email);

            try
            {
                conxion.Open();

                string password = (string)comando.ExecuteScalar();

                if (!string.IsNullOrEmpty(password))
                {
                    bool enviado = enviarCorreo(email, password);
                    if (enviado)
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡CORREO ENVIADO!', 'El correo ha sido enviado correctamente.', 'success')", true);
                    }
                    else
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡CORREO NO ENVIADO!', 'Su correo no se encuentra en la base de datos, por favor, registrese primero.', 'error')", true);
                    }
                }
                else
                {
                    
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('¡CORREO NO ENVIADO!', 'Uno o varios campos vacios.', 'warning')", true);
                }
            }
          
            catch (Exception ex)
            {

            }
            finally
            {
                conxion.Close();
            }
        }

    }
}