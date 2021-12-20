package com.example.webapp;


import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class testes {
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	private Long testeID;
	private Boolean ativo = true;
	private int cpiID;
	private Date dataSolicitacao;
	private Date dataEntrega;
	private String nomeTester;
	private String cliente;
	private String projeto;
	private String Desenvolvedor;
	private Date iniciouEm;
	private Date finalizouEm;
	private String status;
	private String detalhamentoTeste;
	private String resultadoEsperado;
	private String passoApasso;
	private String resultadoReal;
	private String statusFinal;
	
	
	public Long getTesteID() {
		return testeID;
	}
	public void setTesteID(Long testeID) {
		this.testeID = testeID;
	}
	public int getCpiID() {
		return cpiID;
	}
	public void setCpiID(int cpiID) {
		this.cpiID = cpiID;
	}
	public Date getDataSolicitacao() {
		return dataSolicitacao;
	}
	public void setDataSolicitacao(Date dataSolicitacao) {
		this.dataSolicitacao = dataSolicitacao;
	}
	public Date getDataEntrega() {
		return dataEntrega;
	}
	public void setDataEntrega(Date dataEntrega) {
		this.dataEntrega = dataEntrega;
	}
	public String getNomeTester() {
		return nomeTester;
	}
	public void setNomeTester(String nomeTester) {
		this.nomeTester = nomeTester;
	}
	public String getCliente() {
		return cliente;
	}
	public void setCliente(String cliente) {
		this.cliente = cliente;
	}
	public String getProjeto() {
		return projeto;
	}
	public void setProjeto(String projeto) {
		this.projeto = projeto;
	}
	public String getDesenvolvedor() {
		return Desenvolvedor;
	}
	public void setDesenvolvedor(String desenvolvedor) {
		Desenvolvedor = desenvolvedor;
	}
	public Date getIniciouEm() {
		return iniciouEm;
	}
	public void setIniciouEm(Date iniciouEm) {
		this.iniciouEm = iniciouEm;
	}
	public Date getFinalizouEm() {
		return finalizouEm;
	}
	public void setFinalizouEm(Date finalizouEm) {
		this.finalizouEm = finalizouEm;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDetalhamentoTeste() {
		return detalhamentoTeste;
	}
	public void setDetalhamentoTeste(String detalhamentoTeste) {
		this.detalhamentoTeste = detalhamentoTeste;
	}
	public String getResultadoEsperado() {
		return resultadoEsperado;
	}
	public void setResultadoEsperado(String resultadoEsperado) {
		this.resultadoEsperado = resultadoEsperado;
	}
	public String getPassoApasso() {
		return passoApasso;
	}
	public void setPassoApasso(String passoApasso) {
		this.passoApasso = passoApasso;
	}
	public String getResultadoReal() {
		return resultadoReal;
	}
	public void setResultadoReal(String resultadoReal) {
		this.resultadoReal = resultadoReal;
	}
	public String getStatusFinal() {
		return statusFinal;
	}
	public void setStatusFinal(String statusFinal) {
		this.statusFinal = statusFinal;
	}
	public Boolean getAtivo() {
		return ativo;
	}
	public void setAtivo(Boolean ativo) {
		this.ativo = ativo;
	}
	







	


	

}
