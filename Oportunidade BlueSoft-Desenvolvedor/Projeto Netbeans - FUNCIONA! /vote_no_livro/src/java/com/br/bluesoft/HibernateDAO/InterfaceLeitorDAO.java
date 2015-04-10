package com.br.bluesoft.HibernateDAO;

import br.com.bluesoft.modelo.Leitor;
import java.util.List;

/**
 *
 * @author Renato Mendes
 */
public interface InterfaceLeitorDAO {
    
    public void insereLeitor(Leitor leitor);
    
    public List listaLeitor();
   
}
