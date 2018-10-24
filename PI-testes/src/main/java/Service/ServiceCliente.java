/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import DAO.ClienteDAO;
import Model.Cliente;
import java.io.IOException;
import java.util.List;

/**
 *
 * @author nadso
 */
public class ServiceCliente {
    public class ServicoCliente {
     ClienteDAO clienteDAO = new ClienteDAO();
     

    public void cadastrarCliente(Cliente cliente) throws IOException, Exception {

        try {
            clienteDAO.inserir(cliente);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //Atualiza um cliente na fonte de dados
    public void atualizarCliente(Cliente cliente) throws IOException, Exception {
        
        //ValidadorCliente.validar(cliente);

        try {
            clienteDAO.updateCliente(cliente);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //Realiza a pesquisa de um cliente por nome na fonte de dados
    public List<Cliente> procurarCliente() throws IOException, Exception {
        try {
            return clienteDAO.listar();
            
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    
    //Realiza a pesquisa de um cliente por nome na fonte de dados
    public Cliente obterClientePorNome(String nome) throws IOException, Exception {
        try {
                return clienteDAO.procurar(nome);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    


    //Exclui o cliente com ID informado do mock
    public void excluirCliente(String nome) throws IOException, Exception {
        try {
            //Solicita ao DAO a exclusão do cliente informado
            clienteDAO.deletarCliente(nome);
        } catch (Exception e) {
            //Imprime qualquer erro técnico no console e devolve
            //uma exceção e uma mensagem amigável a camada de visão
            e.printStackTrace();
            
        }
    }
  
    }
}
