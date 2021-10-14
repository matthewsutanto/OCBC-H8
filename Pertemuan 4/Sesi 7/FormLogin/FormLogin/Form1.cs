using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FormLogin
{
    public partial class Form1 : Form
    {
        config db = new config();
        public Form1()
        {
            InitializeComponent();

            db.Connect("user_info");
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void edtUsername_TextChanged(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            db.ExecuteSelect("SELECT * FROM user_info where username = '" + edtUsername.Text + "' AND password ='" + edtPassword.Text + "';");

            if(db.Count() == 1)
            {
                MessageBox.Show("Success you will login as " + db.Results(0, "names"));
            }
            else
            {
                MessageBox.Show("Wrong Username and password combination");
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);
        }

        private void btnRegister_Click(object sender, EventArgs e)
        {
            Register register = new Register();
            register.Show();
        }
    }
}
