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
using System.Windows.Forms.DataVisualization.Charting;

namespace QuanLyThuVien
{
    public partial class BaoCaoThongKe : Form
    {
        public BaoCaoThongKe()
        {
            InitializeComponent();
            LoadChartData();
        }
        private string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        private void LoadChartData()
        {
            string query = @"
                            SELECT DISTINCT TOP 5 MASACH, 
                            ((COUNT(MASACH) OVER (PARTITION BY MASACH) * 100) / COUNT(MASACH) OVER ()) AS PHANTRAM
                            FROM PHIEUMUON";
            //Tính phần trăm của số lần xuất hiện của mỗi giá trị trong cột MASACH so với tổng số lần xuất hiện của tất cả các giá trị trong cột MASACH

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                string masach = reader["MASACH"].ToString();
                                int phantram = int.Parse(reader["PHANTRAM"].ToString());
                                // Thêm dữ liệu vào Series
                                this.chart1.Series["Số lượng sách được mượn"].Points.AddXY(masach, phantram);
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error: " + ex.Message);
                }
            }
        }

        private void chart1_Click(object sender, EventArgs e)
        {

        }
    }
}
