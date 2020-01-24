package CT;
import databaseconnection.*;
import java.sql.*;
import java.io.*;

public class SkipImage {
public static void main(String email) {
try{
	
	Connection con =  databasecon.getconnection();
			
	PreparedStatement ps=con.prepareStatement("insert into profilepic values(?,?)");
		
	FileInputStream fin=new FileInputStream("user.jpg");
		
	ps.setBinaryStream(1,fin,fin.available());
	ps.setString(2,email);

	int i=ps.executeUpdate();
	System.out.println(i+" records affected");
	con.close();
			
}catch (Exception e) {e.printStackTrace();}
}
}
