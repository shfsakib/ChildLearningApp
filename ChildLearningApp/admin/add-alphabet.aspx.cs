using System;
using System.Speech.Synthesis;
namespace ChildLearningApp.admin
{
    public partial class add_alphabet : System.Web.UI.Page
    {
        private SpeechSynthesizer speech;

        public add_alphabet()
        {
            speech = new SpeechSynthesizer();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }

        protected void lnkAdd_OnClick(object sender, EventArgs e)
        {
            // Initialize a new instance of the SpeechSynthesizer.
            speech.SelectVoiceByHints(VoiceGender.Female, VoiceAge.Child); // to change VoiceGender and VoiceAge check out those links below

            speech.Volume = 100;  // (0 - 100)
            speech.Rate = 0;
            // Configure the audio output. 
            string text = "B for Ball";
            // Speak a string.
            speech.Speak(text);

        }
    }
}