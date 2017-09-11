
package servlet;

import Pojo.Categoria;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletCategoria", urlPatterns = {"/ServletCategoria"})
public class ServletCategoria extends HttpServlet {



    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Integer id = Integer.valueOf(request.getParameter("id"));

        EntityManagerFactory f = Persistence.createEntityManagerFactory("StorePU");
        EntityManager em = f.createEntityManager();
        
        Categoria c = em.find(Categoria.class, id);
        
        request.setAttribute("categoria", c);
        
        f.close();
        request.getRequestDispatcher("/categoria/form.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                String nome = request.getParameter("nome");
                String tipo = request.getParameter("tipo");
                int id = Integer.parseInt(request.getParameter("id"));
        EntityManagerFactory f = Persistence.createEntityManagerFactory("StorePU");
        EntityManager em = f.createEntityManager();
        
        em.getTransaction().begin();
        Categoria categoria = new Categoria();
        categoria.setNome(nome);
        categoria.setTipo(tipo);
        categoria.setId(id);
        em.merge(categoria);
        em.getTransaction().commit();
        f.close();
        
        response.sendRedirect("/Store/ServletCategoriaLista");
        
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */

}
