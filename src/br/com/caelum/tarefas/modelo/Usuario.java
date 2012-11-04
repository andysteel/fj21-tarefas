package br.com.caelum.tarefas.modelo;

import javax.validation.constraints.Size;

public class Usuario {
	
	@Size(min=4, message="nao pode ser menor que 4 caracteres")
	private String login;
	@Size(min=4, message="nao pode ser menor que 4")
	private String senha;

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
}
