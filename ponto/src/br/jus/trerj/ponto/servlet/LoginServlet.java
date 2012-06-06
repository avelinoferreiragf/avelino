package br.jus.trerj.ponto.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

public class LoginServlet extends BaseServlet {

	private static final long serialVersionUID = 1553859072222063868L;
	private static final Logger LOGGER = Logger.getLogger(LoginServlet.class);
	public LoginServlet() {
		super(LOGGER);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			throw new NullPointerException("Login não implementado");
		} catch (Exception e) {
			this.addMensagemSucesso(request, e.getMessage());
		}
		this.getServletContext().getRequestDispatcher("/pages/acesso/login.jsp").forward(request, response);
	}
}
