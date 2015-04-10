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
public class Leitor {
	private int codigo_leitor;
	private int codigo_livro;
	private String nome_leitor;
	private String email_leitor;
	
	
	public int getCodigo_leitor() {
		return codigo_leitor;
	}
	public void setCodigo_leitor(int codigo_leitor) {
		this.codigo_leitor = codigo_leitor;
	}
	public String getNome_leitor() {
		return nome_leitor;
	}
	public void setNome_leitor(String nome_leitor) {
		this.nome_leitor = nome_leitor;
	}
	public String getEmail_leitor() {
		return email_leitor;
	}
	public void setEmail_leitor(String email_leitor) {
		this.email_leitor = email_leitor;
	}
	public int getCodigo_livro() {
		return codigo_livro;
	}
	public void setCodigo_livro(int codigo_livro) {
		this.codigo_livro = codigo_livro;
	}
	
		
}

