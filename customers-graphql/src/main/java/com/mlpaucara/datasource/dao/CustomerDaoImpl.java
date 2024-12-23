package com.mlpaucara.datasource.dao;

import com.mlpaucara.datasource.entity.CustomerEntity;
import com.mlpaucara.datasource.entity.PhoneEntity;
import com.mlpaucara.datasource.entity.RelationEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.Collection;

@Component
public class CustomerDaoImpl implements CustomerDao{

    private final JdbcTemplate jdbcTemplate;
    private final NamedParameterJdbcTemplate jdbcTemplate2;

    private final String SQL_FINDLISTBY_CIC= "select * from customers_schema.customers_1 c where id IN (:ids)";
    private final String SQL_FINDBY_CIC= "select * from customers_schema.customers_1 c where id=?";
    private final String SQL_GET_ALL= "select * from customers_schema.customers_1 c  where (:first_name is null or  upper(first_name) like  '%' || upper(:first_name) || '%') " + "and (:last_name is null or upper(last_name) like  '%' || upper(:last_name) || '%')";

    private final String SQL_FINDBY_IDC= "select * from customers_schema.customers_1 c where document_type=? and document_number=?;";

    private final String SQL_GET_ALL_PHONES="select * from customers_schema.customers_phones_1 cp where cp.customer_id IN (:ids)";
    private final String SQL_GET_ALL_RELATIONS="select id,parent_id, customer_id from customers_relations_1 where parent_id IN (:ids)";

    public CustomerDaoImpl(JdbcTemplate jdbcTemplate, NamedParameterJdbcTemplate jdbcTemplate2) {
        this.jdbcTemplate = jdbcTemplate;
        this.jdbcTemplate2 = jdbcTemplate2;
    }

    @Override
    public List<CustomerEntity> findByKeyword(String firstName, String lastName) {
        return jdbcTemplate.query(
                SQL_GET_ALL, new Object[] {firstName, firstName, lastName, lastName}, new CustomerMapper());
    }

    @Override
    public CustomerEntity findCustomerById(String id) {
        return jdbcTemplate.queryForObject(
                SQL_FINDBY_CIC, new Object[] { id }, new CustomerMapper());
    }

    @Override
    public Optional<CustomerEntity> findByDocumentTypeAndDocumentNumber(String documentType, String documentNumber) {
        return Optional.of(jdbcTemplate.queryForObject(
                SQL_FINDBY_IDC, new Object[]{ documentType,documentNumber}, new CustomerMapper()));
    }

    @Override
    public List<PhoneEntity> findPhoneAll(List<String> lstCustomerId) {

        SqlParameterSource parameters = new MapSqlParameterSource("ids", lstCustomerId);

        return this.jdbcTemplate2.query(SQL_GET_ALL_PHONES, parameters, new PhoneMapper());
    }

    @Override
    public List<RelationEntity> findRelationsAll(List<String> lstCustomerId) {
        var sql = "select cp.*,c.* from customers_relations_1 cp inner join customers_1 c on cp.customer_id=c.id where cp.parent_id IN (:lstCustomerId)";
        SqlParameterSource parameters = new MapSqlParameterSource("lstCustomerId", lstCustomerId);
        return this.jdbcTemplate2.query(sql,parameters, new RelationMapper());
    }

    @Override
    public List<RelationEntity> findRelationsAllV2(List<String> lstCustomerId) {
        SqlParameterSource parameters = new MapSqlParameterSource("ids", lstCustomerId);
        var mapo = this.jdbcTemplate2.query(SQL_GET_ALL_RELATIONS, parameters, rs -> {
            HashMap<String,List<RelationEntity>> mapRet= new HashMap<>();

            while(rs.next()){
                var entity = new RelationEntity();
                entity.setId(rs.getLong("id"));
                entity.setParentId(rs.getString("parent_id"));
                entity.setCustomerId(rs.getString("customer_id"));

                var listado = mapRet.computeIfAbsent(entity.getParentId(), k -> new ArrayList<>());

                listado.add(entity);
            }
            return mapRet;

        });

        SqlParameterSource parametersv2 = new MapSqlParameterSource("ids",  mapo.values().stream().flatMap(Collection::stream).toList().stream().map(p->p.getCustomerId()).collect(Collectors.toList()));
        var list = this.jdbcTemplate2.query(SQL_FINDLISTBY_CIC,parametersv2, new CustomerMapper());

        mapo.forEach((key, value) -> value.forEach(p ->

                list.stream()
                        .filter(x -> x.getId().equals(p.getCustomerId()))
                        .findFirst()
                        .ifPresent(p::setCustomer)

        ));

        return  mapo.values().stream().flatMap(Collection::stream).toList();
    }
}
