package br.com.bluesoft.filtro;

import javax.servlet.*;
import java.io.IOException;
import javax.persistence.*;

public class JPAFiltro implements Filter {
	
	private EntityManagerFactory factory;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException{
		this.factory = Persistence.createEntityManagerFactory("LIVRO-PU");
	}
	
	@Override
	public void destroy(){
		this.factory.close();
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)throws IOException, ServletException{
		
		EntityManager manager = this.factory.createEntityManager();
		request.setAttribute("EntityManager", manager);
		manager.getTransaction().begin();
		
		//filtro a ser usado pelo STRUTS
		chain.doFilter(request, response);
		
		try{
			manager.getTransaction().commit();
		}catch(Exception e){
			manager.getTransaction().rollback();
		}finally{
			manager.close();
		}
	}

}
