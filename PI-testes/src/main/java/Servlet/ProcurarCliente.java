/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;
import DAO.ClienteDAO;
import Model.Cliente;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author matheus.fboliveira
 */
@WebServlet(name = "ProcurarCliente", urlPatterns = {"/procurarCliente"})
public class ProcurarCliente extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
         
              
            RequestDispatcher dispatcher
                = request.getRequestDispatcher("/Pages/ProcurarCliente.jsp");
        dispatcher.forward(request, response);
    }


 @Override
   protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String nome = request.getParameter("nome");
        String sexo = (String) request.getParameter("sexo");
        String datanascimento = request.getParameter("datanascimento");
        String cpf = request.getParameter("cpf");
        String rg = request.getParameter("rg");
        String estadocivil = request.getParameter("estadocivil");
        String cep = request.getParameter("cep");
        String logradouro = request.getParameter("logradouro");
        String numero = request.getParameter("numero");
        String complemento = request.getParameter("complemento");
        String cidade = request.getParameter("cidade");
        String bairro = request.getParameter("bairro");
        String estado = request.getParameter("estado");
        String telefone = request.getParameter("telefone");
        String celular = request.getParameter("celular");
        String email = request.getParameter("email");
        String numhab = request.getParameter("numhab");

        Cliente c = new Cliente(nome,sexo,datanascimento,cpf,rg,estadocivil,cep,logradouro,numero,complemento,cidade,bairro,estado,telefone,celular,email,numhab);
        try {

           ClienteDAO.procurar(nome);

        } catch (Exception e) {

        }
        request.setAttribute("cliente", c);


        RequestDispatcher dispatcher
                = request.getRequestDispatcher(
                        "/Pages/resultadoProcurar.jsp");
        dispatcher.forward(request, response);

    }
}