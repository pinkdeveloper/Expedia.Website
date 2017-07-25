using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Expedia.Utilities.Helpers
{
    public static class Logger 
    {
        public static string file = "ExpideaLog.txt";

        public static void Log(String lines)
        {
            // Write the string to a file.append mode is enabled so that the log
            // lines get appended to  test.txt than wiping content and writing the log
            string dataPath = Environment.GetFolderPath(Environment.SpecialFolder.CommonApplicationData);
            string filePath = Path.Combine(dataPath, file);

            using (StreamWriter file = (File.Exists(filePath)) ? File.AppendText(filePath) : File.CreateText(filePath))
            {
                file.WriteLine(DateTime.Now +  " " + lines);
                file.Close();
            }         
        }
    }
}
