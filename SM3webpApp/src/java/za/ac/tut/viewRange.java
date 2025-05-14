/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.bl.ClientFacadeLocal;
import za.ac.tut.entity.Client;

/**
 *
 * @author USER
 */
public class viewRange extends HttpServlet {

  
    @EJB
    private ClientFacadeLocal sfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Integer min = Integer.parseInt(request.getParameter("min"));
        Integer max = Integer.parseInt(request.getParameter("max"));
        
        List<Client> clients = sfl.viewByAverage(min, max);
        
        request.setAttribute("clients", clients);
        request.setAttribute("min", min);
        request.setAttribute("max", max);
        
        RequestDispatcher resman = request.getRequestDispatcher("rangedViewed.jsp");
        resman.forward(request, response);
    
    }

   
}
