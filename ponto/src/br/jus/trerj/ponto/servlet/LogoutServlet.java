package br.jus.trerj.ponto.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

public class LogoutServlet extends BaseServlet {

	private static final long serialVersionUID = 1553859072222063868L;
	private static final Logger LOGGER = Logger.getLogger(LogoutServlet.class);
	public LogoutServlet() {
		super(LOGGER);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			if(request != null && request.getSession() != null){
				request.getSession().invalidate();
			}
			
		} catch (Exception e) {
			this.addMensagemErro(request, e);
		}
		this.getServletContext().getRequestDispatcher("/pages/acesso/logout.jsp").forward(request, response);
	}
}
