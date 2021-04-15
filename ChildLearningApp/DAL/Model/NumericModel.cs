using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ChildLearningApp.DAL.Model
{
    public class NumericModel
    {
        private static NumericModel _instance;

        public static NumericModel GetInstance()
        {
            if (_instance == null)
            {
                _instance = new NumericModel();
            }
            return _instance;
        }

        public int NumId { get; set; }
        public string Number { get; set; }
        public string Word { get; set; }
        public string Picture { get; set; }
        public string InTime { get; set; }
    }
}