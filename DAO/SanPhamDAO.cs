using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using System.Data;
using MySql.Data.MySqlClient;
namespace DAO
{
    public class SanPhamDAO
    {
        static MySqlConnection cnn = null;
        /// <summary>
        /// load danh sách từ csdl lên form
        /// </summary>
        /// <returns></returns>
        public static DataTable Load_DSSP()
        {
            try
            {
                DataTable dt = new DataTable();
                string select = "SELECT ma_sp,db_nhom_sp.ten_loai_sp,ten_sp,don_vi_tinh,gia_sp,thoi_gian_bh,soluong,hang_san_xuat FROM db_sanpham inner join db_nhom_sp on db_sanpham.ma_loai=db_nhom_sp.ma_loai";
                cnn = DataProvider.ConnectData();
                dt = DataProvider.Load_database(select, cnn);
                cnn.Close();
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// them vao csdl
        /// </summary>
        /// <param name="sp"></param>
        public static void Insert_SP(SanPhamDTO sp)
        {
            try
            {
                cnn = DataProvider.ConnectData();
                string insert = string.Format("insert into db_sanpham(ma_sp,ma_loai,ten_sp,don_vi_tinh,gia_sp,thoi_gian_bh,soluong,hang_san_xuat) values ('{0}','{1}','{2}','{3}',{4},{5},{6},'{7}');",
                    sp.ma_sp,sp.ma_loai,sp.ten_sp,sp.don_vi_tinh,sp.gia,sp.thoi_gian_bh,sp.soluong,sp.hang_san_xuat);
                DataProvider.Execute(cnn, insert);
                cnn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// update csdl
        /// </summary>
        /// <param name="sp"></param>
        public static void Update_SP(SanPhamDTO sp)
        {
            try
            {
                cnn = DataProvider.ConnectData();
                string insert = string.Format("UPDATE db_sanpham SET ma_loai='{1}',ten_sp='{2}',don_vi_tinh='{3}',gia_sp='{4}',thoi_gian_bh='{5}',soluong='{6}',hang_san_xuat='{7}' WHERE ma_sp='{0}' ;",
                    sp.ma_sp, sp.ma_loai, sp.ten_sp, sp.don_vi_tinh, sp.gia, sp.thoi_gian_bh, sp.soluong, sp.hang_san_xuat);
                DataProvider.Execute(cnn, insert);
                cnn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// delete du lieu
        /// </summary>
        /// <param name="sp"></param>
        public static void Delete_SP(SanPhamDTO sp)
        {
            try
            {
                cnn = DataProvider.ConnectData();
                string insert = string.Format("DELETE FROM db_sanpham WHERE ma_sp='{0}' ;",sp.ma_sp);
                DataProvider.Execute(cnn, insert);
                cnn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// tìm theo mã sản phẩm
        /// </summary>
        /// <param name="sp"></param>
        /// <returns></returns>
        public static DataTable Search_MaSP(SanPhamDTO sp)
        {
            try
            {
                DataTable dt = new DataTable();
                cnn = DataProvider.ConnectData();
                string masp= string.Format("SELECT ma_sp,db_nhom_sp.ten_loai_sp,ten_sp,don_vi_tinh,gia_sp,thoi_gian_bh,soluong,hang_san_xuat FROM db_sanpham inner join db_nhom_sp on db_sanpham.ma_loai=db_nhom_sp.ma_loai WHERE db_sanpham.ma_sp='{0}';",sp.ma_sp);
                dt = DataProvider.Load_database(masp, cnn);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// Tìm theo tên sản phẩm
        /// </summary>
        /// <param name="sp"></param>
        /// <returns></returns>
        public static DataTable Search_TenSP(SanPhamDTO sp)
        {
            try
            {
                DataTable dt = new DataTable();
                cnn = DataProvider.ConnectData();
                string masp = string.Format("SELECT ma_sp,db_nhom_sp.ten_loai_sp,ten_sp,don_vi_tinh,gia_sp,thoi_gian_bh,soluong,hang_san_xuat FROM db_sanpham inner join db_nhom_sp on db_sanpham.ma_loai=db_nhom_sp.ma_loai WHERE db_sanpham.ten_sp='{0}';", sp.ten_sp);
                dt = DataProvider.Load_database(masp, cnn);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// tìm theo hãng sản xuất
        /// </summary>
        /// <param name="sp"></param>
        /// <returns></returns>
        public static DataTable Search_HangSXSP(SanPhamDTO sp)
        {
            try
            {
                DataTable dt = new DataTable();
                cnn = DataProvider.ConnectData();
                string masp = string.Format("SELECT ma_sp,db_nhom_sp.ten_loai_sp,ten_sp,don_vi_tinh,gia_sp,thoi_gian_bh,soluong,hang_san_xuat FROM db_sanpham inner join db_nhom_sp on db_sanpham.ma_loai=db_nhom_sp.ma_loai WHERE db_sanpham.hang_san_xuat='{0}';", sp.hang_san_xuat);
                dt = DataProvider.Load_database(masp, cnn);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        //tìm theo loại
        public static DataTable Search_LoaiSP(LoaiSanPhamDTO loaisp)
        {
            try
            {
                DataTable dt = new DataTable();
                cnn = DataProvider.ConnectData();
                string masp = string.Format("SELECT ma_sp,db_nhom_sp.ten_loai_sp,ten_sp,don_vi_tinh,gia_sp,thoi_gian_bh,soluong,hang_san_xuat FROM db_sanpham inner join db_nhom_sp on db_sanpham.ma_loai=db_nhom_sp.ma_loai WHERE db_nhom_sp.ten_loai_sp='{0}';", loaisp.ten_loai_sp);
                dt = DataProvider.Load_database(masp, cnn);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
