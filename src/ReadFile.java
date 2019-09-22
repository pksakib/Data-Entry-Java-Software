
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ReadFile {

    public static void main(String[] args) {
        File f = new File("file/input.csv");
        BufferedReader br;
        try {
            br = new BufferedReader(new FileReader(f));
            String st;
            while ((st = br.readLine()) != null) {
                String s[]=st.split("\\t");
                
                for(int i=0;i<s.length;i++)
                {
                    System.out.println(s[i]);
                }
                System.out.println("Line...............");
                
                
                
                
                
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

}
