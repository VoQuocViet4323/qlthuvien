using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyThuVien
{
    public partial class UpdateTTNV : Form
    {
        public UpdateTTNV()
        {
            InitializeComponent();
            LoadData();
            UpdateEmployeeCount();
        }
        private void UpdateEmployeeCount()
        {
            int employeeCount = dgvNhanVien.Rows.Count - 1; // Trừ đi 1 để loại bỏ dòng header
            lblDemNhanVien.Text = "Tổng số nhân viên: " + employeeCount.ToString();
        }

        private void label5_Click(object sender, EventArgs e)
        {

        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                // lấy chuỗi kết nối từ cấu hình của ứng dụng
                string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "INSERT INTO nhanvien(HoTen, NgaySinh, GioiTinh, DiaChi, DienThoai) VALUES (@hoten, @ngaysinh, @gioitinh, @diachi, @dienthoai)";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@hoten", txtHoTen.Text);
                    command.Parameters.AddWithValue("@ngaysinh", dateNhanVien.Value); // Lấy giá trị từ DateTimePicker
                    command.Parameters.AddWithValue("@diachi", txtAddress.Text);
                    command.Parameters.AddWithValue("@dienthoai", txtDienThoai.Text);

                    // Xử lý giới tính
                    string gioiTinh = "";
                    if (selectGender.SelectedItem != null)
                    {
                        gioiTinh = selectGender.SelectedItem.ToString();
                        command.Parameters.AddWithValue("@gioitinh", gioiTinh);
                    }
                    else
                    {
                        MessageBox.Show("Vui lòng chọn giới tính!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return; // Dừng hàm nếu không có giới tính được chọn
                    }

                    connection.Open();                                                
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        // Kiểm tra xem các trường thông tin bắt buộc đã được nhập hay không
                        if (string.IsNullOrEmpty(txtHoTen.Text) || string.IsNullOrEmpty(txtAddress.Text) || string.IsNullOrEmpty(txtDienThoai.Text))
                        {
                            MessageBox.Show("Vui lòng điền đầy đủ thông tin bắt buộc (Họ tên, Địa chỉ, Điện thoại)!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            return; // Dừng hàm nếu có trường thông tin bắt buộc trống
                        }

                        MessageBox.Show("Thêm thông tin nhân viên thành công!", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        // Load lại dữ liệu vào DataGridView
                        DataTable dt = new DataTable();
                        string selectQuery = "SELECT * FROM nhanvien"; // Lấy tất cả cán bộ từ bảng nhanvien
                        SqlDataAdapter adapter = new SqlDataAdapter(selectQuery, connection);
                        adapter.Fill(dt);
                        dgvNhanVien.DataSource = dt;
                    }
                    else
                    {
                        MessageBox.Show("Thêm thông tin nhân viên không thành công! Vui lòng thử lại", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                UpdateEmployeeCount();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Chưa kết nối tới CSDL: " + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }


        private void dateNhanVien_ValueChanged(object sender, EventArgs e)
        {

        }

        private void selectGender_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        // Phương thức để tải lại dữ liệu từ cơ sở dữ liệu vào DataGridView
        private void LoadData()
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "SELECT * FROM nhanvien";
                    SqlDataAdapter adapter = new SqlDataAdapter(query, connection);
                    DataTable dt = new DataTable();
                    // Sử dụng phương thức Fill của SqlDataAdapter để điền dữ liệu từ cơ sở dữ liệu vào DataTable
                    adapter.Fill(dt);
                    dgvNhanVien.DataSource = dt;
                }
                UpdateEmployeeCount();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi khi tải dữ liệu: " + ex.Message, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                // Kiểm tra xem có dòng nào được chọn trong DataGridView không
                if (dgvNhanVien.SelectedRows.Count > 0)
                {
                    // Lấy giá trị của cột MaNhanVien từ dòng được chọn
                    string maNhanVien = dgvNhanVien.SelectedRows[0].Cells["MaNhanVien"].Value.ToString();

                    string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        string query = "DELETE FROM nhanvien WHERE MaNhanVien = @manhanvien";
                        SqlCommand cmd = new SqlCommand(query, connection);
                        cmd.Parameters.AddWithValue("@manhanvien", maNhanVien);

                        connection.Open(); // Mở kết nối trước khi thực thi truy vấn

                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            MessageBox.Show("Xóa nhân viên thành công!");
                            // Cập nhật lại danh sách nhân viên
                            LoadData();
                        }
                        else
                        {
                            MessageBox.Show("Không tìm thấy nhân viên có mã như vậy.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                    UpdateEmployeeCount();
                }
                else
                {
                    MessageBox.Show("Vui lòng chọn nhân viên cần xóa từ danh sách.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi khi xóa nhân viên: " + ex.Message, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void lblDemNhanVien_Click(object sender, EventArgs e)
        {
            //// Đếm số lượng nhân viên
            //int soLuongNhanVien = dgvNhanVien.Rows.Count - 1; // Trừ đi 1 để loại bỏ dòng header

            //// Hiển thị kết quả trên Label
            //lblDemNhanVien.Text = "Tổng số nhân viên: " + soLuongNhanVien.ToString();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            LoadData();
        }

        // Sự kiện Click của nút btnEdit
        private void btnEdit_Click(object sender, EventArgs e)
        {
            try
            {
                // Kiểm tra xem có dòng nào được chọn trong DataGridView không
                if (dgvNhanVien.SelectedRows.Count > 0)
                {
                    // Lấy mã nhân viên từ ô MaNhanVien của hàng được chọn
                    string maNhanVien = dgvNhanVien.SelectedRows[0].Cells["MaNhanVien"].Value.ToString();
                    // Thực hiện câu lệnh SQL UPDATE để cập nhật thông tin nhân viên vào cơ sở dữ liệu
                    string query = "UPDATE nhanvien SET HoTen = @hoten, NgaySinh = @ngaysinh, GioiTinh = @gioitinh, DiaChi = @diachi, DienThoai = @dienthoai WHERE MaNhanVien = @manhanvien";
                    using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Thêm các tham số vào câu lệnh SQL
                        command.Parameters.AddWithValue("@hoten", txtHoTen.Text);
                        command.Parameters.AddWithValue("@ngaysinh", dateNhanVien.Value);
                        command.Parameters.AddWithValue("@gioitinh", selectGender.SelectedItem);
                        command.Parameters.AddWithValue("@diachi", txtAddress.Text);
                        command.Parameters.AddWithValue("@dienthoai", txtDienThoai.Text);
                        command.Parameters.AddWithValue("@manhanvien", maNhanVien);

                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            MessageBox.Show("Cập nhật thông tin nhân viên thành công!", "Success", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            // Load lại dữ liệu vào DataGridView sau khi cập nhật
                            LoadData();
                        }
                        else
                        {
                            MessageBox.Show("Không tìm thấy nhân viên có mã như vậy.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        }
                    }
                }
                else
                {
                    MessageBox.Show("Vui lòng chọn nhân viên cần sửa từ danh sách.", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Lỗi khi sửa nhân viên: " + ex.Message, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }


        // Hàm để cho phép hoặc không cho phép chỉnh sửa thông tin trên bảng form
        private void EnableEditingControls(bool enable)
        {
            txtHoTen.Enabled = enable;
            dateNhanVien.Enabled = enable;
            selectGender.Enabled = enable;
            txtAddress.Enabled = enable;
            txtDienThoai.Enabled = enable;
        }

        private void UpdateTTNV_Load(object sender, EventArgs e)
        {

        }

        private void dgvNhanVien_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            // Kiểm tra nếu chỉ số hàng (row index) hợp lệ và không phải là hàng tiêu đề
            if (e.RowIndex >= 0 && e.RowIndex < dgvNhanVien.Rows.Count - 1)
            {
                DataGridViewRow selectedRow = dgvNhanVien.Rows[e.RowIndex];

                // Lấy thông tin của nhân viên từ các ô trong hàng được chọn
                string ma = selectedRow.Cells["MaNhanVien"].Value.ToString();
                string ten = selectedRow.Cells["HoTen"].Value.ToString();
                string date = selectedRow.Cells["NgaySinh"].Value.ToString();
                string gt = selectedRow.Cells["GioiTinh"].Value.ToString();
                string dc = selectedRow.Cells["DiaChi"].Value.ToString();
                string dt = selectedRow.Cells["DienThoai"].Value.ToString();

                // Hiển thị thông tin vào các ô TextBox tương ứng
                txtMaNhanVien.Text = ma;
                txtHoTen.Text = ten;
                dateNhanVien.Text = date;
                selectGender.Text = gt;
                txtAddress.Text = dc;
                txtDienThoai.Text = dt;
            }
        }
    }
}
