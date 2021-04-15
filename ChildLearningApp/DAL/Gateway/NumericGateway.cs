using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using ChildLearningApp.DAL.Model;

namespace ChildLearningApp.DAL.Gateway
{
    public class NumericGateway
    {
        private Function function;
        private SqlConnection con;
        private SqlCommand cmd;
        public NumericGateway()
        {
            function = Function.GetInstance();
            con = new SqlConnection(function.Connection);
        }
        private static NumericGateway _instance;

        public static NumericGateway GetInstance()
        {
            if (_instance == null)
            {
                _instance = new NumericGateway();
            }
            return _instance;
        }
        internal bool Insert(NumericModel ob)
        {
            bool result = false;
            SqlTransaction transaction = null;
            try
            {
                if (con.State != ConnectionState.Open)
                    con.Open();
                transaction = con.BeginTransaction();
                cmd = new SqlCommand("INSERT INTO Numeric(Number,Word,Picture,InTime) VALUES(@Number,@Word,@Picture,@InTime)", con);
                cmd.Parameters.AddWithValue("@Number", ob.Number);
                cmd.Parameters.AddWithValue("@Word", ob.Word);
                cmd.Parameters.AddWithValue("@Picture", ob.Picture);
                cmd.Parameters.AddWithValue("@InTime", ob.InTime);

                cmd.Transaction = transaction;
                cmd.ExecuteNonQuery();
                transaction.Commit();
                result = true;
                if (con.State != ConnectionState.Closed)
                    con.Close();
            }
            catch (Exception)
            {
                transaction.Rollback();
            }
            return result;
        }
    }
}