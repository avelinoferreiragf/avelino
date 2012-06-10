package br.jus.trerj.ponto.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class IndeferirPedidoAbonoServlet extends BaseServlet {

	private static final long serialVersionUID = -773660658493984594L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String justificativaIndeferimento = (String)request.getParameter("justificativaIndeferimento");
		Long idPedido = null;
		Integer indexNaTabela = null;
		request.setAttribute("justificativaIndeferimento", justificativaIndeferimento);
		try{
			idPedido = (request.getParameter("idPedidoAvaliado") != null && !request.getParameter("idPedidoAvaliado").equals("") ? Long.valueOf(request.getParameter("idPedidoAvaliado")) : null);
			indexNaTabela = Integer.valueOf(request.getParameter("indexNaTabela"));
			throw new Exception("Justificativa não foi informada");
		}catch(Exception e){
			request.setAttribute("justificativaIndeferimento", justificativaIndeferimento);
			request.setAttribute("idPedido", idPedido);
			request.setAttribute("indexNaTabela", indexNaTabela);
			request.setAttribute("erroAoIndeferir", true);
			this.addMensagemErro(request, e);
		}
		this.getServletContext().getRequestDispatcher("/pages/espelhoPonto/espelhoPonto.jsp").forward(request, response);
	}

}
