/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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
public class addClient extends HttpServlet {

    @EJB
    private ClientFacadeLocal cfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        String name = request.getParameter("name");
        Long id = Long.parseLong(request.getParameter("id"));
        Integer gcl = Integer.parseInt(request.getParameter("gcl"));
        String category = "concerning";
        if(gcl>5 && gcl < 11)
        {
        category = "acceptable";
        }
        else if (gcl >= 0 && gcl <6)
        {
        category = "good";
        }
        Client client = new Client();
        client.setId(id);
        client.setName(name);
        client.setGlocoseLevel(gcl);
        client.setCategory(category);
        client.setDate(new Date());
        
        cfl.create(client);
        
        request.setAttribute("client", client);
        
        RequestDispatcher resMan = request.getRequestDispatcher("clientadded.jsp");
        resMan.forward(request, response);
        
        
        
    }

}
