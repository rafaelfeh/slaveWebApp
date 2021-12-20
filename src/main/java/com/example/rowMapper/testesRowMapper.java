package com.example.rowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.example.webapp.testes;

public class testesRowMapper implements RowMapper<testes> {

	@Override
	public testes mapRow(ResultSet rs, int rowNum) throws SQLException {
		testes teste = new testes();
		teste.setTesteID(rs.getLong("testeID"));
		return null;
	}

}
