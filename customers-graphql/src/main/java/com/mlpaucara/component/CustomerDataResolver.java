package com.mlpaucara.component;

import com.mlpaucara.GraphqlBeanMapper;
import com.mlpaucara.codegen.DgsConstants;
import com.mlpaucara.codegen.types.Customer;
import com.mlpaucara.codegen.types.CustomerFilter;
import com.mlpaucara.codegen.types.CustomerSearchFilter;
import com.mlpaucara.codegen.types.Phone;
import com.mlpaucara.dataloaders.PhonesDataLoader;
import com.mlpaucara.dataloaders.RelationsDataLoader;
import com.mlpaucara.datasource.entity.CustomerEntity;
import com.mlpaucara.service.CustomerQueryService;
import com.netflix.graphql.dgs.*;
import com.netflix.graphql.dgs.exceptions.DgsEntityNotFoundException;
import org.apache.commons.lang3.StringUtils;
import org.dataloader.DataLoader;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.stream.Collectors;

@DgsComponent
public class CustomerDataResolver {

    @Autowired
    private CustomerQueryService queryService;

    @DgsQuery
    public List<Customer> customerSearch(@InputArgument(name = DgsConstants.QUERY.CUSTOMERSEARCH_INPUT_ARGUMENT.Filter) CustomerSearchFilter filter) {

        return queryService.findByKeyword(filter.getFirstName(),filter.getLastName())
                .stream().map(GraphqlBeanMapper::mapToGraphql)
                .collect(Collectors.toList());

    }
    @DgsQuery
    public Customer customer(@InputArgument(name = DgsConstants.QUERY.CUSTOMER_INPUT_ARGUMENT.Filter) CustomerFilter filter) {

        var isFindById = !StringUtils.isEmpty(filter.getId());
        CustomerEntity customerEntity = null;
        if(isFindById){
            var customerId = filter.getId();
            customerEntity = queryService.findById(customerId)
                    .orElseThrow(DgsEntityNotFoundException::new);
        }else{
            customerEntity = queryService.findByDocument(filter.getType().name(),filter.getNumber())
                    .orElseThrow(DgsEntityNotFoundException::new);
        }

        return GraphqlBeanMapper.mapToGraphql(customerEntity);

    }

    // Resolver with dataloader
    @DgsData(parentType = DgsConstants.CUSTOMER.TYPE_NAME)
    public CompletableFuture<List<Phone>> phones(DgsDataFetchingEnvironment dfe){
        DataLoader<String, List<Phone>> phonesDataloader = dfe.getDataLoader(PhonesDataLoader.class);
        Customer customer = dfe.getSource();
        return phonesDataloader.load(customer.getId());
    }

    @DgsData(parentType = DgsConstants.CUSTOMER.TYPE_NAME, field = DgsConstants.CUSTOMER.Relations)
    public CompletableFuture<List<Customer>> reference(DgsDataFetchingEnvironment dfe){
        DataLoader<String, List<Customer>> phonesDataloader = dfe.getDataLoader(RelationsDataLoader.class);
        Customer customer = dfe.getSource();
        return phonesDataloader.load(customer.getId());
    }
}
