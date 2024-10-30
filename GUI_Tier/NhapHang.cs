using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BUS;
using DTO;
namespace GUI_Tier
{
    public partial class NhapHang : Form
    {
        public NhapHang()
        {
            InitializeComponent();
        }
        //tạo biến kiểm tra dang nhap va dang xuat
        public string str;
        public string STR
        {
            get { return str; }
            set { str = value; }
        }
        private bool RB(string str)
        {
            if (str == "")
                return false;
            return true;
        }
        //biến tính tổng giá trị của 1 phiếu nhập
        double thanhtien = 0;
        //biến dùng để tạo 1 phiếu nhập mới
        bool check = true;
        private void button2_Click_2(object sender, EventArgs e)
        {
            try
            {
                check = true;
                txtMaPN.Clear();
                txtBHSP.Clear();
                txtDVT.Clear();
                txtEmailNCC.Clear();
                txtGiasp.Clear();
                txtGSP.Clear();
                txtHSX.Clear();
                txtMaLoaisp.Clear();
                txtMaNCC.Clear();
                txtMasp.Clear();
                txtMSP.Clear();
                txtSDTNCC.Clear();
                txtSL.Clear();
                txtTenLoaiSP.Clear();
                txtTenNCC.Clear();
                txtTenSP.Clear();
                txtTGBH.Clear();
                txtTongthanhtoan.Clear();
                txtTSP.Clear();
                thanhtien = 0;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnThemsp_Click(object sender, EventArgs e)
        {
            try
            {
                if (check)
                {
                    PhieuNhapDTO pn = new PhieuNhapDTO();
                    if (checkBox1.Checked)
                    {
                        NhaCCDTO ncc = new NhaCCDTO();
                        ncc.ma_ncc = txtMaNCC.Text;
                        ncc.sdt_ncc = txtSDTNCC.Text;
                        ncc.ten_ncc = txtTenNCC.Text;
                        ncc.email = txtEmailNCC.Text;
                        NhaCCBUS.Insert_NCC(ncc);
                        pn.ma_ncc = txtMaNCC.Text;
                    }
                    else
                    {
                        pn.ma_ncc = cbxNCC.SelectedValue.ToString();
                    }
                    pn.ma_nv = cbxNVLPN.SelectedValue.ToString();
                    pn.ma_phieu_nhap = txtMaPN.Text;
                    pn.year = dtpPN.Value.Year;
                    pn.month = dtpPN.Value.Month;
                    pn.day = dtpPN.Value.Day;
                    PhieuNhapBUS.Insert_PN(pn);
                    check = false;
                }
                ChiTietPNDTO ctpn = new ChiTietPNDTO();
                SanPhamDTO sp = new SanPhamDTO();
                
                ctpn.ma_phieu_nhap = txtMaPN.Text;
                ctpn.ma_sp = sp.ma_sp = txtMSP.Text;
                ctpn.soluong = sp.soluong = int.Parse(txtSL.Text);
                ctpn.gianhap = long.Parse(txtGSP.Text);
                sp.gia = long.Parse(txtGSP.Text)*1.2;
                ctpn.tong = int.Parse(txtSL.Text) * long.Parse(txtGSP.Text);
                sp.hang_san_xuat = txtHSX.Text;
                sp.ma_loai = cbxLSP.SelectedValue.ToString();
                sp.ten_sp = txtTSP.Text;
                sp.thoi_gian_bh = int.Parse(txtBHSP.Text);
                sp.don_vi_tinh = txtDVT.Text;
                SanPhamBUS.Insert_SP(sp);
                PhieuNhapBUS.Insert_CTPN(ctpn);
                load_data();
                MessageBox.Show("Thêm sản phẩm thành công !", "Thông báo", MessageBoxButtons.OK);
                thanhtien += int.Parse(txtSL.Text) * long.Parse(txtGSP.Text);
                txtTongthanhtoan.Text = thanhtien.ToString();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void txtTongthanhtoan_TextChanged(object sender, EventArgs e)
        {
            try
            {
                PhieuNhapDTO pn = new PhieuNhapDTO();
                pn.ma_phieu_nhap = txtMaPN.Text;
                pn.tongtien = long.Parse(txtTongthanhtoan.Text);
                PhieuNhapBUS.Update_PN(pn);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void NhapHang_Load(object sender, EventArgs e)
        {
            load_data();
        }
        void load_data()
        {
            PhieuNhapDTO pn = new PhieuNhapDTO();
            pn.ma_phieu_nhap = txtMaPN.Text;
            dgvSanPham.DataSource= SanPhamBUS.Load_DSSP();
            cbxLSP.DataSource = cbxLoaiSP.DataSource = LoaiSanPhamBUS.Load_DSLSP();
            dgvChitietPN.DataSource = PhieuNhapBUS.Load_DSMaPN(pn);
            cbxLSP.DisplayMember = cbxLoaiSP.DisplayMember = "ten_loai_sp";
            cbxLSP.ValueMember = cbxLoaiSP.ValueMember = "ma_loai";
            cbxNVLPN.DataSource = NhanVienBUS.GetDSNV();
            cbxNVLPN.DisplayMember = "ten_nv";
            cbxNVLPN.ValueMember = "ma_nv";
            cbxNCC.DataSource = NhaCCBUS.Load_DSNCC();
            cbxNCC.DisplayMember = "ten_ncc";
            cbxNCC.ValueMember = "ma_ncc";
            groupBox2.Enabled = false;
        }
        #region Sản phẩm
        private void btnThemLoaisp_Click(object sender, EventArgs e)
        {
            try
            {
                LoaiSanPhamDTO loaisp = new LoaiSanPhamDTO();
                if (!RB(txtMaLoaisp.Text))
                {
                    txtMaLoaisp.Focus();
                    errorProvider1.SetError(txtMaLoaisp, "Error!");
                }
                else
                {
                    loaisp.ma_loai = txtMaLoaisp.Text;
                    loaisp.ten_loai_sp = txtTenLoaiSP.Text;
                    LoaiSanPhamBUS.Insert_LSP(loaisp);
                    MessageBox.Show("Thêm thành công !", "Thông báo", MessageBoxButtons.OK);
                    load_data();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnXoaLoaisp_Click(object sender, EventArgs e)
        {
            try
            {
                LoaiSanPhamDTO loaisp = new LoaiSanPhamDTO();
                loaisp.ma_loai = cbxLoaiSP.SelectedValue.ToString();
                LoaiSanPhamBUS.Delete_LSP(loaisp);
                load_data();
                MessageBox.Show("Xóa thành công !", "Thông báo", MessageBoxButtons.OK);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btnSuaLoaisp_Click(object sender, EventArgs e)
        {
            try
            {
                LoaiSanPhamDTO loaisp = new LoaiSanPhamDTO();
                loaisp.ma_loai = txtMaLoaisp.Text;
                loaisp.ten_loai_sp = txtTenLoaiSP.Text;
                LoaiSanPhamBUS.Update_LSP(loaisp);
                load_data();
                MessageBox.Show("Sửa thành công !", "Thông báo", MessageBoxButtons.OK);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            /// <summary>
            /// thực biện tìm kiếm sản phẩm
            /// </summary>
            /// <param name="sender"></param>
            /// <param name="e"></param>
        
        }

        private void btnSuaSP_Click_1(object sender, EventArgs e)
        {
            try
            {
                SanPhamDTO sp = new SanPhamDTO();
                sp.ma_sp = txtMasp.Text;
                sp.ten_sp = txtTenSP.Text;
                sp.soluong = int.Parse(txtSLSP.Text);
                sp.ma_loai = cbxLoaiSP.SelectedValue.ToString();
                sp.thoi_gian_bh = int.Parse(txtTGBH.Text);
                sp.gia = long.Parse(txtGiasp.Text);
                sp.don_vi_tinh = txtDVTSP.Text;
                sp.hang_san_xuat = txtHSX.Text;
                SanPhamBUS.Update_SP(sp);
                load_data();
                MessageBox.Show("Sửa thành công !", "Thông báo", MessageBoxButtons.OK);
            }
            catch (Exception ex)
            {
                MessageBox.Show("Sửa không thành công !", "Thông báo", MessageBoxButtons.OK);
                MessageBox.Show(ex.Message);
            }
        }

        private void btnTimsp_Click(object sender, EventArgs e)
        {
            try
            {
                SanPhamDTO sp = new SanPhamDTO();
                LoaiSanPhamDTO loaisp = new LoaiSanPhamDTO();
                if (cbxTimTheoSP.SelectedIndex == 0)
                {
                    sp.ma_sp = txtTimTheosp.Text;
                    if (SanPhamBUS.Search_MaSP(sp).Rows.Count == 0)
                        MessageBox.Show("Không có thông tin bạn cần tìm", "Thông báo", MessageBoxButtons.OK);
                    else
                        dgvSanPham.DataSource = SanPhamBUS.Search_MaSP(sp);
                }
                if (cbxTimTheoSP.SelectedIndex == 1)
                {
                    loaisp.ten_loai_sp = txtTimTheosp.Text;
                    if (SanPhamBUS.Search_LoaiSP(loaisp).Rows.Count == 0)
                        MessageBox.Show("Không có thông tin bạn cần tìm", "Thông báo", MessageBoxButtons.OK);
                    else
                        dgvSanPham.DataSource = SanPhamBUS.Search_LoaiSP(loaisp);
                }
                if (cbxTimTheoSP.SelectedIndex == 2)
                {
                    sp.ten_sp = txtTimTheosp.Text;
                    if (SanPhamBUS.Search_TenSP(sp).Rows.Count == 0)
                        MessageBox.Show("Không có thông tin bạn cần tìm", "Thông báo", MessageBoxButtons.OK);
                    else
                        dgvSanPham.DataSource = SanPhamBUS.Search_TenSP(sp);
                }
                if (cbxTimTheoSP.SelectedIndex == 3)
                {
                    sp.hang_san_xuat = txtTimTheosp.Text;
                    if (SanPhamBUS.Search_HSXSP(sp).Rows.Count == 0)
                        MessageBox.Show("Không có thông tin bạn cần tìm", "Thông báo", MessageBoxButtons.OK);
                    else
                        dgvSanPham.DataSource = SanPhamBUS.Search_HSXSP(sp);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void cbxTimTheoSP_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            if (cbxTimTheoSP.SelectedIndex == 0)
                lblTimSP.Text = "Nhập mã sản phẩm:";
            if (cbxTimTheoSP.SelectedIndex == 1)
                lblTimSP.Text = "Nhập loại sản phẩm:";
            if (cbxTimTheoSP.SelectedIndex == 2)
                lblTimSP.Text = "Nhập tên sản phẩm:";
            if (cbxTimTheoSP.SelectedIndex == 3)
                lblTimSP.Text = "Nhập hãng sản xuất sản phẩm:";
        }
        #endregion

        private void dgvSanPham_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                txtMasp.Text = dgvSanPham.CurrentRow.Cells[0].Value.ToString();
                txtTenSP.Text = dgvSanPham.CurrentRow.Cells[2].Value.ToString();
                cbxLoaiSP.Text = dgvSanPham.CurrentRow.Cells[1].Value.ToString();
                txtDVTSP.Text = dgvSanPham.CurrentRow.Cells[3].Value.ToString();
                txtGiasp.Text = dgvSanPham.CurrentRow.Cells[4].Value.ToString();
                txtTGBH.Text = dgvSanPham.CurrentRow.Cells[5].Value.ToString();
                txtSLSP.Text = dgvSanPham.CurrentRow.Cells[6].Value.ToString();
                txtHSXSP.Text = dgvSanPham.CurrentRow.Cells[7].Value.ToString();
            }
            catch (Exception ex)
            {
            }
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBox1.Checked)
                groupBox2.Enabled = true;
            else
                groupBox2.Enabled = false;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            DialogResult rs = new DialogResult();
            rs = MessageBox.Show("Bạn muốn quay lại màn hình đăng nhập ?", "Thông báo", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
            if (rs == DialogResult.OK)
            {
                TaiKhoanDTO tk = new TaiKhoanDTO();
                tk.username = str;
                TaiKhoanBUS.Dang_xuat(tk);
                QuanLy ql = new QuanLy();
                this.Hide();
                frmDangnhap dn = new frmDangnhap();
                dn.Show();
            }
            else
            {
                Application.Exit();
            }
        }

        private void btn_xoaspn_Click(object sender, EventArgs e)
        {
            try
            {
                SanPhamDTO sp = new SanPhamDTO();
                sp.ma_sp = dgvChitietPN.CurrentRow.Cells[2].Value.ToString();
                PhieuNhapBUS.delete_sppn(sp);
                SanPhamBUS.Delete_SP(sp);
                load_data();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            printPreviewDialog1.Document = printDocument1;
            printDocument1.DocumentName = txtMaPN.Text + dtpPN.Text;
            printPreviewDialog1.ShowDialog();
        }

        private void printDocument1_PrintPage(object sender, System.Drawing.Printing.PrintPageEventArgs e)
        {
            try
            {
                int x = 10, y = 30;
                e.Graphics.DrawString("PHIẾU ĐẶT HÀNG", new Font("Times New Roman", 20), Brushes.Black, new Point(250, x));
                e.Graphics.DrawString("Mã phiếu:" + txtMaPN.Text, new Font("Times New Roman", 13), Brushes.Black, new Point(30, x += 20));
                e.Graphics.DrawString("Tên nhân viên:" + cbxNVLPN.Text, new Font("Times New Roman", 13), Brushes.Black, new Point(30, x += 20));
                if (checkBox1.Checked)
                {
                    e.Graphics.DrawString("Tên nhà cung cấp:" + txtTenNCC.Text, new Font("Times New Roman", 13), Brushes.Black, new Point(30, x += 20));
                }
                else
                    e.Graphics.DrawString("Tên nhà cung cấp:" + cbxNCC.Text, new Font("Times New Roman", 13), Brushes.Black, new Point(30, x += 20));
                e.Graphics.DrawString("Ngày lập" + dtpPN.Text, new Font("Times New Roman", 13), Brushes.Black, new Point(30, x += 20));
                e.Graphics.DrawString("Mã sản phẩm | ", new Font("Times New Roman", 13), Brushes.Black, new Point(30, x += 20));
                e.Graphics.DrawString("Tên sản phẩm | ", new Font("Times New Roman", 13), Brushes.Black, new Point(150, x));
                e.Graphics.DrawString("Số lượng | ", new Font("Times New Roman", 13), Brushes.Black, new Point(270, x));
                e.Graphics.DrawString("Giá | ", new Font("Times New Roman", 13), Brushes.Black, new Point(400, x));
                e.Graphics.DrawString("Thành tiền | ", new Font("Times New Roman", 13), Brushes.Black, new Point(500, x));
                for (int i = 0; i < dgvChitietPN.RowCount - 1; i++)
                {
                    e.Graphics.DrawString(dgvChitietPN.Rows[i].Cells[2].Value.ToString() + " | ", new Font("Times New Roman", 13), Brushes.Black, new Point(30, x += 20));
                    e.Graphics.DrawString(dgvChitietPN.Rows[i].Cells[3].Value.ToString() + " | ", new Font("Times New Roman", 13), Brushes.Black, new Point(150, x));
                    e.Graphics.DrawString(dgvChitietPN.Rows[i].Cells[4].Value.ToString() + " | ", new Font("Times New Roman", 13), Brushes.Black, new Point(270, x));
                    e.Graphics.DrawString(dgvChitietPN.Rows[i].Cells[5].Value.ToString() + " | ", new Font("Times New Roman", 13), Brushes.Black, new Point(400, x));
                    e.Graphics.DrawString(dgvChitietPN.Rows[i].Cells[6].Value.ToString(), new Font("Times New Roman", 13), Brushes.Black, new Point(500, x));
                }
                e.Graphics.DrawString("Tổng: " + txtTongthanhtoan.Text, new Font("Times New Roman", 13), Brushes.Black, new Point(500, x += 20));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
