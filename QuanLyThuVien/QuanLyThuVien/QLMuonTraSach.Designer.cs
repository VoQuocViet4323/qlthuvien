namespace QuanLyThuVien
{
    partial class QLMuonTraSach
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            this.tabControl = new System.Windows.Forms.TabControl();
            this.tabCreatePhieuMuon = new System.Windows.Forms.TabPage();
            this.tablePM = new Guna.UI2.WinForms.Guna2DataGridView();
            this.button1 = new System.Windows.Forms.Button();
            this.cbMaThuThu = new System.Windows.Forms.ComboBox();
            this.cbMaSach = new System.Windows.Forms.ComboBox();
            this.cbMaDocGia = new System.Windows.Forms.ComboBox();
            this.dateNgayTra = new Guna.UI2.WinForms.Guna2DateTimePicker();
            this.dateNgayMuon = new Guna.UI2.WinForms.Guna2DateTimePicker();
            this.label16 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.btnShow = new System.Windows.Forms.Button();
            this.btnExit = new System.Windows.Forms.Button();
            this.btnDel = new System.Windows.Forms.Button();
            this.btnFix = new System.Windows.Forms.Button();
            this.btnThem = new System.Windows.Forms.Button();
            this.txtMaPhieu = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.tabDeltail = new System.Windows.Forms.TabPage();
            this.luu = new System.Windows.Forms.Button();
            this.label13 = new System.Windows.Forms.Label();
            this.tablePT = new System.Windows.Forms.DataGridView();
            this.label12 = new System.Windows.Forms.Label();
            this.trasach = new System.Windows.Forms.Button();
            this.giahan = new System.Windows.Forms.Button();
            this.them = new System.Windows.Forms.Button();
            this.cbbMaSach = new System.Windows.Forms.ComboBox();
            this.cbbPM = new System.Windows.Forms.ComboBox();
            this.txtTinhTrang = new System.Windows.Forms.TextBox();
            this.dateTraSach = new System.Windows.Forms.DateTimePicker();
            this.dateMuonSach = new System.Windows.Forms.DateTimePicker();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.loginTableAdapter1 = new QuanLyThuVien.adminDataSetTableAdapters.loginTableAdapter();
            this.panel1 = new System.Windows.Forms.Panel();
            this.tabControl.SuspendLayout();
            this.tabCreatePhieuMuon.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tablePM)).BeginInit();
            this.tabDeltail.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tablePT)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl
            // 
            this.tabControl.Controls.Add(this.tabCreatePhieuMuon);
            this.tabControl.Controls.Add(this.tabDeltail);
            this.tabControl.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabControl.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tabControl.Location = new System.Drawing.Point(0, 73);
            this.tabControl.Name = "tabControl";
            this.tabControl.SelectedIndex = 0;
            this.tabControl.Size = new System.Drawing.Size(758, 505);
            this.tabControl.TabIndex = 0;
            // 
            // tabCreatePhieuMuon
            // 
            this.tabCreatePhieuMuon.Controls.Add(this.tablePM);
            this.tabCreatePhieuMuon.Controls.Add(this.button1);
            this.tabCreatePhieuMuon.Controls.Add(this.cbMaThuThu);
            this.tabCreatePhieuMuon.Controls.Add(this.cbMaSach);
            this.tabCreatePhieuMuon.Controls.Add(this.cbMaDocGia);
            this.tabCreatePhieuMuon.Controls.Add(this.dateNgayTra);
            this.tabCreatePhieuMuon.Controls.Add(this.dateNgayMuon);
            this.tabCreatePhieuMuon.Controls.Add(this.label16);
            this.tabCreatePhieuMuon.Controls.Add(this.label15);
            this.tabCreatePhieuMuon.Controls.Add(this.label14);
            this.tabCreatePhieuMuon.Controls.Add(this.btnShow);
            this.tabCreatePhieuMuon.Controls.Add(this.btnExit);
            this.tabCreatePhieuMuon.Controls.Add(this.btnDel);
            this.tabCreatePhieuMuon.Controls.Add(this.btnFix);
            this.tabCreatePhieuMuon.Controls.Add(this.btnThem);
            this.tabCreatePhieuMuon.Controls.Add(this.txtMaPhieu);
            this.tabCreatePhieuMuon.Controls.Add(this.label5);
            this.tabCreatePhieuMuon.Controls.Add(this.label4);
            this.tabCreatePhieuMuon.Controls.Add(this.label3);
            this.tabCreatePhieuMuon.Controls.Add(this.label2);
            this.tabCreatePhieuMuon.Location = new System.Drawing.Point(4, 29);
            this.tabCreatePhieuMuon.Name = "tabCreatePhieuMuon";
            this.tabCreatePhieuMuon.Padding = new System.Windows.Forms.Padding(3);
            this.tabCreatePhieuMuon.Size = new System.Drawing.Size(750, 472);
            this.tabCreatePhieuMuon.TabIndex = 0;
            this.tabCreatePhieuMuon.Text = "Lập phiếu mượn";
            this.tabCreatePhieuMuon.UseVisualStyleBackColor = true;
            this.tabCreatePhieuMuon.Click += new System.EventHandler(this.tabPage1_Click);
            // 
            // tablePM
            // 
            dataGridViewCellStyle1.BackColor = System.Drawing.Color.White;
            this.tablePM.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.tablePM.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.tablePM.ColumnHeadersHeight = 30;
            this.tablePM.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.EnableResizing;
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = System.Drawing.Color.White;
            dataGridViewCellStyle3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            dataGridViewCellStyle3.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            dataGridViewCellStyle3.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            dataGridViewCellStyle3.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.tablePM.DefaultCellStyle = dataGridViewCellStyle3;
            this.tablePM.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.tablePM.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            this.tablePM.Location = new System.Drawing.Point(3, 248);
            this.tablePM.Name = "tablePM";
            this.tablePM.ReadOnly = true;
            this.tablePM.RowHeadersVisible = false;
            this.tablePM.Size = new System.Drawing.Size(744, 221);
            this.tablePM.TabIndex = 64;
            this.tablePM.ThemeStyle.AlternatingRowsStyle.BackColor = System.Drawing.Color.White;
            this.tablePM.ThemeStyle.AlternatingRowsStyle.Font = null;
            this.tablePM.ThemeStyle.AlternatingRowsStyle.ForeColor = System.Drawing.Color.Empty;
            this.tablePM.ThemeStyle.AlternatingRowsStyle.SelectionBackColor = System.Drawing.Color.Empty;
            this.tablePM.ThemeStyle.AlternatingRowsStyle.SelectionForeColor = System.Drawing.Color.Empty;
            this.tablePM.ThemeStyle.BackColor = System.Drawing.Color.White;
            this.tablePM.ThemeStyle.GridColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            this.tablePM.ThemeStyle.HeaderStyle.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(100)))), ((int)(((byte)(88)))), ((int)(((byte)(255)))));
            this.tablePM.ThemeStyle.HeaderStyle.BorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            this.tablePM.ThemeStyle.HeaderStyle.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tablePM.ThemeStyle.HeaderStyle.ForeColor = System.Drawing.Color.White;
            this.tablePM.ThemeStyle.HeaderStyle.HeaightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.EnableResizing;
            this.tablePM.ThemeStyle.HeaderStyle.Height = 30;
            this.tablePM.ThemeStyle.ReadOnly = true;
            this.tablePM.ThemeStyle.RowsStyle.BackColor = System.Drawing.Color.White;
            this.tablePM.ThemeStyle.RowsStyle.BorderStyle = System.Windows.Forms.DataGridViewCellBorderStyle.SingleHorizontal;
            this.tablePM.ThemeStyle.RowsStyle.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tablePM.ThemeStyle.RowsStyle.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            this.tablePM.ThemeStyle.RowsStyle.Height = 22;
            this.tablePM.ThemeStyle.RowsStyle.SelectionBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(231)))), ((int)(((byte)(229)))), ((int)(((byte)(255)))));
            this.tablePM.ThemeStyle.RowsStyle.SelectionForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(71)))), ((int)(((byte)(69)))), ((int)(((byte)(94)))));
            this.tablePM.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.tablePM_CellClick);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(561, 141);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 29);
            this.button1.TabIndex = 63;
            this.button1.Text = "Clear";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // cbMaThuThu
            // 
            this.cbMaThuThu.FormattingEnabled = true;
            this.cbMaThuThu.Location = new System.Drawing.Point(226, 146);
            this.cbMaThuThu.Name = "cbMaThuThu";
            this.cbMaThuThu.Size = new System.Drawing.Size(212, 28);
            this.cbMaThuThu.TabIndex = 62;
            // 
            // cbMaSach
            // 
            this.cbMaSach.FormattingEnabled = true;
            this.cbMaSach.Location = new System.Drawing.Point(226, 115);
            this.cbMaSach.Name = "cbMaSach";
            this.cbMaSach.Size = new System.Drawing.Size(212, 28);
            this.cbMaSach.TabIndex = 61;
            // 
            // cbMaDocGia
            // 
            this.cbMaDocGia.FormattingEnabled = true;
            this.cbMaDocGia.Location = new System.Drawing.Point(226, 84);
            this.cbMaDocGia.Name = "cbMaDocGia";
            this.cbMaDocGia.Size = new System.Drawing.Size(212, 28);
            this.cbMaDocGia.TabIndex = 2;
            this.cbMaDocGia.SelectedIndexChanged += new System.EventHandler(this.cbMaDocGia_SelectedIndexChanged);
            // 
            // dateNgayTra
            // 
            this.dateNgayTra.Checked = true;
            this.dateNgayTra.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.dateNgayTra.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dateNgayTra.Format = System.Windows.Forms.DateTimePickerFormat.Long;
            this.dateNgayTra.Location = new System.Drawing.Point(226, 222);
            this.dateNgayTra.MaxDate = new System.DateTime(9998, 12, 31, 0, 0, 0, 0);
            this.dateNgayTra.MinDate = new System.DateTime(1753, 1, 1, 0, 0, 0, 0);
            this.dateNgayTra.Name = "dateNgayTra";
            this.dateNgayTra.Size = new System.Drawing.Size(212, 20);
            this.dateNgayTra.TabIndex = 7;
            this.dateNgayTra.Value = new System.DateTime(2024, 5, 6, 23, 49, 54, 633);
            // 
            // dateNgayMuon
            // 
            this.dateNgayMuon.Checked = true;
            this.dateNgayMuon.FillColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.dateNgayMuon.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dateNgayMuon.Format = System.Windows.Forms.DateTimePickerFormat.Long;
            this.dateNgayMuon.Location = new System.Drawing.Point(226, 187);
            this.dateNgayMuon.MaxDate = new System.DateTime(9998, 12, 31, 0, 0, 0, 0);
            this.dateNgayMuon.MinDate = new System.DateTime(1753, 1, 1, 0, 0, 0, 0);
            this.dateNgayMuon.Name = "dateNgayMuon";
            this.dateNgayMuon.Size = new System.Drawing.Size(212, 20);
            this.dateNgayMuon.TabIndex = 6;
            this.dateNgayMuon.Value = new System.DateTime(2024, 5, 6, 23, 49, 54, 633);
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label16.Location = new System.Drawing.Point(94, 222);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(111, 20);
            this.label16.TabIndex = 60;
            this.label16.Text = "Ngày hẹn trả";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label15.Location = new System.Drawing.Point(107, 187);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(98, 20);
            this.label15.TabIndex = 59;
            this.label15.Text = "Ngày mượn";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label14.Location = new System.Drawing.Point(112, 148);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(95, 20);
            this.label14.TabIndex = 56;
            this.label14.Text = "Mã thủ thư";
            // 
            // btnShow
            // 
            this.btnShow.Location = new System.Drawing.Point(561, 49);
            this.btnShow.Name = "btnShow";
            this.btnShow.Size = new System.Drawing.Size(75, 29);
            this.btnShow.TabIndex = 11;
            this.btnShow.Text = "Hiển thị";
            this.btnShow.UseVisualStyleBackColor = true;
            this.btnShow.Click += new System.EventHandler(this.btnShow_Click);
            // 
            // btnExit
            // 
            this.btnExit.Location = new System.Drawing.Point(561, 94);
            this.btnExit.Name = "btnExit";
            this.btnExit.Size = new System.Drawing.Size(75, 29);
            this.btnExit.TabIndex = 13;
            this.btnExit.Text = "Thoát";
            this.btnExit.UseVisualStyleBackColor = true;
            this.btnExit.Click += new System.EventHandler(this.btnExit_Click);
            // 
            // btnDel
            // 
            this.btnDel.Location = new System.Drawing.Point(461, 141);
            this.btnDel.Name = "btnDel";
            this.btnDel.Size = new System.Drawing.Size(75, 29);
            this.btnDel.TabIndex = 12;
            this.btnDel.Text = "Xóa";
            this.btnDel.UseVisualStyleBackColor = true;
            this.btnDel.Click += new System.EventHandler(this.btnDel_Click);
            // 
            // btnFix
            // 
            this.btnFix.Location = new System.Drawing.Point(461, 94);
            this.btnFix.Name = "btnFix";
            this.btnFix.Size = new System.Drawing.Size(75, 29);
            this.btnFix.TabIndex = 10;
            this.btnFix.Text = "Sửa";
            this.btnFix.UseVisualStyleBackColor = true;
            this.btnFix.Click += new System.EventHandler(this.btnFix_Click);
            // 
            // btnThem
            // 
            this.btnThem.Location = new System.Drawing.Point(461, 49);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(75, 29);
            this.btnThem.TabIndex = 8;
            this.btnThem.Text = "Thêm";
            this.btnThem.UseVisualStyleBackColor = true;
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // txtMaPhieu
            // 
            this.txtMaPhieu.Location = new System.Drawing.Point(226, 47);
            this.txtMaPhieu.Name = "txtMaPhieu";
            this.txtMaPhieu.Size = new System.Drawing.Size(212, 26);
            this.txtMaPhieu.TabIndex = 2;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(129, 115);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(76, 20);
            this.label5.TabIndex = 3;
            this.label5.Text = "Mã sách";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(111, 82);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(96, 20);
            this.label4.TabIndex = 2;
            this.label4.Text = "Mã độc giả";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(125, 49);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(82, 20);
            this.label3.TabIndex = 1;
            this.label3.Text = "Mã phiếu";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.Red;
            this.label2.Location = new System.Drawing.Point(280, 11);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(208, 25);
            this.label2.TabIndex = 0;
            this.label2.Text = "TẠO PHIẾU MƯỢN";
            // 
            // tabDeltail
            // 
            this.tabDeltail.Controls.Add(this.luu);
            this.tabDeltail.Controls.Add(this.label13);
            this.tabDeltail.Controls.Add(this.tablePT);
            this.tabDeltail.Controls.Add(this.label12);
            this.tabDeltail.Controls.Add(this.trasach);
            this.tabDeltail.Controls.Add(this.giahan);
            this.tabDeltail.Controls.Add(this.them);
            this.tabDeltail.Controls.Add(this.cbbMaSach);
            this.tabDeltail.Controls.Add(this.cbbPM);
            this.tabDeltail.Controls.Add(this.txtTinhTrang);
            this.tabDeltail.Controls.Add(this.dateTraSach);
            this.tabDeltail.Controls.Add(this.dateMuonSach);
            this.tabDeltail.Controls.Add(this.label11);
            this.tabDeltail.Controls.Add(this.label10);
            this.tabDeltail.Controls.Add(this.label9);
            this.tabDeltail.Controls.Add(this.label8);
            this.tabDeltail.Controls.Add(this.label7);
            this.tabDeltail.Controls.Add(this.label6);
            this.tabDeltail.Location = new System.Drawing.Point(4, 29);
            this.tabDeltail.Name = "tabDeltail";
            this.tabDeltail.Padding = new System.Windows.Forms.Padding(3);
            this.tabDeltail.Size = new System.Drawing.Size(750, 472);
            this.tabDeltail.TabIndex = 1;
            this.tabDeltail.Text = "Chi tiết mượn trả";
            this.tabDeltail.UseVisualStyleBackColor = true;
            // 
            // luu
            // 
            this.luu.Enabled = false;
            this.luu.Location = new System.Drawing.Point(533, 210);
            this.luu.Name = "luu";
            this.luu.Size = new System.Drawing.Size(75, 31);
            this.luu.TabIndex = 25;
            this.luu.Text = "Lưu";
            this.luu.UseVisualStyleBackColor = true;
            this.luu.Click += new System.EventHandler(this.button2_Click);
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.ForeColor = System.Drawing.Color.Red;
            this.label13.Location = new System.Drawing.Point(406, 249);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(65, 20);
            this.label13.TabIndex = 26;
            this.label13.Text = "soluong";
            this.label13.Click += new System.EventHandler(this.label13_Click);
            // 
            // tablePT
            // 
            this.tablePT.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.tablePT.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.tablePT.Location = new System.Drawing.Point(3, 288);
            this.tablePT.Name = "tablePT";
            this.tablePT.RowHeadersWidth = 51;
            this.tablePT.Size = new System.Drawing.Size(744, 181);
            this.tablePT.TabIndex = 26;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(109, 249);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(290, 20);
            this.label12.TabIndex = 24;
            this.label12.Text = "Tổng số quyển sách độc giả đang mượn";
            this.label12.Click += new System.EventHandler(this.label12_Click);
            // 
            // trasach
            // 
            this.trasach.Location = new System.Drawing.Point(410, 210);
            this.trasach.Name = "trasach";
            this.trasach.Size = new System.Drawing.Size(87, 31);
            this.trasach.TabIndex = 24;
            this.trasach.Text = "Trả sách";
            this.trasach.UseVisualStyleBackColor = true;
            this.trasach.Click += new System.EventHandler(this.trasach_Click);
            // 
            // giahan
            // 
            this.giahan.Location = new System.Drawing.Point(288, 210);
            this.giahan.Name = "giahan";
            this.giahan.Size = new System.Drawing.Size(87, 31);
            this.giahan.TabIndex = 23;
            this.giahan.Text = "Gia hạn";
            this.giahan.UseVisualStyleBackColor = true;
            this.giahan.Click += new System.EventHandler(this.giahan_Click);
            // 
            // them
            // 
            this.them.Location = new System.Drawing.Point(168, 210);
            this.them.Name = "them";
            this.them.Size = new System.Drawing.Size(87, 31);
            this.them.TabIndex = 22;
            this.them.Text = "Thêm";
            this.them.UseVisualStyleBackColor = true;
            this.them.Click += new System.EventHandler(this.button1_Click);
            // 
            // cbbMaSach
            // 
            this.cbbMaSach.FormattingEnabled = true;
            this.cbbMaSach.Location = new System.Drawing.Point(533, 84);
            this.cbbMaSach.Name = "cbbMaSach";
            this.cbbMaSach.Size = new System.Drawing.Size(116, 28);
            this.cbbMaSach.TabIndex = 18;
            // 
            // cbbPM
            // 
            this.cbbPM.FormattingEnabled = true;
            this.cbbPM.Location = new System.Drawing.Point(242, 85);
            this.cbbPM.Name = "cbbPM";
            this.cbbPM.Size = new System.Drawing.Size(116, 28);
            this.cbbPM.TabIndex = 17;
            // 
            // txtTinhTrang
            // 
            this.txtTinhTrang.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTinhTrang.Location = new System.Drawing.Point(242, 165);
            this.txtTinhTrang.MaxLength = 2147483647;
            this.txtTinhTrang.Multiline = true;
            this.txtTinhTrang.Name = "txtTinhTrang";
            this.txtTinhTrang.Size = new System.Drawing.Size(378, 34);
            this.txtTinhTrang.TabIndex = 21;
            this.txtTinhTrang.TextChanged += new System.EventHandler(this.textBox2_TextChanged);
            // 
            // dateTraSach
            // 
            this.dateTraSach.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTraSach.Location = new System.Drawing.Point(533, 124);
            this.dateTraSach.Name = "dateTraSach";
            this.dateTraSach.Size = new System.Drawing.Size(116, 26);
            this.dateTraSach.TabIndex = 20;
            this.dateTraSach.Value = new System.DateTime(2024, 12, 31, 13, 7, 0, 0);
            this.dateTraSach.ValueChanged += new System.EventHandler(this.dateTimePicker2_ValueChanged);
            // 
            // dateMuonSach
            // 
            this.dateMuonSach.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateMuonSach.Location = new System.Drawing.Point(242, 125);
            this.dateMuonSach.Name = "dateMuonSach";
            this.dateMuonSach.Size = new System.Drawing.Size(116, 26);
            this.dateMuonSach.TabIndex = 19;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(406, 124);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(111, 20);
            this.label11.TabIndex = 5;
            this.label11.Text = "Ngày hẹn trả";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(406, 85);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(76, 20);
            this.label10.TabIndex = 4;
            this.label10.Text = "Mã sách";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(84, 165);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(133, 20);
            this.label9.TabIndex = 3;
            this.label9.Text = "Tình trạng sách";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(84, 125);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(98, 20);
            this.label8.TabIndex = 2;
            this.label8.Text = "Ngày mượn";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(84, 85);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(147, 20);
            this.label7.TabIndex = 1;
            this.label7.Text = "Ngày phiếu mượn";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.Color.Red;
            this.label6.Location = new System.Drawing.Point(246, 23);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(317, 25);
            this.label6.TabIndex = 0;
            this.label6.Text = "CHI TIẾT MƯỢN - TRẢ SÁCH";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(178, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(389, 31);
            this.label1.TabIndex = 1;
            this.label1.Text = "QUẢN LÝ MƯỢN TRẢ SÁCH";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // loginTableAdapter1
            // 
            this.loginTableAdapter1.ClearBeforeFill = true;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(758, 73);
            this.panel1.TabIndex = 2;
            // 
            // QLMuonTraSach
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(758, 578);
            this.Controls.Add(this.tabControl);
            this.Controls.Add(this.panel1);
            this.Name = "QLMuonTraSach";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Mượn trả sách";
            this.Load += new System.EventHandler(this.Form9_Load);
            this.tabControl.ResumeLayout(false);
            this.tabCreatePhieuMuon.ResumeLayout(false);
            this.tabCreatePhieuMuon.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tablePM)).EndInit();
            this.tabDeltail.ResumeLayout(false);
            this.tabDeltail.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tablePT)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl;
        private System.Windows.Forms.TabPage tabCreatePhieuMuon;
        private System.Windows.Forms.TabPage tabDeltail;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnExit;
        private System.Windows.Forms.Button btnDel;
        private System.Windows.Forms.Button btnFix;
        private System.Windows.Forms.Button btnThem;
        private System.Windows.Forms.TextBox txtMaPhieu;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DateTimePicker dateMuonSach;
        private System.Windows.Forms.DateTimePicker dateTraSach;
        private System.Windows.Forms.TextBox txtTinhTrang;
        private System.Windows.Forms.Button trasach;
        private System.Windows.Forms.Button giahan;
        private System.Windows.Forms.Button them;
        private System.Windows.Forms.ComboBox cbbMaSach;
        private System.Windows.Forms.ComboBox cbbPM;
        private System.Windows.Forms.DataGridView tablePT;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Button luu;
        private System.Windows.Forms.Button btnShow;
        private Guna.UI2.WinForms.Guna2DateTimePicker dateNgayTra;
        private Guna.UI2.WinForms.Guna2DateTimePicker dateNgayMuon;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Label label14;
        private adminDataSetTableAdapters.loginTableAdapter loginTableAdapter1;
        private System.Windows.Forms.ComboBox cbMaDocGia;
        private System.Windows.Forms.ComboBox cbMaThuThu;
        private System.Windows.Forms.ComboBox cbMaSach;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button button1;
        private Guna.UI2.WinForms.Guna2DataGridView tablePM;
    }
}