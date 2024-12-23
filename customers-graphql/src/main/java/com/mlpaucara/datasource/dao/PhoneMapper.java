package com.mlpaucara.datasource.dao;

import com.mlpaucara.datasource.entity.PhoneEntity;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class PhoneMapper implements RowMapper<PhoneEntity> {

    @Override
    public PhoneEntity mapRow(ResultSet resultSet, int rowNum) throws SQLException {
        PhoneEntity entity = new PhoneEntity();
        entity.setId(resultSet.getString("id"));
        entity.setPhone(resultSet.getString("phone"));
        entity.setCustomerId(resultSet.getString("customer_id"));
        entity.setCreationTimestamp (resultSet.getTimestamp("creation_timestamp").toLocalDateTime());
        return entity;
    }
}
