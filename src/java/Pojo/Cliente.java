package Pojo;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Cliente {

    @Id
    @GeneratedValue
    private int id;
    
    @Column
    private String nome = "";
    
    @Column
    private String cpf= "";
    
    @Column
    private String endereco= "";
    
    @Column
    private String telefone= "";
    
    @OneToMany (mappedBy ="cliente")
    private List<Carrinho> carrinho = new ArrayList();

    public List<Carrinho> getCarrinho() {
        return carrinho;
    }

    public void setCarrinho(List<Carrinho> carrinho) {
        this.carrinho = carrinho;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

}
