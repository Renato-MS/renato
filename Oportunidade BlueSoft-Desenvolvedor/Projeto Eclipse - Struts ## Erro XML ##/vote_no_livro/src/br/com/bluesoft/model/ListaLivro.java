package br.com.bluesoft.model;

import java.util.ArrayList;
import java.util.List;



public class ListaLivro {

	private static List<Livro> livro = new ArrayList<Livro>();
	
	public List<Livro> listaLivro(){
		return new ArrayList<Livro>(ListaLivro.livro);
	}	
	
	
}
