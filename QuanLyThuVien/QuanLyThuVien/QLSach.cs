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
using System.Web.UI.WebControls;
using System.Windows.Forms;
using static System.Net.Mime.MediaTypeNames;

namespace QuanLyThuVien
{
    public partial class QLSach : Form
    {
        public QLSach()
        {
            InitializeComponent();
        }

        private void tabPage2_Click(object sender, EventArgs e)
        {

        }

        private void tabPage1_Click(object sender, EventArgs e)
        {

        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox5_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        private void btnShow_Click(object sender, EventArgs e)
        {
            try
            {
                // Tạo kết nối SQL
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Mở kết nối
                    connection.Open();

                    // Tạo câu truy vấn SQL để lấy dữ liệu từ bảng
                    string query = "SELECT * FROM QUANLYSACH";

                    // Tạo đối tượng SqlDataAdapter để lấy dữ liệu từ câu truy vấn
                    using (SqlDataAdapter adapter = new SqlDataAdapter(query, connection))
                    {
                        // Tạo đối tượng DataTable để lưu trữ dữ liệu từ bảng
                        DataTable dataTable = new DataTable();

                        // Đổ dữ liệu từ SqlDataAdapter vào DataTable
                        adapter.Fill(dataTable);

                        // Gán DataTable làm nguồn dữ liệu cho DataGridView
                        tableTTSach.DataSource = dataTable;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }

        private void show()
        {
            try
            {
                // Tạo kết nối SQL
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Mở kết nối
                    connection.Open();

                    // Tạo câu truy vấn SQL để lấy dữ liệu từ bảng
                    string query = "SELECT * FROM QUANLYSACH";

                    // Tạo đối tượng SqlDataAdapter để lấy dữ liệu từ câu truy vấn
                    using (SqlDataAdapter adapter = new SqlDataAdapter(query, connection))
                    {
                        // Tạo đối tượng DataTable để lưu trữ dữ liệu từ bảng
                        DataTable dataTable = new DataTable();

                        // Đổ dữ liệu từ SqlDataAdapter vào DataTable
                        adapter.Fill(dataTable);

                        // Gán DataTable làm nguồn dữ liệu cho DataGridView
                        tableTTSach.DataSource = dataTable;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }
        private void QLSach_Load(object sender, EventArgs e)
        {

        }

        private void tableTTSach_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnDel_Click(object sender, EventArgs e)
        {
            try
            {
                // Kiểm tra xem có hàng nào được chọn hay không
                if (tableTTSach.SelectedRows.Count == 0)
                {
                    MessageBox.Show("Vui lòng chọn hàng cần xóa!");
                    return;
                }

                // Lấy mã phiếu mượn của hàng được chọn
                string maSach = tableTTSach.SelectedRows[0].Cells["MASACH"].Value.ToString();

                string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Mở kết nối
                    connection.Open();

                    // Xóa dữ liệu từ cơ sở dữ liệu dựa trên mã phiếu mượn đã chọn
                    string delQuery = "DELETE FROM QUANLYSACH WHERE MASACH = @maSach";
                    using (SqlCommand command = new SqlCommand(delQuery, connection))
                    {
                        command.Parameters.AddWithValue("@maSach", maSach);
                        command.ExecuteNonQuery();
                    }
                }

                // Cập nhật lại DataGridView sau khi xóa
                show();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi khi xóa dữ liệu: " + ex.Message);
            }
        }
        private void btnFix_Click(object sender, EventArgs e)
        {
            try
            {
                // Kiểm tra xem trường mã sách có đang được sửa không
                if (isMaSachEdited)
                {
                    MessageBox.Show("Không được phép thay đổi 'Mã sách' !");
                    return;
                }
                //kiểm tra các textbox đã nhập chưa!
                if (string.IsNullOrEmpty(txtMaSach.Text))
                {
                    MessageBox.Show("Vui lòng nhập Mã sách!");
                    return;
                }
                else if (string.IsNullOrEmpty(txtTenSach.Text))
                {
                    MessageBox.Show("Vui lòng nhập Tên sách!");
                    return;
                }
                else if (string.IsNullOrEmpty(txtLoaiSach.Text))
                {
                    MessageBox.Show("Vui lòng nhập Loại sách!");
                    return;
                }
                else if (string.IsNullOrEmpty(txtNXB.Text))
                {
                    MessageBox.Show("Vui lòng nhập Nhà xuất bản!");
                    return;
                }
                else if (string.IsNullOrEmpty(txtGia.Text))
                {
                    MessageBox.Show("Vui lòng nhập Giá sách!");
                    return;
                }
                else if (string.IsNullOrEmpty(txtTenTG.Text))
                {
                    MessageBox.Show("Vui lòng nhập Tên tác giả!");
                    return;
                }
                
                string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Mở kết nối
                    connection.Open();
                    // Thực hiện truy vấn UPDATE để cập nhật thông tin của phiếu mượn
                    string updateQuery = "UPDATE QUANLYSACH SET TENSACH = @tensach, LOAISACH = @loaisach, NXB = @nxb, GIA = @gia, TENTACGIA = @tentacgia WHERE MASACH = @masach";

                    using (SqlCommand command = new SqlCommand(updateQuery, connection))
                    {
                        command.Parameters.AddWithValue("@masach", txtMaSach.Text);
                        command.Parameters.AddWithValue("@tensach", txtTenSach.Text);
                        command.Parameters.AddWithValue("@loaisach", txtLoaiSach.Text);
                        command.Parameters.AddWithValue("@nxb", txtNXB.Text);
                        command.Parameters.AddWithValue("@gia", txtGia.Text);
                        command.Parameters.AddWithValue("@tentacgia", txtTenTG.Text);
                        // Thực hiện truy vấn UPDATE
                        command.ExecuteNonQuery();
                    }
                    // Sau khi cập nhật thành công, cập nhật lại hiển thị trong DataGridView
                    btnShow_Click(sender, e);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                //kiểm tra các textbox đã nhập chưa!
                if (string.IsNullOrEmpty(txtMaSach.Text))
                {
                    MessageBox.Show("Vui lòng nhập Mã sách!");
                    return;
                }
                else if (string.IsNullOrEmpty(txtTenSach.Text))
                {
                    MessageBox.Show("Vui lòng nhập Tên sách!");
                    return;
                }
                else if (string.IsNullOrEmpty(txtLoaiSach.Text))
                {
                    MessageBox.Show("Vui lòng nhập Loại sách!");
                    return;
                }
                else if (string.IsNullOrEmpty(txtNXB.Text))
                {
                    MessageBox.Show("Vui lòng nhập Nhà xuất bản!");
                    return;
                }
                else if (string.IsNullOrEmpty(txtGia.Text))
                {
                    MessageBox.Show("Vui lòng nhập Giá sách!");
                    return;
                }
                else if (string.IsNullOrEmpty(txtTenTG.Text))
                {
                    MessageBox.Show("Vui lòng nhập Tên tác giả!");
                    return;
                }
                string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    //mở kết nối
                    connection.Open();
                    // Kiểm tra xem mã sách đã tồn tại hay chưa
                    string checkQuery = "SELECT COUNT(*) FROM QUANLYSACH WHERE MASACH = @masach";
                    using (SqlCommand checkCommand = new SqlCommand(checkQuery, connection))
                    {
                        checkCommand.Parameters.AddWithValue("@masach", txtMaSach.Text);
                        int count = (int)checkCommand.ExecuteScalar();
                        if (count > 0)
                        {
                            MessageBox.Show("Mã sách đã tồn tại!");
                            return;
                        }
                    }
                    // Thêm dữ liệu vào cơ sở dữ liệu
                    string insertQuery = "INSERT INTO QUANLYSACH(MASACH, TENSACH, LOAISACH, NXB, GIA, TENTACGIA) VALUES (@masach, @tensach, @loaisach, @nxb, @gia, @tentacgia)";
                    using (SqlCommand command = new SqlCommand(insertQuery, connection))
                    {
                        command.Parameters.AddWithValue("@masach", txtMaSach.Text);
                        command.Parameters.AddWithValue("@tensach", txtTenSach.Text);
                        command.Parameters.AddWithValue("@loaisach", txtLoaiSach.Text);
                        command.Parameters.AddWithValue("@nxb", txtNXB.Text);
                        command.Parameters.AddWithValue("@gia", txtGia.Text);
                        command.Parameters.AddWithValue("@tentacgia", txtTenTG.Text);
                        // Thực hiện truy vấn UPDATE
                        command.ExecuteNonQuery();
                    }
                    show();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }
        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void tableTTSach_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                if (e.RowIndex >= 0 && e.RowIndex < tableTTSach.Rows.Count - 1)
                {
                    DataGridViewRow row = tableTTSach.Rows[e.RowIndex];

                    // Kiểm tra giá trị của từng ô trước khi chuyển đổi
                    string maSach = row.Cells["MASACH"].Value != DBNull.Value ? row.Cells["MASACH"].Value.ToString() : string.Empty;
                    string tenSach = row.Cells["TENSACH"].Value != DBNull.Value ? row.Cells["TENSACH"].Value.ToString() : string.Empty;
                    string loaiSach = row.Cells["LOAISACH"].Value != DBNull.Value ? row.Cells["LOAISACH"].Value.ToString() : string.Empty;
                    string nxb = row.Cells["NXB"].Value != DBNull.Value ? row.Cells["NXB"].Value.ToString() : string.Empty;
                    string gia = row.Cells["GIA"].Value != DBNull.Value ? row.Cells["GIA"].Value.ToString() : string.Empty;
                    string tenTG = row.Cells["TENTACGIA"].Value != DBNull.Value ? row.Cells["TENTACGIA"].Value.ToString() : string.Empty;

                    // Hiển thị giá trị của các ô trong các TextBox hoặc ComboBox tương ứng
                    txtMaSach.Text = maSach;
                    txtTenSach.Text = tenSach;
                    txtLoaiSach.Text = loaiSach;
                    txtNXB.Text = nxb;
                    txtGia.Text = gia;
                    txtTenTG.Text = tenTG;

                    //txtMaSach.Enabled = false;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi khi hiển thị thông tin hàng: " + ex.Message);
            }
        }

        private void guna2Button1_Click(object sender, EventArgs e)
        {
            txtMaSach.Text = "";
            txtTenSach.Text = "";
            txtLoaiSach.Text = "";
            txtNXB.Text = "";
            txtGia.Text = "";
            txtTenTG.Text = "";
        }
        private bool isMaSachEdited = false;
        private void txtMaSach_TextChanged(object sender, EventArgs e)
        {
            isMaSachEdited = true;
        }
    }
}
