using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Inleveropdracht1
{
    public partial class Dashboard : System.Web.UI.Page
    {
        int numberTracks;
        int numberGenres ;
        double totalValue;
        int totalAlbums;

        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
            NumberOfTracks.Text = numberTracks.ToString();
            NumberOfGenres.Text = numberGenres.ToString();
            NumberOfAlbums.Text = totalAlbums.ToString();
            TotalValueOfTracks.Text = "€ " + totalValue.ToString();
        }

        private void GetData()
        {
            string connectionString = @"Data Source=LAPTOP-OPTB5SH8\MS_SQLSERVER;Initial Catalog=Collections_Database;Integrated Security=True";
            using (SqlConnection cnn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cnn.ConnectionString = connectionString;
                    cnn.Open();
                    cmd.Connection = cnn;
                    cmd.CommandText = "SELECT count(DISTINCT trackName) tracks, count(distinct genreName) genreName, sum(value) waarde, count(Distinct album) albums  from tbl_CollectionObjects right outer join tbl_Genres on tbl_CollectionObjects.genreCode = tbl_Genres.code";
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            numberTracks = Int32.Parse(reader[0].ToString());
                            numberGenres = Int32.Parse(reader[1].ToString());
                            totalValue = double.Parse(reader[2].ToString());
                            totalAlbums = Int32.Parse(reader[3].ToString());
                        }
                    }
                }
                cnn.Close();
            }
        }
    }
}