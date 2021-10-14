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
    public partial class Register : Form
    {
        config db = new config();
        public Register()
        {
            InitializeComponent();
            db.Connect("user_info");
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            Form1 form1 = new Form1();
            form1.Show();
        }

        private void btnRegister_Click(object sender, EventArgs e)
        {
            db.Execute("INSERT INTO user_info(names, username, password) VALUES('" + edtNames.Text + "','" + edtUser.Text + "','" + edtPswd.Text+"');");
            
            this.Close();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
