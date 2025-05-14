/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entity.Client;

/**
 *
 * @author USER
 */
@Local
public interface ClientFacadeLocal {

    void create(Client client);

    void edit(Client client);

    void remove(Client client);

    Client find(Object id);

    List<Client> findAll();
    
    List<Client> clientWithHighestGlucose();
    
    Double averageGLreading();
    
    List<Client> viewByAverage(Integer min , Integer max);

    List<Client> findRange(int[] range);

    int count();
    
}
