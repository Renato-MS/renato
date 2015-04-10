/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.bluesoft.modelo;

/**
 *
 * @author Renato Mendes 
 */
public class Livro {
	private int codigo_livro;
	private String titulo_livro;
	private String autor_livro;
	private String ano_livro;
	
	
	public int getCodigo_livro() {
		return codigo_livro;
	}
	public void setCodigo_livro(int codigo_livro) {
		this.codigo_livro = codigo_livro;
	}
	public String getTitulo_livro() {
		return titulo_livro;
	}
	public void setTitulo_livro(String titulo_livro) {
		this.titulo_livro = titulo_livro;
	}
	public String getAutor_livro() {
		return autor_livro;
	}
	public void setAutor_livro(String autor_livro) {
		this.autor_livro = autor_livro;
	}
	public String getAno_livro() {
		return ano_livro;
	}
	public void setAno_livro(String ano_livro) {
		this.ano_livro = ano_livro;
	}
	
	
}

