
package br.com.bluesoft.HibernateUtil;

import javax.swing.JOptionPane;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author Renato Mendes
 * Classe reponsável para abrir apenas a sessão do hibernate com banco de dados
 */
public class HibernateUtil
{
    private static SessionFactory fabricaSessao;
    
    static
    {
        try
        {
            fabricaSessao = new Configuration().configure().buildSessionFactory();             
        }
        catch(HibernateException erro)
        {  
            JOptionPane.showMessageDialog(null, "Erro com o Hibernate\n"+erro);
        }  
    }
    
    public static Session getSessao(){
        return fabricaSessao.openSession();
    }
        
}
