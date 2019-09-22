package work;

import static databaseStuffs.DatabaseMethods.*;
import java.awt.Component;
import java.io.File;
import java.io.IOException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import jxl.*;
import jxl.write.*;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Sirat
 */
public class WriteXLS {

    String path;
    WritableWorkbook workbook;
    WritableSheet excelSheet;
    private String data;
    int cnt;
    int serial;

    public WriteXLS(String fileName, Component cmp, String data) {
        this.data = data;
        path = "Output\\" + fileName + ".xls";
        serial = 1;
        try {
            workbook = Workbook.createWorkbook(new File(path));
            WritableSheet sheet = workbook.createSheet("Data", 0);
            connectDB();
            statement = con.createStatement();
            resultSet = statement.executeQuery("select `name`, `contact`, `work`, `note`, `address`, `postcode`, `email`, `website`, `area_cover` from " + this.data);
            int row = 1;
                Label l1 = new Label(0, 0, "Serial No.");
                sheet.addCell(l1);
                Label l2 = new Label(1, 0, "Name");
                sheet.addCell(l2);
                Label l3 = new Label(2, 0, "Contact");
                sheet.addCell(l3);
                Label l4 = new Label(3, 0, "Work");
                sheet.addCell(l4);
                Label l5 = new Label(4, 0, "Note");
                sheet.addCell(l5);
                Label l6 = new Label(5, 0, "Address");
                sheet.addCell(l6);
                Label l7 = new Label(6, 0, "PostCode");
                sheet.addCell(l7);
                Label l8 = new Label(7, 0, "Email");
                sheet.addCell(l8);
                Label l9 = new Label(8, 0, "Website");
                sheet.addCell(l9);
                Label l10 = new Label(9, 0, "Area Cover");
                sheet.addCell(l10);
                
               
            
            
            
            while (resultSet.next()) {

                Label label = new Label(0, row, "" + serial);
                sheet.addCell(label);

                Label labelName = new Label(1, row, resultSet.getString(1));
                sheet.addCell(labelName);

                Label labelContact = new Label(2, row, resultSet.getString(2));
                sheet.addCell(labelContact);

                Label labelWork = new Label(3, row, resultSet.getString(3));
                sheet.addCell(labelWork);

                Label labelNote = new Label(4, row, resultSet.getString(4));
                sheet.addCell(labelNote);

                Label labelAddress = new Label(5, row, resultSet.getString(5));
                sheet.addCell(labelAddress);
                Label labelPost = new Label(6, row, resultSet.getString(6));
                sheet.addCell(labelPost);
                Label labelEmail = new Label(7, row, resultSet.getString(7));
                sheet.addCell(labelEmail);

                Label labelWebsite = new Label(8, row, resultSet.getString(8));
                sheet.addCell(labelWebsite);

                Label labelAreaCover = new Label(9, row, resultSet.getString(9));
                sheet.addCell(labelAreaCover);

                serial++;
                row++;
                cnt++;
            }

            workbook.write();
            workbook.close();
            JOptionPane.showMessageDialog(cmp, "" + cnt + " Data Write Successful!\n at " + path);
            System.out.println("Success");
        } catch (Exception e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(cmp, "File Write Unuccessful!\n at " + path);
        }
    }

}
