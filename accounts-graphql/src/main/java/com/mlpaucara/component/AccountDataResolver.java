package com.mlpaucara.component;

import com.mlpaucara.codegen.DgsConstants;
import com.mlpaucara.codegen.types.Account;
import com.mlpaucara.codegen.types.AccountsByCustomerFilter;
import com.mlpaucara.codegen.types.Customer;
import com.mlpaucara.codegen.types.Transaction;
import com.netflix.graphql.dgs.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.reactive.function.client.WebClient;
import org.springframework.web.util.UriComponentsBuilder;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.util.Map;

@DgsComponent
@Slf4j
public class AccountDataResolver {

    @Autowired
    private WebClient webClient;

    @DgsData(parentType = DgsConstants.QUERY_TYPE, field = DgsConstants.QUERY.Account)
    public Mono<Account> findAccountById(@InputArgument String id) {
        return webClient
                .get()
                .uri("/accounts/" + id)
                .retrieve()
                .bodyToMono(Account.class);
    }

    @DgsData(parentType = DgsConstants.QUERY_TYPE, field = DgsConstants.QUERY.AccountsByCustomer)
    public Flux<Account> getAccountsByCustomer(@InputArgument(name = DgsConstants.QUERY.ACCOUNTSBYCUSTOMER_INPUT_ARGUMENT.Filter) AccountsByCustomerFilter filter) {
        var uri = UriComponentsBuilder.fromUriString("/accounts/search")
                .queryParam("customerId", filter.getCustomerId())
                .build().toUri();

        return webClient
                .get()
                .uri(uri.toString())
                .retrieve()
                .bodyToFlux(Account.class)
                .onErrorResume(Exception.class, e -> Flux.empty());
    }

    @DgsEntityFetcher(name = DgsConstants.CUSTOMER.TYPE_NAME)
    public Customer customer(Map<String, Object> values) {
        return new Customer((String) values.get("id"), null);
    }

    @DgsData(parentType = DgsConstants.CUSTOMER.TYPE_NAME, field = DgsConstants.CUSTOMER.Accounts)
    public Flux<Account> getAccounts(DgsDataFetchingEnvironment dfe) {

        Customer customer = dfe.getSource();

        var uri = UriComponentsBuilder.fromUriString("/accounts/search")
                .queryParam("customerId", customer.getId())
                .build().toUri();

        return webClient
                .get()
                .uri(uri.toString())
                .retrieve()
                .bodyToFlux(Account.class)
                .onErrorResume(Exception.class, e -> Flux.empty());
    }

    @DgsData(parentType = DgsConstants.ACCOUNT.TYPE_NAME, field = DgsConstants.ACCOUNT.Transactions)
    public Flux<Transaction> transactions(DgsDataFetchingEnvironment dfe) {
        Account account = dfe.getSource();

        return webClient
                .get()
                .uri("/accounts/" + account.getId() + "/transactions")
                .retrieve()
                .bodyToFlux(Transaction.class)
                .onErrorResume(Exception.class, e -> Flux.empty());
    }

}
