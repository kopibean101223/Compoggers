import java.awt.event.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.*;
import java.awt.*;

public class FICTIONAL_PAGE {
	public static String buttonlbl;
public static void main (String[] args) {

JFrame f=new JFrame("TMC'S LIBRARY MANAGEMENT SYSTEM");
f. getContentPane(). setLayout(null);


//HEADER{
JLabel label1 = new JLabel(" WELCOME TO TMC'S LIBRARY MANAGEMENT SYSTEM");
JLabel label2 = new JLabel("");
f.add(label1);
f.add(label2);
label2.setBounds(0, 0,1440, 169);
label1.setBounds(100, 0,1440, 169);

Font fonttitle = new Font("BAHNSCHRIFT", Font.BOLD, 48);
label1.setFont(fonttitle);
label1.setOpaque(true);
Color customColor = new Color(255, 204, 51);
label1.setForeground(customColor);
Color customColor2 = new Color(16, 28, 78);
label2.setBackground(customColor2);
label1.setBackground(customColor2);
label2.setOpaque(true);
//}

//FORM
JLabel label3 = new JLabel("FICTIONAL BOOKS");
f.add(label3);
label3.setBounds(500, 200,800, 169);
label3.setFont(fonttitle);
label3.setBackground(Color.BLACK);
//FORM

//LINE
JLabel label4 = new JLabel("");
f.add(label4);
label4.setBounds(100, 320,1220, 1);
label4.setFont(fonttitle);
label4.setOpaque(true);
label4.setBackground(Color.BLACK);
//LINE





Font fontop = new Font("BAHNSCHRIFT", Font.BOLD, 20);

try {// Load the MySQL driver
    Class.forName("com.mysql.cj.jdbc.Driver");

    // Set up the connection URL
    String url = "jdbc:mysql://localhost:3306/MYDATABASE";

    int n=340;
    // Connect to the database
    Connection conn = DriverManager.getConnection(url, "root", "");
    Statement statement = conn.createStatement();
    ResultSet resultSet = statement.executeQuery("SELECT TITLE FROM BOOK_DETAILS WHERE CATEGORY = 'FICTION'");
    while (resultSet.next()) {
    	JButton button = new JButton((resultSet.getString(1)));
    	f.add(button);
    	button.setBounds(150, n,1000, 40);
    	button.setFont(fontop);
    	button.setForeground(Color.BLACK);
    	button.setContentAreaFilled(false);
    	button.setBorderPainted(false);
    	button.setHorizontalAlignment(SwingConstants.LEFT);
    	n+=30;
    	button.addActionListener(new ActionListener(){
    		public void actionPerformed (ActionEvent e){
    			buttonlbl = button.getText();
    			System.out.println(buttonlbl);
    		BOOK_INFOFICTION.main(null);
    		f.dispose();
    		}
    		}) ;
    }

    resultSet.close();
    statement.close();
    } catch (ClassNotFoundException e) {
        System.out.print("");
        e.printStackTrace();
    } catch (SQLException e) {
        System.out.print("");
        e.printStackTrace();
        
   }




         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         

         
// BACK BUTTON
JButton c=new JButton("Back ");
c. setBounds (1100, 830,180, 50);
c.addActionListener(new ActionListener(){
public void actionPerformed (ActionEvent e){
BOOKLIST_PAGE.main(null);
f.dispose();
}
}) ;
// BACK BUTTON




//CUSTOMIZE BUTTONS
Font fontbutton = new Font("ARIAL",Font.BOLD, 20);

c.setFont(fontbutton);

f.add(c);

c.setForeground(Color.WHITE);
c.setBackground(customColor2);
//CUSTOMIZE BUTTONS

JLabel bg = new JLabel("");
f.add(bg);
bg.setBounds(80, 220,1260, 700);

bg.setBackground(Color.WHITE);
bg.setOpaque(true);

// CUSTOMIZE FRAME}
f.setSize(1440,1024);
f.setVisible(true);
f.setResizable(false);
// CUSTOMIZE FRAME}
}
}