package com.servlets;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class ControladorProductos
 */
@WebServlet("/ControladorProductos")
public class ControladorProductos extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	private ModeloProducto modeloProductos;
	
	@Resource(name="jdbc/Productos")
	private DataSource miPool;
	
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		
		try {
			modeloProductos = new ModeloProducto(miPool);
		}catch (Exception e) {
			throw new ServletException(e);
		}
	}




	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String elComando = request.getParameter("instruccion");
		
		if (elComando == null) elComando = "Listar";
		
		switch(elComando) {
			case "Listar":
				obtenerProductos(request, response);
				break;
			case "insertarBBDD":
				agregarProducto(request, response);
				break;
			default:
				break;
		}
		
	
	}




	private void agregarProducto(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String codArticulo = request.getParameter("CArt");
		String seccion = request.getParameter("seccion");
		String nombreArticulo = request.getParameter("NArt");
		
		SimpleDateFormat formatoFecha = new SimpleDateFormat("yyyy-MM-dd");
		Date fecha = null;
		try {
			fecha = formatoFecha.parse(request.getParameter("fecha"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		double precio = Double.parseDouble(request.getParameter("precio"));
		int importado = Integer.parseInt(request.getParameter("importado"));
		String PaisOrigen = request.getParameter("POrig");
		
		Producto nuevoProducto = new Producto(codArticulo, seccion, nombreArticulo, precio, fecha, importado, PaisOrigen);
	
		modeloProductos.agregarProducto(nuevoProducto);
	
		obtenerProductos(request, response);
	}




	private void obtenerProductos(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		List<Producto> productos;
		try {
			productos = modeloProductos.getProductos();
			request.setAttribute("LISTAPRODUCTOS", productos);
			RequestDispatcher miRequestDispatcher = request.getRequestDispatcher("/ListaProductos.jsp");
			miRequestDispatcher.forward(request, response);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
