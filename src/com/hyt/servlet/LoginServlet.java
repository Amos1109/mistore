package com.hyt.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		 String vericode=request.getParameter("vericode");
	        String generatedCode= (String) request.getSession().getAttribute("verityCode");
	        if(username!=null&&password!=null&&vericode!=null) {
	        	
	        
			if("18164308".equals(username)&&"18164308".equals(password)&&vericode.toLowerCase().equals(generatedCode.toLowerCase())) {
				HttpSession session=request.getSession();
				session.setAttribute("username", username);
				response.sendRedirect(request.getContextPath()+"/index.jsp");
			}
			else {
					PrintWriter out=response.getWriter();
					out.print("<script language='javascript'>alert('Wrong information!');window.location.href='login.jsp';</script>");
				
			}
	        }
	        else {
	        	response.sendRedirect(request.getContextPath()+"/login.jsp");
	        }
	}

}
