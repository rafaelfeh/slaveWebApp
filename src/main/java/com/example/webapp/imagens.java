package com.example.webapp;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class imagens {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Long imagemID;
	private Boolean ativo = true;
	private String url;
	private String descricao;
	private Integer pagina;
	private Long testeID;
	
	public Long getImagemID() {
		return imagemID;
	}
	public void setImagemID(Long imagemID) {
		this.imagemID = imagemID;
	}
	public Boolean getAtivo() {
		return ativo;
	}
	public void setAtivo(Boolean ativo) {
		this.ativo = ativo;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public Integer getPagina() {
		return pagina;
	}
	public void setPagina(Integer pagina) {
		this.pagina = pagina;
	}
	public Long getTesteID() {
		return testeID;
	}
	public void setTesteID(Long testeID) {
		this.testeID = testeID;
	}
	
	





	



	


	

}
