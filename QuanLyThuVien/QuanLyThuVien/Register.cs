using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyThuVien
{
    public partial class Register : Form
    {
        private Form1 _form1;
        public Register(Form1 form1)
        {
            InitializeComponent();
            _form1 = form1;
        }
        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string insertQuery = "INSERT INTO login (username, password) VALUES (@username, @password)";
                    string registerQuery = "INSERT INTO register (username, password, repassword) VALUES (@username, @password, @repassword)";

                    // Đầu tiên, thêm dữ liệu vào bảng register
                    SqlCommand registerCommand = new SqlCommand(registerQuery, connection);
                    registerCommand.Parameters.AddWithValue("@username", txtUsername.Text);
                    registerCommand.Parameters.AddWithValue("@password", txtPassword.Text);
                    registerCommand.Parameters.AddWithValue("@repassword", txtRepassword.Text);

                    // Sau đó, thực hiện thêm dữ liệu vào bảng login
                    SqlCommand loginCommand = new SqlCommand(insertQuery, connection);
                    loginCommand.Parameters.AddWithValue("@username", txtUsername.Text);
                    loginCommand.Parameters.AddWithValue("@password", txtPassword.Text);

                    connection.Open();
                    SqlTransaction transaction = connection.BeginTransaction();

                    try
                    {
                        // Thực hiện cả hai truy vấn trong một giao dịch
                        registerCommand.Transaction = transaction;
                        loginCommand.Transaction = transaction;

                        // Thực thi truy vấn đăng ký
                        int registerRowsAffected = registerCommand.ExecuteNonQuery();
                        string pattern = @"[!@#%^%&$%*&^*%(""?<>{})]"; 

                        if (!Regex.IsMatch(txtUsername.Text, pattern) && txtUsername.Text != "" && txtPassword.Text != "" && txtRepassword.Text != "")
                        {
                            if (registerRowsAffected == 1)
                            {
                                // Nếu đăng ký thành công, thực hiện thêm vào bảng login
                                int loginRowsAffected = loginCommand.ExecuteNonQuery();
                                if (loginRowsAffected == 1)
                                {
                                    // Commit giao dịch nếu thành công
                                    transaction.Commit();

                                    // Hiển thị thông báo đăng ký thành công
                                    MessageBox.Show("Đăng ký thành công!");
                                    // Ẩn form hiện tại
                                    this.Hide();

                                    // Mở form mới
                                    Login form2 = new Login(_form1);
                                    form2.ShowDialog();
                                }
                                else
                                {
                                    // Rollback giao dịch nếu có lỗi khi thêm vào bảng login
                                    transaction.Rollback();
                                    MessageBox.Show("Đăng ký không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                                }
                            }
                            else
                            {
                                // Rollback giao dịch nếu có lỗi khi thêm vào bảng register
                                transaction.Rollback();
                                MessageBox.Show("Đăng ký không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            }
                        }
                        else
                        {
                            MessageBox.Show("Tên người dùng không được chứa ký tự đặc biệt!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    catch (Exception ex)
                    {
                        // Rollback giao dịch nếu có lỗi xảy ra
                        transaction.Rollback();
                        MessageBox.Show("Đăng ký không thành công! " + ex.Message, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Chưa kết nối tới CSDL", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel4_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string insertQuery = "INSERT INTO login (username, password) VALUES (@username, @password)";
                    string registerQuery = "INSERT INTO register (username, password, repassword) VALUES (@username, @password, @repassword)";

                    // Đầu tiên, thêm dữ liệu vào bảng register
                    SqlCommand registerCommand = new SqlCommand(registerQuery, connection);
                    registerCommand.Parameters.AddWithValue("@username", txtUsername.Text);
                    registerCommand.Parameters.AddWithValue("@password", txtPassword.Text);
                    registerCommand.Parameters.AddWithValue("@repassword", txtRepassword.Text);

                    // Sau đó, thực hiện thêm dữ liệu vào bảng login
                    SqlCommand loginCommand = new SqlCommand(insertQuery, connection);
                    loginCommand.Parameters.AddWithValue("@username", txtUsername.Text);
                    loginCommand.Parameters.AddWithValue("@password", txtPassword.Text);

                    connection.Open();
                    SqlTransaction transaction = connection.BeginTransaction();

                    try
                    {
                        // Thực hiện cả hai truy vấn trong một giao dịch
                        registerCommand.Transaction = transaction;
                        loginCommand.Transaction = transaction;

                        // Thực thi truy vấn đăng ký
                        int registerRowsAffected = registerCommand.ExecuteNonQuery();
                        string pattern = @"[!@#%^%&$%*&^*%(""?<>{})]";

                        if (!Regex.IsMatch(txtUsername.Text, pattern) && txtUsername.Text != "" && txtPassword.Text != "" && txtRepassword.Text != "")
                        {
                            if (registerRowsAffected == 1)
                            {
                                // Nếu đăng ký thành công, thực hiện thêm vào bảng login
                                int loginRowsAffected = loginCommand.ExecuteNonQuery();
                                if (loginRowsAffected == 1)
                                {
                                    // Commit giao dịch nếu thành công
                                    transaction.Commit();

                                    // Hiển thị thông báo đăng ký thành công
                                    MessageBox.Show("Đăng ký thành công!");
                                    // Ẩn form hiện tại
                                    this.Hide();

                                    // Mở form mới
                                    Login form2 = new Login(_form1);
                                    form2.ShowDialog();
                                }
                                else
                                {
                                    // Rollback giao dịch nếu có lỗi khi thêm vào bảng login
                                    transaction.Rollback();
                                    MessageBox.Show("Đăng ký không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                                }
                            }
                            else
                            {
                                // Rollback giao dịch nếu có lỗi khi thêm vào bảng register
                                transaction.Rollback();
                                MessageBox.Show("Đăng ký không thành công!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            }
                        }
                        else
                        {
                            MessageBox.Show("Tên người dùng không được chứa ký tự đặc biệt!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    catch (Exception ex)
                    {
                        // Rollback giao dịch nếu có lỗi xảy ra
                        transaction.Rollback();
                        MessageBox.Show("Đăng ký không thành công! " + ex.Message, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Chưa kết nối tới CSDL", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void guna2ControlBox1_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {
            this.Hide();
            Login f = new Login(_form1);
            f.ShowDialog();
            
        }
    }
}
