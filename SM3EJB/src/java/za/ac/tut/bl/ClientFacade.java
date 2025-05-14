/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entity.Client;

/**
 *
 * @author USER
 */
@Stateless
public class ClientFacade extends AbstractFacade<Client> implements ClientFacadeLocal {

    @PersistenceContext(unitName = "SM3EJBPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ClientFacade() {
        super(Client.class);
    }

    @Override
    public List<Client> clientWithHighestGlucose() {
       Query Highestquery = em.createQuery("SELECT MAX(c.glocoseLevel) FROM Client c ");
       Integer HGL = (Integer) Highestquery.getSingleResult();
       
       Query query = em.createQuery("SELECT c FROM Client c WHERE c.glocoseLevel = :HGL");
       query.setParameter("HGL", HGL);
       
       return query.getResultList();
    }

    @Override
    public Double averageGLreading() {
   
        Query average = em.createQuery("SELECT AVG(c.glocoseLevel) FROM Client c ");
        Double av = (Double) average.getSingleResult();
    return av;
    }

    @Override
    public List<Client> viewByAverage(Integer min, Integer max) {
       Query getThoseBoys = em.createQuery("SELECT c FROM Client c WHERE c.glocoseLevel >= :min AND c.glocoseLevel <= :max");
       getThoseBoys.setParameter("max", max);
       getThoseBoys.setParameter("min", min);
       
       return getThoseBoys.getResultList();
        
    }
    
}
