/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.persistence.Persistence;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Web application lifecycle listener.
 *
 * @author Aluno
 */
@WebListener()
public class Jpa implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        Persistence.createEntityManagerFactory("StorePU");
        
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        
    }
}
