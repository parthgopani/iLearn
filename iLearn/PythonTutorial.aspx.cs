using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.pdf.parser;

public partial class PythonTutorial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string pdfFilePath = Server.MapPath("Books/pythonlearn.pdf"); 
        string pdfText = ExtractPDFText(pdfFilePath);

        pdfContent.Text = pdfText;
    }
    protected string ExtractPDFText(string pdfFilePath)
    {
        using (PdfReader reader = new PdfReader(pdfFilePath))
        {
            StringWriter textOutput = new StringWriter();
            for (int page = 12; page <= reader.NumberOfPages; page++)
            {
                ITextExtractionStrategy strategy = new SimpleTextExtractionStrategy();
                string pageText = PdfTextExtractor.GetTextFromPage(reader, page, strategy);
                textOutput.WriteLine(pageText);
            }
            return textOutput.ToString();
        }
    }
}