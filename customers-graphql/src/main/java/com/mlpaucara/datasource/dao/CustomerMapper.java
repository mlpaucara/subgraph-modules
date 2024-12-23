package com.mlpaucara.datasource.dao;

import com.mlpaucara.datasource.entity.CustomerEntity;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerMapper implements RowMapper<CustomerEntity> {
    @Override
    public CustomerEntity mapRow(ResultSet resultSet, int rowNum) throws SQLException {
        CustomerEntity entity = new CustomerEntity();
        entity.setId(resultSet.getString("id"));
        entity.setFirstName(resultSet.getString("first_name"));
        entity.setLastName(resultSet.getString("last_name"));
        entity.setGender(resultSet.getString("gender"));
        entity.setBirthDate(resultSet.getTimestamp("birth_date").toLocalDateTime());
        entity.setAddress(resultSet.getString("address"));
        entity.setDocumentType(resultSet.getString("document_type"));
        entity.setDocumentNumber(resultSet.getString("document_number"));
        entity.setEmail(resultSet.getString("email"));
        entity.setPhone(resultSet.getString("phone"));
        entity.setCreationTimestamp (resultSet.getTimestamp("creation_timestamp").toLocalDateTime());

        return entity;
    }
}
