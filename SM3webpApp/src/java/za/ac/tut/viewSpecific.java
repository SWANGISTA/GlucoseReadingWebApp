/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut;

import java.io.IOException;
import java.io.PrintWriter;
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
public class viewSpecific extends HttpServlet {

  @EJB
  private ClientFacadeLocal cfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        Long id = Long.parseLong(request.getParameter("id"));
        
        Client client = cfl.find(id);
        request.setAttribute("client", client);
        
        RequestDispatcher resMan = request.getRequestDispatcher("viewSpecificOutPut.jsp");
        resMan.forward(request, response);
        
        
    }

}
