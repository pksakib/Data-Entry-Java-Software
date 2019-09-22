
import com.sun.javafx.PlatformUtil;
import static databaseStuffs.DatabaseMethods.con;
import static databaseStuffs.DatabaseMethods.connectDB;
import java.io.File;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jxl.*;
import jxl.read.biff.BiffException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Sirat
 */
public class test {
    static Workbook w;
    static Sheet s;
    static PreparedStatement preparedStmt;
    public static void main(String[] args) {
        
        connectDB();
        File f= new File("data.xls");
        
        try {
            w = Workbook.getWorkbook(f);
        } catch (IOException ex) {
            Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, ex);
        } catch (BiffException ex) {
            Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, ex);
        }
        s =w.getSheet(0);
        int rows= s.getRows();
        int col= s.getColumns();
        String sql="";
        for(int i=1;i<rows;i++)
        {
            sql="INSERT INTO `data` (`id`, `name`, `contact`, `work`, `note`, `address`, `postcode`, `email`, `website`, `area_cover`) VALUES ('1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);";
            int setter=1;
            try {
                preparedStmt = con.prepareStatement(sql);
            } catch (SQLException ex) {
                System.out.println("preparedStmt = con.prepareStatement(sql);");
            }
            for(int j=1;j<=18;j++)
            {
                
                Cell c= s.getCell(j, i);
                String ss=c.getContents().toString();
                ss=ss.trim();
                ss=ss.replaceAll("\\n", " ");
                if(ss.isEmpty() || ss==null)
                {
                // ss="null";   
                }
                else
                {
                    ss="'"+ss+"'";
                }
                try {
                    preparedStmt.setString(setter, ss);
                } catch (SQLException ex) {
                    System.out.println(" preparedStmt.setString(setter, ss) Error");
                }
                //System.out.print(""+ss+" | ");
                setter++;
            }
            try {
                preparedStmt.execute();
            } catch (SQLException ex) {
                System.out.println("preparedStmt.execute() Error");
            }
            
            System.out.println("Data Entry Success = "+i);
        }
    }
    
}
