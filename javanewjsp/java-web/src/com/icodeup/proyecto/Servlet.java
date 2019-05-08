package com.icodeup.proyecto;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("ingreso al metodo GET de Servlet");
		System.out.println(request.getParameter("var1"));
		System.out.println(request.getParameter("var2"));
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("ingreso al metodo POST de Servlet");
		System.out.println(request.getParameter("Nombre"));
		System.out.println(request.getParameter("Apellido"));
		System.out.println(request.getParameter("telefono"));
		System.out.println(request.getParameter("edad"));
		System.out.println(request.getParameter("pass"));
		System.out.println(request.getParameter("email"));
		System.out.println(request.getParameter("sexo"));
		System.out.println(request.getParameter("departamento"));
		System.out.println(request.getParameter("comentarios"));
		
		
		
		
	}

}
