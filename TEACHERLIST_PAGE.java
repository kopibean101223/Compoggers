import java.awt.event.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.*;
import java.awt.*;

public class TEACHERLIST_PAGE {
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
Font fontop = new Font("BAHNSCHRIFT", Font.BOLD, 24);
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
JLabel label3 = new JLabel("TEACHER BORROWERS");
f.add(label3);
label3.setBounds(450, 200,800, 169);
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

try {// Load the MySQL driver
    Class.forName("com.mysql.cj.jdbc.Driver");

    // Set up the connection URL
    String url = "jdbc:mysql://localhost:3306/MYDATABASE";

    int n=270;
    // Connect to the database
    Connection conn = DriverManager.getConnection(url, "root", "");
    Statement statement = conn.createStatement();
    ResultSet resultSet = statement.executeQuery("SELECT FIRSTNAME, LASTNAME FROM PERSONALFORM");
    while (resultSet.next()) {
    	JLabel label10 = new JLabel((resultSet.getString(1))+"  "+(resultSet.getString(2)));
    	f.add(label10);
        label10.setBounds(150, n,800, 169);
    	label10.setFont(fontop);
    	label10.setForeground(Color.BLACK);
    	n+=30;
    }
    n=270;
    resultSet = statement.executeQuery("SELECT AGE FROM PERSONALFORM");
    while (resultSet.next()) {
    	JLabel label11 = new JLabel((resultSet.getString(1)));
    	f.add(label11);
        label11.setBounds(600, n,800, 169);
    	label11.setFont(fontop);
    	label11.setForeground(Color.BLACK);
    	n+=30;
    }
    n=270;
    resultSet = statement.executeQuery("SELECT GENDER FROM PERSONALFORM");
    while (resultSet.next()) {
    	JLabel label12 = new JLabel((resultSet.getString(1)));
    	f.add(label12);
        label12.setBounds(900, n,800, 169);
    	label12.setFont(fontop);
    	label12.setForeground(Color.BLACK);
    	n+=30;
    }


    resultSet.close();
    statement.close();
 } catch (ClassNotFoundException e) {
     System.out.println("MySQL driver not found.");
     e.printStackTrace();
 } catch (SQLException e) {
     System.out.println("Connection failed.");
     e.printStackTrace();
     
}








         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         

         
// BACK BUTTON
JButton c=new JButton("Back ");
c. setBounds (1100, 800,180, 50);
c.addActionListener(new ActionListener(){
public void actionPerformed (ActionEvent e){
BORROWERLIST_PAGE.main(null);
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