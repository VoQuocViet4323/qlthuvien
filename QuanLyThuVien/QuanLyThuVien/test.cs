using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyThuVien
{
    public partial class test : Form
    {
        public test()
        {
            InitializeComponent();
        }
        private bool isUpdatingDate = false;
        private void ngaytra_ValueChanged(object sender, EventArgs e)
        {
            
        }

        private void ngaymuon_ValueChanged(object sender, EventArgs e)
        {
            if (isUpdatingDate)
                return;

            this.Invoke(new Action(() =>
            {
                try
                {
                    isUpdatingDate = true;

                    // Lấy giá trị ngày mượn và ngày trả
                    DateTime ngayMuon = ngaymuon.Value;
                    DateTime ngayTra = ngaytra.Value;

                    // Kiểm tra nếu ngày mượn lớn hơn ngày trả
                    if (ngayMuon > ngayTra)
                    {
                        MessageBox.Show("Ngày trả phải sau ngày mượn.", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        ngaymuon.Value = ngayTra;
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Có lỗi xảy ra: " + ex.Message, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally
                {
                    isUpdatingDate = false; // Đặt lại isUpdatingDate về false sau khi thay đổi giá trị
                    this.Activate(); // Đảm bảo form hiện tại được kích hoạt lại
                }
            }));
        }
    }
}
