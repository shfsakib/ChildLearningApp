using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ChildLearningApp.DAL.Model
{
    public class AlphabetModel
    {
        private static AlphabetModel _instance;

        public static AlphabetModel GetInstance()
        {
            if (_instance == null)
            {
                _instance = new AlphabetModel();
            }
            return _instance;
        }

        public int AlphaId { get; set; }
        public string Alphabet { get; set; }
        public string Word { get; set; }
        public string Picture { get; set; }
        public string InTime { get; set; }
    }
}