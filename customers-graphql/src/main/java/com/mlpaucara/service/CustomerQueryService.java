package com.mlpaucara.service;

import com.mlpaucara.datasource.dao.CustomerDao;
import com.mlpaucara.datasource.entity.CustomerEntity;
import com.mlpaucara.datasource.entity.PhoneEntity;
import com.mlpaucara.datasource.entity.RelationEntity;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class CustomerQueryService {

    private final CustomerDao customerDao;

    public CustomerQueryService(CustomerDao customerDao) {
        this.customerDao = customerDao;
    }

    public List<CustomerEntity> findByKeyword(String firstName, String lastName) {
        return customerDao.findByKeyword(firstName,lastName);
    }

    public Optional<CustomerEntity> findByDocument(String documentType, String documentNumber) {
        return customerDao.findByDocumentTypeAndDocumentNumber(documentType,documentNumber);
    }

    public Optional<CustomerEntity> findById(String id) {
        return Optional.of(customerDao.findCustomerById(id));
    }

    public Map<String, List<PhoneEntity>> findPhonesCustomer(List<String> customerId){

        return customerDao.findPhoneAll(customerId)
                .stream()
                .collect( Collectors.groupingBy(PhoneEntity::getCustomerId));
    }

    public Map<String, List<RelationEntity>> findRelationsCustomer(List<String> customerId){

        return customerDao.findRelationsAll(customerId)
                .stream()
                .collect( Collectors.groupingBy(RelationEntity::getParentId));
    }
}
