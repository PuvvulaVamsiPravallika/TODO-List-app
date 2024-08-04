package dao;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import dto.Task;
import dto.User;
public class DAO 
{
	private Connection con;
	public DAO()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Loaded...");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csec?serverTimezone=UTC","root","");
			System.out.println("Connected");
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	//i want to store the register form details in database
	public boolean doRegister(String email,String password,String phone,String address)
	{
		boolean flag=false;
		try {
			PreparedStatement pstmt=con.prepareStatement("insert into register(email,password,phone,address) values(?,?,?,?)");
			pstmt.setString(1,email);
			pstmt.setString(2,password);
			pstmt.setString(3,phone);
			pstmt.setString(4,address);
			int r=pstmt.executeUpdate();
			if(r==1)
				flag=true;
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return flag;
	}
		public boolean addToDo(String email,String task,String startdate,String starttime,String enddate,String endtime)
		{
			boolean flag=false;
			try {
				PreparedStatement pstmt=con.prepareStatement("insert into tasks1(email,task,startdate,starttime,enddate,endtime) values(?,?,?,?,?,?)");
				pstmt.setString(1,email);
				pstmt.setString(2,task);
				pstmt.setString(3,startdate);
				pstmt.setString(4,starttime);
				pstmt.setString(5,enddate);
				pstmt.setString(6,endtime);
				int r=pstmt.executeUpdate();
				if(r==1)
					flag=true;
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return flag;
	    }
		public boolean updateToDo(int task_id,String task,String startdate,String starttime,String enddate,String endtime,String status)
		{
			boolean flag=false;
			try {
				
				String cmd="update tasks1 set task=?,startdate=?,starttime=?,enddate=?,endtime=?,status=? where taskid=?";
				PreparedStatement pstmt=con.prepareStatement(cmd);
				pstmt.setString(1,task);
				pstmt.setString(2,startdate);
				pstmt.setString(3,starttime);
				pstmt.setString(4,enddate);
				pstmt.setString(5,endtime);
				pstmt.setString(6,status);
				pstmt.setInt(7,task_id);
				int r=pstmt.executeUpdate();
				if(r==1)
					flag=true;
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return flag;
	    }
		public boolean deleteToDo(int task_id)
		{
			boolean flag=false;
			try {
				String cmd="delete from tasks1 where task_id=?";
				PreparedStatement pstmt=con.prepareStatement(cmd);
				pstmt.setInt(1,task_id);
				int r=pstmt.executeUpdate();
				if(r==1)
					flag=true;
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return flag;
	    }
		public boolean updateToUser(String email,String password,String phone,String address,String desig)
		{
			boolean flag=false;
			try {
				
				String cmd="update register set email=?,password=?,phone=?,address=? where desig=?";
				PreparedStatement pstmt=con.prepareStatement(cmd);
				pstmt.setString(1,email);
				pstmt.setString(2,password);
				pstmt.setString(3,phone);
				pstmt.setString(4,address);
				pstmt.setString(5,desig);
				int r=pstmt.executeUpdate();
				if(r==1)
					flag=true;
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return flag;
	    }
		public boolean deleteToUser(String email)
		{
			boolean flag=false;
			try {
				String cmd="delete from register where email=?";
				PreparedStatement pstmt=con.prepareStatement(cmd);
				pstmt.setString(1,email);
				int r=pstmt.executeUpdate();
				if(r==1)
					flag=true;
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return flag;
	    }
		
	    public ArrayList<Task> getAllTasks(String email)
	    {
	        ArrayList<Task> tasksList=new ArrayList<Task>();
	        //tasksList=1 object
	        //tasksList=2 object
	        try {
	            PreparedStatement pstmt=con.prepareStatement("select * from tasks1 where email=?");
	            pstmt.setString(1, email);
	            ResultSet rs=pstmt.executeQuery();
	            while(rs.next())
	            {
	                tasksList.add(new Task(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8)));
	            }
	        }catch(Exception ex)
	        {
	            ex.printStackTrace();
	        }
	        return tasksList;
	    }

	    public ArrayList<User> getAllUsers()
	    {
	        ArrayList<User> users=new ArrayList<User>();
	        try {
	            PreparedStatement pstmt=con.prepareStatement("select * from register");
	            ResultSet rs=pstmt.executeQuery();
	            while(rs.next())
	            {
	                users.add(new User(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5)));
	            }
	        }catch(Exception ex)
	        {
	            ex.printStackTrace();
	        }
	        return users;
	    }

	public String loginCheck(String email,String password)
	{
		String desig=null;
		try {
			PreparedStatement pstmt=con.prepareStatement("select * from register where email=? and password=?");
			pstmt.setString(1,email);
			pstmt.setString(2,password);
			ResultSet rs=pstmt.executeQuery();
			//
			//=> madhu@gmail.com | 123456   | 09912280626 | Vijayawada | user 
			if(rs.next())
			{
				desig=rs.getString("desig");
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return desig;
	}
}	
