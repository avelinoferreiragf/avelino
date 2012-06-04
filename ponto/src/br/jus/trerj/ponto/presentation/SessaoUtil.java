package br.jus.trerj.ponto.presentation;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

public class SessaoUtil implements Serializable {

	private static final long serialVersionUID = 7052054398188078551L;
	private static final Logger LOGGER = Logger.getLogger(SessaoUtil.class);
	
	public static Boolean isUsuarioLogado(HttpServletRequest request){
		if(request == null || request.getSession() == null || request.getSession().getAttribute("user") == null){
			return false;
		}
		return true;
	}
	public static void getUsuarioLogado(HttpServletRequest request, HttpServletResponse response){
		if(!isUsuarioLogado(request)){
			try{
				response.sendRedirect("/ponto/pages/acesso/timeout.jsp");
			}catch(Exception e){
				LOGGER.error(e);
			}
		}
	}
	public static String getDisplayTypeRequiredLogonItens(HttpServletRequest request){
		if(isUsuarioLogado(request))
			return "";
		return "display:none";
	}
}
