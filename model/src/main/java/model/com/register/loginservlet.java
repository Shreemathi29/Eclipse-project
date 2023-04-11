package model.com.register;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


@WebServlet("/login")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       




	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

			String uname = request.getParameter("username");
			String upwd =  request.getParameter("password");
			String ucpwd = request.getParameter("confirm password");
			HttpSession session = request.getSession();
			RequestDispatcher dispatcher = null;
			try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shr","root","Shree@2001");
				PreparedStatement pst = con.prepareStatement("select * from mine where uname = ? and upwd = ? ");
				pst.setString(1, uname);
				pst.setString(2, upwd);
				pst.setString(3, ucpwd);
				
				ResultSet rs = pst.executeQuery();
				if (rs.next()) {
					session.setAttribute("name", rs.getString("uname"));
					dispatcher = request.getRequestDispatcher("super.jsp");
				}else {
					request.setAttribute("status", "failed");
					dispatcher = request.getRequestDispatcher("login.jsp");
				}
				dispatcher.forward(request, response);
				
				} catch (Exception e) {
				      e.printStackTrace();
			}
			}
		}
		
		
		
		
		
		
	


