package br.jus.trerj.ponto.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import br.jus.trerj.ponto.util.PropertieManager;

public class BaseServlet extends HttpServlet {

	private static final long serialVersionUID = -5851593626316483881L;
	private static final PropertieManager PROPERTIE_MANAGER = PropertieManager.getInstance();
	private Logger logger;
	public BaseServlet() {
	}
	public BaseServlet(Logger logger) {
		this();
		this.logger = logger;
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		this.doPost(req, resp);
	}
	

	public String getMessage(HttpServletRequest request, String messageKey){
		return PROPERTIE_MANAGER.getMessage(messageKey);
	}
	
	public void addMensagemSucesso(HttpServletRequest request, String mensagem){
		request.setAttribute("SUCESSO", mensagem);
	}
	public void addMensagemErro(HttpServletRequest request, Exception e){
		if(this.logger != null ){
			this.logger.error(e);
		}
		request.setAttribute("ERRO", e.getMessage());
	}
}
