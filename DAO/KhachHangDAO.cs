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
    public class KhachHangDAO
    {
        static MySqlConnection cnn = null;
        public static DataTable Load_DSKH()
        {
            try
            {
                DataTable dt = new DataTable();
                cnn = DataProvider.ConnectData();
                string select = "SELECT * FROM db_khach_hang";
                dt = DataProvider.Load_database(select,cnn);
                cnn.Close();
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void Insert_KH(KhachHangDTO kh)
        {
            try
            {
                cnn = DataProvider.ConnectData();
                string insert = string.Format("insert into db_khach_hang(ma_kh,ten_kh,diachi,sdt) value ('{0}','{1}', '{2}','{3}');", kh.ma_kh, kh.ten_kh, kh.diachi, kh.sdt);
                DataProvider.Execute(cnn,insert);
                cnn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void Update_KH(KhachHangDTO kh)
        {
            try
            {
                cnn = DataProvider.ConnectData();
                string insert = string.Format("UPDATE db_khach_hang SET ten_kh='{1}',diachi='{2}',sdt='{3}'WHERE ma_kh='{0}';", kh.ma_kh, kh.ten_kh, kh.diachi, kh.sdt);
                DataProvider.Execute(cnn, insert);
                cnn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static void Delete_KH(KhachHangDTO kh)
        {
            try
            {
                
                HoaDonDTO hd = new HoaDonDTO();
                PhieuDatHangDTO pdh = new PhieuDatHangDTO();
                List<string> ds = new List<string>();
                string delete_kh = string.Format("DELETE FROM db_khach_hang WHERE ma_kh='{0}'", kh.ma_kh);
                string delete_hd_in_kh = string.Format("SELECT ma_hd FROM db_hoa_don WHERE ma_kh = '{0}'",kh.ma_kh);
                string delete_pdh_in_kh = string.Format("SELECT ma_pdh FROM db_phieu_dat_hang WHERE ma_kh = '{0}'", kh.ma_kh);
                string delete_pbh_in_kh = string.Format("SELECT ma_bh FROM db_bao_hanh WHERE ma_kh = '{0}'",kh.ma_kh);
                ds = Xoa_thong_tin(delete_hd_in_kh);
                for (int i = 0; i < ds.Count; i++)
                {
                    hd.ma_hd = ds[i];
                    HoaDonDAO.Delete_HD(hd);
                }
                ds = Xoa_thong_tin(delete_pdh_in_kh);
                for (int i = 0; i < ds.Count; i++)
                {
                    pdh.ma_pdh = ds[i];
                    PhieuDatHangDAO.Delete_PDH(pdh);
                }
                ds = Xoa_thong_tin(delete_pbh_in_kh);
                cnn = DataProvider.ConnectData();
                DataProvider.Execute(cnn, delete_kh);
                cnn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// xóa các liên kết của khách hàng trong csdl
        /// </summary>
        private static List<string> Xoa_thong_tin(string sqlquery)
        {
            try
            {
                cnn = DataProvider.ConnectData();
                DataTable dt = new DataTable();
                List<string> ds = new List<string>();
                dt = DataProvider.Load_database(sqlquery,cnn);
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ds.Add(dt.Rows[i].ItemArray.GetValue(0).ToString());
                }
                cnn.Close();
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        public static DataTable Search_MaKH(KhachHangDTO kh)
        {
            try
            {
                DataTable dt = new DataTable();
                cnn = DataProvider.ConnectData();
                string Search_ma = string.Format("SELECT * FROM db_khach_hang WHERE ma_kh='{0}'", kh.ma_kh);
                dt = DataProvider.Load_database(Search_ma,cnn);
                cnn.Close();
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public static DataTable Search_TenKH(KhachHangDTO kh)
        {
            try
            {
                DataTable dt = new DataTable();
                cnn = DataProvider.ConnectData();
                string Search_ten = string.Format("SELECT * FROM db_khach_hang WHERE ten_kh='{0}'", kh.ten_kh);
                dt = DataProvider.Load_database(Search_ten, cnn);
                cnn.Close();
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
