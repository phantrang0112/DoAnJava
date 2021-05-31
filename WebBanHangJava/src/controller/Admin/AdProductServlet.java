package controller.Admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductModel;

@WebServlet(value = "/Admin/Products")
public class AdProductServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private ProductModel productModel = new ProductModel();
	
	public AdProductServlet() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String message = "";
		String page = "Product/Products.jsp";
		request.setAttribute("thong bao", message);
		request.setAttribute("products", productModel.getlistFilter());
		request.getRequestDispatcher(page).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
