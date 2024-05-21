namespace QuanLyThuVien
{
    partial class test
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
            this.ngaymuon = new Guna.UI2.WinForms.Guna2DateTimePicker();
            this.ngaytra = new Guna.UI2.WinForms.Guna2DateTimePicker();
            this.SuspendLayout();
            // 
            // ngaymuon
            // 
            this.ngaymuon.Checked = true;
            this.ngaymuon.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.ngaymuon.Format = System.Windows.Forms.DateTimePickerFormat.Long;
            this.ngaymuon.Location = new System.Drawing.Point(163, 72);
            this.ngaymuon.MaxDate = new System.DateTime(9998, 12, 31, 0, 0, 0, 0);
            this.ngaymuon.MinDate = new System.DateTime(1753, 1, 1, 0, 0, 0, 0);
            this.ngaymuon.Name = "ngaymuon";
            this.ngaymuon.Size = new System.Drawing.Size(200, 36);
            this.ngaymuon.TabIndex = 0;
            this.ngaymuon.Value = new System.DateTime(2024, 5, 21, 23, 46, 43, 543);
            this.ngaymuon.ValueChanged += new System.EventHandler(this.ngaymuon_ValueChanged);
            // 
            // ngaytra
            // 
            this.ngaytra.Checked = true;
            this.ngaytra.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.ngaytra.Format = System.Windows.Forms.DateTimePickerFormat.Long;
            this.ngaytra.Location = new System.Drawing.Point(163, 127);
            this.ngaytra.MaxDate = new System.DateTime(9998, 12, 31, 0, 0, 0, 0);
            this.ngaytra.MinDate = new System.DateTime(1753, 1, 1, 0, 0, 0, 0);
            this.ngaytra.Name = "ngaytra";
            this.ngaytra.Size = new System.Drawing.Size(200, 36);
            this.ngaytra.TabIndex = 1;
            this.ngaytra.Value = new System.DateTime(2024, 5, 21, 23, 46, 50, 925);
            this.ngaytra.ValueChanged += new System.EventHandler(this.ngaytra_ValueChanged);
            // 
            // test
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.ngaytra);
            this.Controls.Add(this.ngaymuon);
            this.Name = "test";
            this.Text = "test";
            this.ResumeLayout(false);

        }

        #endregion

        private Guna.UI2.WinForms.Guna2DateTimePicker ngaymuon;
        private Guna.UI2.WinForms.Guna2DateTimePicker ngaytra;
    }
}