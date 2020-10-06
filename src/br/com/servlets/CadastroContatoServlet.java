package br.com.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.model.Contato;

@WebServlet("/CadastroContatoServlet")
public class CadastroContatoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private Contato contato;
	public static List<Contato> contatos;

	public CadastroContatoServlet() {

		this.contatos = new ArrayList<Contato>();
	}

	public static List<Contato> pegarContatos() {
		return contatos;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		String endereco = request.getParameter("endereco");
		String senha = request.getParameter("senha");

		this.contato = new Contato(nome, email, telefone, endereco, senha);

		this.contatos.add(this.contato);

		for (Contato x : contatos) {
			System.out.println(x.getNome());

		}
		System.out.println("Funfa");

		request.setAttribute("contatos", contatos);
		RequestDispatcher rd = request.getRequestDispatcher("listaContatos.jsp");
		rd.forward(request, response);
	}

}
