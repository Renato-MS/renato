package br.com.bluesoft.action;

import java.util.List;

import br.com.bluesoft.model.Livro;
import br.com.bluesoft.model.ListaLivro;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class LivroAction extends ActionSupport {

	private List<Livro> livro;
	
	public String lista(){
		ListaLivro manipula = new ListaLivro();
		this.livro = manipula.listaLivro();
		return LivroAction.SUCCESS;
	}
}
