package com.example.webapp;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table
public class usuarios {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Long usuarioID;
	
	private String nome;
	private String senha;
	public Long getUsuarioID() {
		return usuarioID;
	}
	public void setUsuarioID(Long usuarioID) {
		this.usuarioID = usuarioID;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) { 
		this.senha = senha;
	}

}
