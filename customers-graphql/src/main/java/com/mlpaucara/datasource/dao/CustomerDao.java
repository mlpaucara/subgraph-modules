package com.mlpaucara.datasource.dao;

import com.mlpaucara.datasource.entity.CustomerEntity;
import com.mlpaucara.datasource.entity.PhoneEntity;
import com.mlpaucara.datasource.entity.RelationEntity;

import java.util.List;
import java.util.Optional;

public interface CustomerDao {

    List<CustomerEntity> findByKeyword(String firstName, String lastName);

    CustomerEntity findCustomerById(String id);

    Optional<CustomerEntity> findByDocumentTypeAndDocumentNumber(String documentType, String documentNumber);

    List<PhoneEntity> findPhoneAll(List<String> lstCustomerId);
    List<RelationEntity> findRelationsAll(List<String> lstCustomerId);
    List<RelationEntity> findRelationsAllV2(List<String> lstCustomerId);

}
