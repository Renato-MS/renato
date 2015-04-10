
package com.br.bluesoft.HibernateDAO;



import br.com.bluesoft.HibernateUtil.HibernateUtil;
import br.com.bluesoft.modelo.Leitor;
import java.util.List;
import javax.swing.JOptionPane;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Renato Mendes
 */
public class LeitorDao implements InterfaceLeitorDAO{

    Session sessao;
    Transaction transacao = null;
    
    public LeitorDao(){
      this.sessao = HibernateUtil.getSessao();
    }
    
    @Override
    public void insereLeitor(Leitor leitor) { 
       try
       {
           transacao = sessao.beginTransaction();
           sessao.save(leitor);
           transacao.commit();
       }
       catch(HibernateException erro)
       {
           JOptionPane.showMessageDialog(null, "Erro hibernate\n"+erro);
           sessao.beginTransaction().rollback();
       }
    }

   
//método substiuido por MostraRanking 
     @Override
    public List listaLeitor() {
        //transacao = sessao.beginTransaction();
        List lista_Leitor = sessao.createQuery("from Leitor").list();
        return lista_Leitor;
    }
}
