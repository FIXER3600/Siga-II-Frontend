package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Jogo;
import persistence.GenericDao;
import persistence.IJogoDao;
import persistence.JogoDao;

@WebServlet("/ServletJogo")
public class ServletJogo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private IJogoDao jDao;
	
    public ServletJogo()  throws ClassNotFoundException, SQLException{
        super();
        this.jDao = new JogoDao(new GenericDao());
        		
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String botao = request.getParameter("gerar_jogos");
    	List<Jogo> jogos = new ArrayList<Jogo>();
    	String erro = "";
    	String saida = "";
    	try {
    		if(botao.equals("Gerar Jogos")) {
    			jDao.gerarJogos();
    			jogos = this.jDao.listarJogos();
    		}
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}finally {
			RequestDispatcher rd = request.getRequestDispatcher("jogos.jsp");
			request.setAttribute("erro", erro);
			request.setAttribute("saida", saida);
			request.setAttribute("jogos", jogos);
			rd.forward(request, response);
		}
	}

}
