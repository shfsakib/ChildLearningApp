using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ChildLearningApp.DAL.Model;

namespace ChildLearningApp.DAL.Gateway
{
    public class AlphabetGateway
    {
        private Function function;
        private SqlConnection con;
        private SqlCommand cmd;
        public AlphabetGateway()
        {
            function=Function.GetInstance();
            con=new SqlConnection(function.Connection);
        }
        private static AlphabetGateway _instance;

        public static AlphabetGateway GetInstance()
        {
            if (_instance == null)
            {
                _instance = new AlphabetGateway();
            }
            return _instance;
        }
        internal bool Insert(AlphabetModel ob)
        {
            bool result = false;
            SqlTransaction transaction = null;
            try
            {
                if (con.State != ConnectionState.Open)
                    con.Open();
                transaction = con.BeginTransaction();
                cmd = new SqlCommand("INSERT INTO AlphabetInfo(Alphabet,Word,Audio,Picture,InTime) VALUES(@Alphabet,@Word,@Audio,@Picture,@InTime)", con);
                cmd.Parameters.AddWithValue("@Alphabet", ob.Alphabet);
                cmd.Parameters.AddWithValue("@Word", ob.Word);
                cmd.Parameters.AddWithValue("@Picture", ob.Picture);
                cmd.Parameters.AddWithValue("@Audio", ob.Audio);
                cmd.Parameters.AddWithValue("@InTime", ob.InTime);

                cmd.Transaction = transaction;
                cmd.ExecuteNonQuery();
                transaction.Commit();
                result = true;
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
            catch (Exception ex)
            {
                transaction.Rollback();
            }
            return result;
        }
    }
}