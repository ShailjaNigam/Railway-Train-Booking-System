import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.StringTokenizer;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.concurrent.ThreadLocalRandom;

import javax.swing.*;
import javax.swing.GroupLayout.Alignment;

import java.awt.*;
import java.awt.event.*;
import java.lang.Exception;

class CreateLoginForm extends JFrame implements ActionListener {

    JButton b1;
    JPanel newPanel;
    JLabel userLabel, passLabel;
    final JTextField textField1, textField2;

    CreateLoginForm() {

        userLabel = new JLabel();
        userLabel.setText("Username");

        textField1 = new JTextField(15);

        passLabel = new JLabel();
        passLabel.setText("Password");

        textField2 = new JPasswordField(15);

        b1 = new JButton("SUBMIT");

        newPanel = new JPanel(new GridLayout(3, 3));
        newPanel.add(userLabel);
        newPanel.add(textField1);
        newPanel.add(passLabel);
        newPanel.add(textField2);
        newPanel.add(b1);

        add(newPanel, BorderLayout.CENTER);

        b1.addActionListener(this);
        setTitle("LOGIN FORM");
    }

    public void actionPerformed(ActionEvent ae) {
        String userValue = textField1.getText();
        String passValue = textField2.getText();

        if (userValue.equals("shailja") && passValue.equals("shruti")) {

            NewPage page = new NewPage();

            page.setVisible(true);

            JLabel wel_label = new JLabel("Welcome: Railway Resevation System" + " " + userValue);
            page.getContentPane().add(wel_label);
        } else {

            System.out.println("Please enter valid username and password");
        }
    }
}

class LoginFormDemo {

    public static void main(String arg[]) {
        try {

            CreateLoginForm form = new CreateLoginForm();
            form.setSize(300, 200);
            form.setVisible(true);
        } catch (Exception e) {

            JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }
}


class QueryRunner implements Runnable
{
    //  Declare socket for client access
    protected Socket socketConnection;

    public QueryRunner(Socket clientSocket)
    {
        this.socketConnection =  clientSocket;
    }

    public void run()
    {
      try
        {
            //  Reading data from client
            InputStreamReader inputStream = new InputStreamReader(socketConnection
                                                                  .getInputStream()) ;
            BufferedReader bufferedInput = new BufferedReader(inputStream) ;
            OutputStreamWriter outputStream = new OutputStreamWriter(socketConnection
                                                                     .getOutputStream()) ;
            BufferedWriter bufferedOutput = new BufferedWriter(outputStream) ;
            PrintWriter printWriter = new PrintWriter(bufferedOutput, true) ;
            
            String clientCommand = "" ;
            String responseQuery = "" ;
            String queryInput = "" ;

            while(true)
            {
                // Read client query
                clientCommand = bufferedInput.readLine();
                // System.out.println("Recieved data <" + clientCommand + "> from client : " 
                //                     + socketConnection.getRemoteSocketAddress().toString());

                //  Tokenize here
                StringTokenizer tokenizer = new StringTokenizer(clientCommand);
                queryInput = tokenizer.nextToken();
                
                
                if(queryInput.equals('#'))
                {
                    String returnMsg = "Connection Terminated - client : " 
                                        + socketConnection.getRemoteSocketAddress().toString();
                    System.out.println(returnMsg);
                    inputStream.close();
                    bufferedInput.close();
                    outputStream.close();
                    bufferedOutput.close();
                    printWriter.close();
                    socketConnection.close();
                    return;
                }

                //-------------- your DB code goes here----------------------------
                // try
                // {
                //    // Thread.sleep(6000);
                // } 
                // catch (InterruptedException e)
                // {
                //     e.printStackTrace();
                // }
                int tic=Integer.parseInt(queryInput);
                int t=tic;	
                Connection connection = null;
	        String host="localhost";
	        String port="5432";
	        String db_name="postgres";
	        String username="postgres";
	        String password="root";
	        String s="";
	        
	       
	        
	        long pnr=ThreadLocalRandom.current().nextLong(1000000000L, 9999999999L);
	        System.out.println(pnr);
	        
	        
	   
	        //ThreadLocalRandom.current().nextLong(1000000000L, 9999999999L).forEach(System.out::println);
	        try {
	            Class.forName("org.postgresql.Driver");
	            connection = DriverManager.getConnection("jdbc:postgresql://"+host+":"+port+"/"+db_name+"", ""+username+"", ""+password+"");
	            if (connection != null) {
	                System.out.println("Connection OK");
	            } else {
	                System.out.println("Connection Failed");
	            }
	            String create_table="Create table pnr_"+pnr+" (index integer, name varchar)";
	            Statement stmt=connection.createStatement();
	            Statement stmt2=connection.createStatement();
	            Statement stmt3=connection.createStatement();
	            int r1=stmt.executeUpdate(create_table);
	           
	            for(int i=1;i<=t;i++){
                	String temp=tokenizer.nextToken();
                	if(i!=t)
                	temp=temp.substring(0,temp.length()-1);
                	String q="Insert into pnr_"+ pnr +" (index, Name) values (" +i+", '"+ temp+"' ) ";
                	System.out.println(q);
			int x=stmt.executeUpdate(q);
			System.out.println(temp+" "+x);
			//r.close();
              		
              		
		    }
	           String temp=tokenizer.nextToken();
	           int train_no=Integer.parseInt(temp);
	           String date=tokenizer.nextToken();
	           String type=tokenizer.nextToken();
	            
	            
	           String query="Insert into Ticket (PNR,Tdate,Train_no, Ticket_type, No_of_ticket ) values ( "+ pnr +", '" +date+"' , "+train_no+", '"+type+"' , "+tic+") ";
	           System.out.println(query);
	            int x=stmt.executeUpdate(query);
	            
	            System.out.println(x);
	            if (x>0){
	               query="Select a.name,b.coach_no,b.berth_no,b.berth_type from pnr_"+pnr+" A ,output_"+train_no+'_'+pnr+" B where A.index=B.index";
	            	ResultSet rs=stmt2.executeQuery(query);
	            	String p="Train_no : "+train_no+"       Date : "+date+"        PNR : "+pnr;
	            	printWriter.println(p);
	            	printWriter.println("Name  Coach  Berth_no  Berth_type");
	            	while(rs.next()){
	            		p= rs.getString(1)+"     "+rs.getString(2)+"      "+rs.getInt(3)+"       "+rs.getString(4);
	            		printWriter.println(p);
	            		System.out.println(p);
	            		System.out.println("eeeeeeeeeeeeeeeeeeeeeeeeeeeentry        ");
	            	}
	            	query="Drop table pnr_"+pnr;
	            	int l=stmt.executeUpdate(query);
	            	query="Drop table output_"+train_no+'_'+pnr;
	        	l=stmt.executeUpdate(query);
	            	rs.close();
	            }
	           else {
	           	String p="Train_no : "+train_no+"       Date : "+date;
	           	printWriter.println(p);
	            	responseQuery=" ______Not Available_______";
	            	printWriter.println(responseQuery );
	            	System.out.println("done        eeeeeeeeeeeeeeee");
	            	query="Drop table pnr_"+pnr;
	            	int l=stmt3.executeUpdate(query);
	            }
	            
	            System.out.println(train_no+" "+date +"  "+type+"  "+pnr  );
	            
			
                 printWriter.println();
                 printWriter.println();
            	 stmt.close();
            	 stmt2.close();
           	 connection.close();
            
        	} catch (Exception e) {
            		e.printStackTrace();
        	}

                //responseQuery =queryInput;

                //----------------------------------------------------------------
                
                //  Sending data back to the client
                 
                // System.out.println("\nSent results to client - " 
                //                     + socketConnection.getRemoteSocketAddress().toString() );
                
            }
        }
        catch(IOException e)
        {
            return;
        }
    }
}

/**
 * Main Class to controll the program flow
 */
public class ServiceModule 
{
    static int serverPort = 7005;
    static int numServerCores = 2 ;
    //------------ Main----------------------
    public static void main(String[] args) throws IOException 
    {    
        // Creating a thread pool
        ExecutorService executorService = Executors.newFixedThreadPool(numServerCores);
        
        //Creating a server socket to listen for clients
        ServerSocket serverSocket = new ServerSocket(serverPort); //need to close the port
        Socket socketConnection = null;
        
        // Always-ON server
        while(true)
        {
            System.out.println("Listening port : " + serverPort 
                                + "\nWaiting for clients...");
            socketConnection = serverSocket.accept();   // Accept a connection from a client
            System.out.println("Accepted client :" 
                                + socketConnection.getRemoteSocketAddress().toString() 
                                + "\n");
            //  Create a runnable task
            Runnable runnableTask = new QueryRunner(socketConnection);
            //  Submit task for execution   
            executorService.submit(runnableTask);   
        }
    }
}