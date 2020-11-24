using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;

using System.IO;

namespace StorageService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        string IService1.Storefile(string fileNameOrUrl)
        {
            // Create a new directory in the server
            string path = @"c:\ServiceStorage";

            // Specify the path on the server to save the uploaded file to.

            //String savePath = @"c:\Downloads\";
            String savePath = "";
            try
            {
                // Determine whether the directory exists.
                if (Directory.Exists(path))
                {
                    savePath = @"c:\ServiceStorage\";
                    Console.WriteLine("That path exists already.");
                    //return;
                }
                else
                {
                    // Try to create the directory.
                    DirectoryInfo di = Directory.CreateDirectory(path);
                    savePath = @"c:\ServiceStorage\";
                    Console.WriteLine("The directory was created successfully at {0}.", Directory.GetCreationTime(path));


                }

            }
            catch (Exception ex)
            {
                Console.WriteLine("The process failed: {0}", ex.ToString());
            }
            savePath = savePath + fileNameOrUrl;

            return savePath;
        }
  
    }
}
