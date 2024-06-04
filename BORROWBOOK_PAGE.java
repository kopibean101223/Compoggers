import java.awt.event.*;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.*;
import java.awt.*;
import java.time.LocalDate;

import java.time.format.DateTimeFormatter;


public class BORROWBOOK_PAGE {
	public static String nmr;
	public static JComboBox<String> comboBox = new JComboBox<>();
	public static String selectedItem;
	public static long daysBetween;
	
	
	
public static void main (String[] args) {

JFrame f=new JFrame("TMC'S LIBRARY MANAGEMENT SYSTEM");
f. getContentPane(). setLayout(null);
Font fontop = new Font("BAHNSCHRIFT", Font.BOLD, 20);

f.add(comboBox);
comboBox.setBounds(350, 565,300, 30);
//HEADER{
JLabel label1 = new JLabel(" WELCOME TO TMC'S LIBRARY MANAGEMENT SYSTEM");
JLabel label2 = new JLabel("");
f.add(label1);
f.add(label2);
label2.setBounds(0, 0,1440, 169);
label1.setBounds(100, 0,1440, 169);

Font fonttitle = new Font("BAHNSCHRIFT", Font.BOLD, 48);
Font fonttitle2 = new Font("BAHNSCHRIFT", Font.BOLD, 14);
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
JLabel label3 = new JLabel("BOOK BORROWING FORM");
f.add(label3);
label3.setBounds(500, 180,800, 169);
label3.setFont(fonttitle);
label3.setBackground(Color.BLACK);
//FORM

//LINE
JLabel label4 = new JLabel("");
f.add(label4);
label4.setBounds(350, 300,950, 1);
label4.setFont(fonttitle);
label4.setOpaque(true);
label4.setBackground(Color.BLACK);
//LINE

//LINE
JLabel label5 = new JLabel("");
f.add(label5);
label5.setBounds(350, 495,950, 1);
label5.setFont(fonttitle);
label5.setOpaque(true);
label5.setBackground(Color.BLACK);
//LINE
JTextField idchecker;

JLabel idchkerlbl =new JLabel ("ID:");
idchkerlbl.setFont(fonttitle2);
idchecker=new JTextField(15);
idchkerlbl.setBounds(350, 330,300, 30);
idchecker.setBounds(350, 360,630, 30);
f.add(idchkerlbl);
f.add(idchecker);
idchecker.setFont(fontop);


JLabel brdtlbl = new JLabel("DATE BORROWED: (TODAY)");
f.add(brdtlbl);
brdtlbl.setFont(fonttitle2);
brdtlbl.setBounds(350, 620,300, 30);
JLabel dtdulbl = new JLabel("DUE DATE: ");
f.add(dtdulbl);
dtdulbl.setFont(fonttitle2);
dtdulbl.setBounds(675, 620,300, 30);
	
	Color customColor3 = new Color(224, 228, 230);

	JLabel lblfname=new JLabel ("FIRST NAME: ");
	lblfname.setBounds(350, 400,300, 30);
	lblfname.setFont(fonttitle2);
    f.add(lblfname);
    JLabel lblmname=new JLabel ("LAST NAME: ");
    lblmname.setBounds(675, 400,300, 30);
    lblmname.setFont(fonttitle2);
    f.add(lblmname);
    JLabel lblinitial=new JLabel ("MIDDLE INITIAL: ");
    lblinitial.setBounds(1000, 400,300, 30);
    lblinitial.setFont(fonttitle2);
    f.add(lblinitial);
    JLabel lbltype=new JLabel ("TYPE: ");
    lbltype.setBounds(1155, 400,300, 30);
    lbltype.setFont(fonttitle2);
    f.add(lbltype);
    

	JTextField ttl =new JTextField ();
	f.add(ttl);
 	ttl.setBounds(675, 565,300, 30);
 	ttl.setOpaque(true);
 	ttl.setEditable(false);
 	ttl.setBackground(customColor3);
 	ttl.setBorder(BorderFactory.createLineBorder(Color.BLACK, 1, true));
 	ttl.setForeground(Color.BLACK);
 	ttl.setFont(fontop);
 	
 	JTextField stts =new JTextField ();
 	f.add(stts);
 	stts.setBounds(1000, 565,300, 30);
 	stts.setOpaque(true);
 	stts.setEditable(false);
 	stts.setBackground(customColor3);
 	stts.setBorder(BorderFactory.createLineBorder(Color.BLACK, 1, true));
 	stts.setForeground(Color.BLACK);
 	stts.setFont(fontop);
 	
 	JTextField brdt =new JTextField ();
	f.add(brdt);
	brdt.setBounds(350, 650,300, 30);
	brdt.setOpaque(true);
	brdt.setEditable(false);
	brdt.setBackground(customColor3);
	brdt.setBorder(BorderFactory.createLineBorder(Color.BLACK, 1, true));
	brdt.setForeground(Color.BLACK);
	brdt.setFont(fontop);
	
	JTextField dtdu =new JTextField ();
 	f.add(dtdu);
 	dtdu.setBounds(675, 650,300, 30);
 	dtdu.setOpaque(true);
 	dtdu.setEditable(false);
 	dtdu.setBackground(customColor3);
 	dtdu.setBorder(BorderFactory.createLineBorder(Color.BLACK, 1, true));
 	dtdu.setForeground(Color.BLACK);
 	dtdu.setFont(fontop);
 	
 	JTextField fname = new JTextField ();
 	f.add(fname);
 	fname.setBounds(350, 430,300, 30);
 	fname.setOpaque(true);
 	fname.setEditable(false);
 	fname.setBackground(customColor3);
 	fname.setBorder(BorderFactory.createLineBorder(Color.BLACK, 1, true));
 	fname.setForeground(Color.BLACK);
 	fname.setFont(fontop);
 	
 	JTextField lname =new JTextField ();
 	f.add(lname);
 	lname.setBounds(675, 430,300, 30);
 	lname.setOpaque(true);
 	lname.setEditable(false);
 	lname.setBackground(customColor3);
 	lname.setBorder(BorderFactory.createLineBorder(Color.BLACK, 1, true));
 	lname.setForeground(Color.BLACK);
 	lname.setFont(fontop);
 	
 	JTextField mname =new JTextField ();
 	
 	f.add(mname);
 	mname.setBounds(1000, 430,145, 30);
 	mname.setOpaque(true);
 	mname.setEditable(false);
 	mname.setBackground(customColor3);
 	mname.setBorder(BorderFactory.createLineBorder(Color.BLACK, 1, true));
 	mname.setForeground(Color.BLACK);
 	mname.setFont(fontop);
 	
 	JTextField type =new JTextField ();
 	f.add(type);
 	
 	type.setBounds(1155, 430,145, 30);
 	type.setOpaque(true);
 	type.setEditable(false);
 	type.setBackground(customColor3);
 	type.setBorder(BorderFactory.createLineBorder(Color.BLACK, 1, true));
 	type.setForeground(Color.BLACK);
 	type.setFont(fontop);
 	
 	

    LocalDate today = LocalDate.now();

    // Format the date as desired
    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    String formattedDate = today.format(formatter);
   
    
  



    // Set today's date in the text field
    LocalDate outputDate = today.plusDays(3);
    String formattedDate2 = outputDate.format(formatter);
    
    
    
    
    		
 	
 	
 	
 	
JButton chckbtn=new JButton("Check For Record");
chckbtn.setBounds (1000, 360,300, 30);
chckbtn.addActionListener(new ActionListener(){
public void actionPerformed (ActionEvent e){
	String values = idchecker.getText().trim();
    if (values.isEmpty()) {
        JOptionPane.showMessageDialog(f, "Please enter a value in the text field.", "Error", JOptionPane.ERROR_MESSAGE);
        return;
    }
    fname.setText("");
    lname.setText("");
    mname.setText("");
    type.setText("");
    
    
   
										try {// Load the MySQL driver
									 	    Class.forName("com.mysql.cj.jdbc.Driver");
									
									 	    // Set up the connection URL
									 	    String url = "jdbc:mysql://localhost:3306/comprog";
									
									
									 	    // Connect to the database
									 	    Connection conn = DriverManager.getConnection(url, "root", "");
									 	    Statement statement = conn.createStatement();
									 	   comboBox.removeAllItems();
										 	  comboBox.addItem(null);
									 	 //COMBO BOX AND DISPLAY 	    
									 	   	
									 	 
									 	 
									 	   ResultSet resultSetss = statement.executeQuery("SELECT LASTNAME, FIRSTNAME, INITIAL,TYPE FROM BORROWER_TABLE WHERE ID = "+"'"+idchecker.getText()+"';");
									 	   
									 	  if (resultSetss.next()) {
									 		
									 		  fname.setText(resultSetss.getString("FIRSTNAME"));
									 		 lname.setText(resultSetss.getString("LASTNAME"));
									 		mname.setText(resultSetss.getString("INITIAL"));
									 		type.setText(resultSetss.getString("TYPE"));
									 		
									 		
 	 //COMBO BOX AND DISPLAY				
									 	  } else {
						                        JOptionPane.showMessageDialog(f, "The ID you entered does not exist!", "ERROR", JOptionPane.INFORMATION_MESSAGE);
										  return;  
									 	  }
 	    
 	    resultSetss.close();
 	    statement.close();
 	    } catch (ClassNotFoundException ef) {
 	        System.out.print("ha");
 	        ef.printStackTrace();
 	    } catch (SQLException ef) {
 	        System.out.print("ha");
 	        ef.printStackTrace();
 	   }
										
										
										
										

try {// Load the MySQL driver
    Class.forName("com.mysql.cj.jdbc.Driver");

    // Set up the connection URL
    String url = "jdbc:mysql://localhost:3306/comprog";


    // Connect to the database
    Connection conn = DriverManager.getConnection(url, "root", "");
    Statement statement = conn.createStatement();
    
    

    ResultSet resultSet = statement.executeQuery("SELECT TITLE FROM BOOK_DETAILS WHERE STATUS != 'BORROWED' ORDER BY CATEGORY;");

    while (resultSet.next()) {
    	String value = resultSet.getString(1);
    	comboBox.addItem(value);
    	brdt.setText("");
        dtdu.setText("");
        ttl.setText("");
        stts.setText("");
        comboBox.setSelectedItem(null);
    }
    
    
    comboBox.setFont(fontop);
    
    comboBox.addItemListener(new ItemListener() {
        @Override
        public void itemStateChanged(ItemEvent ex) {
            if (ex.getStateChange() == ItemEvent.SELECTED) {
               String selectedItem = (String) ex.getItem();
                nmr = selectedItem;

                System.out.println("Selected item: " + selectedItem);
                try {// Load the MySQL driver
            	    Class.forName("com.mysql.cj.jdbc.Driver");

            	    // Set up the connection URL
            	  String  url = "jdbc:mysql://localhost:3306/comprog";


            	    // Connect to the database
            	   Connection connc = DriverManager.getConnection(url, "root", "");
            	  Statement statements = connc.createStatement();
            	    

                	    ResultSet resultSet2 = statements.executeQuery("SELECT CATEGORY FROM BOOK_DETAILS WHERE TITLE = " + "'" + selectedItem+ "';");
                	    while (resultSet2.next()) {
                	    	ttl.setText(resultSet2.getString(1));
                	    	


                	    }
                	    
                	    ResultSet resultSet3 = statements.executeQuery("SELECT STATUS FROM BOOK_DETAILS WHERE TITLE = " + "'" + selectedItem+ "';");
                	    while (resultSet3.next()) {
                	    	stts.setText(resultSet3.getString(1));
                	    	
                	    }
                	    

                	        brdt.setText(formattedDate);
                	        dtdu.setText(formattedDate2);


                	    resultSet.close();
                	    statement.close();
                	    } catch (ClassNotFoundException e) {
                	        System.out.print("");
                	        e.printStackTrace();
                	    } catch (SQLException e) {
                	        System.out.print("");
                	        e.printStackTrace();
                	        JOptionPane.showMessageDialog(f, "Error!");
                	        
                	   }
                
            }
        }
    });
     
    
    
    
    resultSet.close();
    statement.close();
    } catch (ClassNotFoundException ef) {
        System.out.print("");
        ef.printStackTrace();
    } catch (SQLException ef) {
        System.out.print("");
        ef.printStackTrace();
   }
 	
										
										
										
										
										
										
										
										
										
}
});


f.add(chckbtn);
 

	
         
         //BORROWER TYPE WITH TEXTBOX

         
         //BORROWER TYPE WITH TEXTBOX
         
         
         //BORROWER TYPE WITH TEXTBOX


         JLabel lbl6=new JLabel ("BOOK TO BE BORROWED: ");
         lbl6.setBounds(350, 530,300, 30);
         lbl6.setFont(fonttitle2);
         f.add(lbl6);
         
         JLabel lblbooktype=new JLabel ("BOOK TYPE: ");
         lblbooktype.setBounds(675, 530,300, 30);
         lblbooktype.setFont(fonttitle2);
         f.add(lblbooktype);
         
         JLabel lblbookstatus=new JLabel ("BOOK STATUS: ");
         lblbookstatus.setBounds(1000, 530,300, 30);
         lblbookstatus.setFont(fonttitle2);
         f.add(lblbookstatus);
         


         //BORROWER TYPE WITH TEXTBOX
         

     
         
// HOME BUTTON
JButton subton=new JButton("BORROW");
subton. setBounds (1000, 620,300, 60);
subton.addActionListener(new ActionListener(){
public void actionPerformed (ActionEvent e){
	String values = idchecker.getText().trim();
    if (values.isEmpty()) {
        JOptionPane.showMessageDialog(f, "Please enter a value in the text field.", "Error", JOptionPane.ERROR_MESSAGE);
        return;
    }
    if (nmr == null) {
    	JOptionPane.showMessageDialog(f, "Please Choose from the combobox.", "Error", JOptionPane.ERROR_MESSAGE);
    return;
    }	
    
	
    
    
    
    
    
    
    
    
    
    
    
    try {
        // Load the MySQL driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Set up the connection URL
        String url = "jdbc:mysql://localhost:3306/comprog";

        // Connect to the database
        Connection conn = DriverManager.getConnection(url, "root", "");
        Statement statement = conn.createStatement();

       
	    	    
	    	
	    	

        // Fetch the type of the borrower
        ResultSet resultSet1 = statement.executeQuery("SELECT TYPE FROM BORROWER_TABLE WHERE ID = '" + idchecker.getText() + "';");
        
        if (resultSet1.next()) { // Check if the ID exists
            String type = resultSet1.getString("TYPE");

            if ("STUDENT".equals(type)) { // Correctly compare the strings
                // Fetch the count of borrowed books
                ResultSet resultSet2 = statement.executeQuery("SELECT COUNT(*) AS book_count FROM book_details WHERE BORROWER_ID = '" + idchecker.getText() + "';");

                if (resultSet2.next()) {
                    int bookCount = resultSet2.getInt("book_count");
                   
                    if (bookCount >= 2) {
                        JOptionPane.showMessageDialog(f, "Sorry! You have exceeded the number of books to be borrowed!", "ERROR", JOptionPane.INFORMATION_MESSAGE);
                        return;
                    }
                }
            } else if ("TEACHER".equals(type)) {
            	ResultSet resultSet2 = statement.executeQuery("SELECT COUNT(*) AS book_count FROM book_details WHERE BORROWER_ID = '" + idchecker.getText() + "';");
            	if (resultSet2.next()) {
                    int bookCount = resultSet2.getInt("book_count");
                   
                    if (bookCount >= 5) {
                        JOptionPane.showMessageDialog(f, "Sorry! You have exceeded the number of books to be borrowed!", "ERROR", JOptionPane.INFORMATION_MESSAGE);
                        return;
                    }
                }
            }
            
            
            
            
        }

    } catch (Exception eh) {
        eh.printStackTrace();
    }
    
    
 	  
 	  
 	  

    String url = "jdbc:mysql://localhost:3306/comprog";
    String user = "root";
    String password = "";

    try {
        Connection conn = DriverManager.getConnection(url, user, password);
        Statement statement = conn.createStatement();
        
        String query2 = ("UPDATE BOOK_DETAILS SET STATUS = 'BORROWED' WHERE TITLE = "+"'"+ nmr  + "';");	
   			   			String query3 = ("UPDATE BOOK_DETAILS SET BORROWER_ID = "+"'"+idchecker.getText()+"'"+" WHERE TITLE = "+"'"+ nmr  + "';");				
			   					String query4 = ("UPDATE BOOK_DETAILS SET BORROWED_DATE = "+"'"+brdt.getText()+"'"+" WHERE TITLE = "+"'"+ nmr  + "';");
						   				String query5 = ("UPDATE BOOK_DETAILS SET DATE_DUE = "+"'"+dtdu.getText()+"'"+" WHERE TITLE = "+"'"+ nmr  + "';");

   				

   					

	   				statement.executeUpdate(query2);
	   				statement.executeUpdate(query3);
	   				statement.executeUpdate(query4);
	   				statement.executeUpdate(query5);

	   				statement.close();
	   	JOptionPane.showMessageDialog(f, "You have successfully borrowed " +nmr+"!", " THANK YOU FOR BORROWING!!!", JOptionPane.INFORMATION_MESSAGE);
        System.out.println("Inserted successfully!");
        comboBox.removeItem(nmr);
        brdt.setText("");
        dtdu.setText("");
        ttl.setText("");
        stts.setText("");
        comboBox.setSelectedItem(null);


    } catch (SQLException ex) {
    	JOptionPane.showMessageDialog(f, "Error: " + ex.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
    }


    
    
}
}   
    
	

  


) ;
// HOME BUTTON     
         
         
// BACK BUTTON
JButton c=new JButton("Back ");
c. setBounds (50, 280,180, 50);
c.addActionListener(new ActionListener(){
public void actionPerformed (ActionEvent e){
HOMEPAGE.main(null);
f.dispose();
}
}) ;
// BACK BUTTON

// HOME BUTTON
JButton home=new JButton("Home");
home. setBounds (50, 220,180, 50);
home.addActionListener(new ActionListener(){
public void actionPerformed (ActionEvent e){
HOMEPAGE.main(null);
f.dispose();
}
}) ;
// HOME BUTTON


//CUSTOMIZE BUTTONS
Font fontbutton = new Font("ARIAL",Font.BOLD, 20);
home.setFont(fontbutton);
c.setFont(fontbutton);
subton.setFont(fontbutton);
chckbtn.setFont(fontbutton);
subton.setBackground(customColor2);
subton.setForeground(Color.WHITE);
f.add(home);
f.add(c);
f.add(subton);
c.setForeground(Color.WHITE);
c.setBackground(customColor2);
home.setForeground(Color.WHITE);
home.setBackground(customColor2);
chckbtn.setBackground(customColor2);
chckbtn.setForeground(Color.WHITE);

//CUSTOMIZE BUTTONS

JLabel bg = new JLabel("");
f.add(bg);
bg.setBounds(300, 200,1050, 540);

bg.setBackground(Color.WHITE);
bg.setOpaque(true);

// CUSTOMIZE FRAME}
f.setSize(1440,800);
f.setVisible(true);
f.setResizable(false);
// CUSTOMIZE FRAME}

}
}
