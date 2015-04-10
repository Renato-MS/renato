package br.com.bluesoft.model;

import java.util.ArrayList;
import java.util.List;

public class InsereLeitor {
	private static List<Leitor> leitor = new ArrayList<Leitor>();
	
	public Leitor exibeLeitor(int id){
		return InsereLeitor.leitor.get(id - 1);
	}
	
	public void insere(Leitor leitor){
		leitor.setCodigo_leitor(InsereLeitor.leitor.size() + 1);
		InsereLeitor.leitor.add(leitor);
	}
	
}
