package work;


import static databaseStuffs.DatabaseMethods.con;
import static databaseStuffs.DatabaseMethods.connectDB;
import java.awt.Component;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import jxl.*;
import jxl.read.biff.BiffException;


public class ReadXLS {
    BufferedReader reader;
    File selectedFile;
    Workbook w;
    Sheet s;
    PreparedStatement preparedStmt;
    String table_name;
    int cnt,duplicate;

    public ReadXLS(String t_name, Component com) {
        table_name=t_name;
        cnt=0;
        duplicate=0;
        JFileChooser file = new JFileChooser();
        int result = file.showSaveDialog(null);
        if (result == JFileChooser.APPROVE_OPTION) {
            selectedFile = file.getSelectedFile();
            String path = selectedFile.getAbsolutePath();
            connectDB();
            File f = new File(path);

            try {
                w = Workbook.getWorkbook(f);
            } catch (IOException ex) {
               ex.printStackTrace();
            } catch (BiffException ex) {
               ex.printStackTrace();
            }
            s = w.getSheet(0);
            int rows = s.getRows();
            int col = s.getColumns();
            String sql = "";

            for (int i = 1; i < rows; i++) {
                sql = "INSERT INTO `"+table_name+"` (`name`, `contact`, `work`, `note`, `address`, `postcode`, `email`, `website`, `area_cover`) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?)";
                String st="";
                int setter = 1;
                try {
                    preparedStmt = con.prepareStatement(sql);
                } catch (SQLException ex) {
                    System.out.println("preparedStmt Error");
                }
                for (int j = 1; j <= 9; j++) {
                    

                    Cell c = s.getCell(j, i);
                    String ss = c.getContents().toString();
                    ss = ss.trim();
                    ss = ss.replaceAll("\\n", " ");
                    if(j==2)
                    {
                        ss = ss.replaceAll("[^\\d+]", "");
                        if(ss.isEmpty() || ss==null)
                            break;
                    }
                    
                    try {
                        st=st+"("+ss+") - ";
                        preparedStmt.setString(setter, ss);
                    } catch (SQLException ex) {

                    }
                 //   System.out.print("" + ss + "   |   ");
                    setter++;
                }
                System.out.println(st);
                try {
                    preparedStmt.execute();
                    cnt++;
                    System.out.println("\nData Entry Success = " + i );
                } catch (SQLException ex) {
                   // System.out.println("Duplicate entry ..............................");
                    duplicate++;
                    ex.printStackTrace();
                }

                
            }

        } else if (result == JFileChooser.CANCEL_OPTION) {

        }
        JOptionPane.showMessageDialog(com,""+cnt+" Data Inserted Successful!\n"+duplicate+" Duplicate Data Found!");
        
        
        
        
        
        
        
    }
    
    
    public static void main(String[] args) {
       // new ReadXLS("data");
    }
    
    
}
