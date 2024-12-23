package com.mlpaucara.datasource.dao;

import com.mlpaucara.datasource.entity.RelationEntity;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RelationMapper implements RowMapper<RelationEntity> {

    private CustomerMapper customerMapper= new CustomerMapper();

    @Override
    public RelationEntity mapRow(ResultSet resultSet, int rowNum) throws SQLException {
        RelationEntity entity = new RelationEntity();
        entity.setId(resultSet.getLong("id"));
        entity.setParentId(resultSet.getString("parent_id"));

        var customer = customerMapper.mapRow(resultSet,rowNum);
        entity.setCustomer(customer);

        return entity;
    }
}
