package com.web.documents;
import java.awt.Color;
import java.io.IOException;
import java.util.List;
 
import javax.servlet.http.HttpServletResponse;
 
import com.lowagie.text.*;
import com.lowagie.text.pdf.*;
import com.web.DTO.LoanApplication;
 
 
public class UserPDFExporter {
    private List<LoanApplication> listUsers;
     
    public UserPDFExporter(List<LoanApplication> listUsers) {
        this.listUsers = listUsers;
    }
 
    private void writeTableHeader(PdfPTable table) {
        PdfPCell cell = new PdfPCell();
        cell.setBackgroundColor(Color.BLUE);
        cell.setPadding(5);
         
        Font font = FontFactory.getFont(FontFactory.HELVETICA);
        font.setColor(Color.WHITE);
         
        cell.setPhrase(new Phrase("Request Id", font));
         
        table.addCell(cell);
         
        cell.setPhrase(new Phrase("First Name", font));
        table.addCell(cell);
         
        cell.setPhrase(new Phrase("Last Name", font));
        table.addCell(cell);
         
        cell.setPhrase(new Phrase("Dob", font));
        table.addCell(cell);
         
        cell.setPhrase(new Phrase("Gender", font));
        table.addCell(cell); 
        
        cell.setPhrase(new Phrase("Contact No", font));
        table.addCell(cell); 
        
        cell.setPhrase(new Phrase("Email id", font));
        table.addCell(cell); 
        
        cell.setPhrase(new Phrase("User id", font));
        table.addCell(cell); 
        
        cell.setPhrase(new Phrase("Loan Type", font));
        table.addCell(cell);
        
        cell.setPhrase(new Phrase("Loan Status", font));
        table.addCell(cell); 
    }
     
    private void writeTableData(PdfPTable table) {
        for (LoanApplication loanApplication : listUsers) {
            table.addCell(String.valueOf(loanApplication.getReqid()));
            table.addCell(loanApplication.getFname());
            table.addCell(loanApplication.getLname());
            table.addCell(loanApplication.getDob());
            table.addCell(loanApplication.getGender());
            table.addCell(loanApplication.getContact());
            table.addCell(loanApplication.getEmail());
            table.addCell(loanApplication.getUid());
            table.addCell(loanApplication.getLoantype());
            table.addCell(loanApplication.getStatus());
        }
    }
     
    public void export(HttpServletResponse response) throws DocumentException, IOException {
        Document document = new Document(PageSize.A4.rotate());
        PdfWriter.getInstance(document, response.getOutputStream());
         
        document.open();
        Font font = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
        font.setSize(18);
        font.setColor(Color.BLUE);
         
        Paragraph p = new Paragraph("List of Loans", font);
        p.setAlignment(Paragraph.ALIGN_CENTER);
         
        document.add(p);
         
        PdfPTable table = new PdfPTable(10);
        table.setWidthPercentage(100f);
        table.setWidths(new float[] {1.5f, 1.5f, 1.5f, 1.5f, 1.5f,1.5f, 1.5f, 1.5f, 1.5f, 1.5f});
        table.setSpacingBefore(10);
         
        writeTableHeader(table);
        writeTableData(table);
         
        document.add(table);
         
        document.close();
         
    }
}