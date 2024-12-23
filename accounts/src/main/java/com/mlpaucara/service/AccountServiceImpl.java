package com.mlpaucara.service;


import com.mlpaucara.datasource.repository.AccountRepository;
import com.mlpaucara.datasource.repository.TransactionRepository;
import com.mlpaucara.model.Account;
import com.mlpaucara.model.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.util.UUID;

@Service
public class AccountServiceImpl implements AccountService {

    @Autowired
    private AccountRepository accountRepository;
    @Autowired
    private TransactionRepository transactionRepository;


    @Override
    public Flux<Account> findAllByCustomerId(String customerId) {
        return this.accountRepository.findByCustomerId(UUID.fromString(customerId))
                .map(BeanMapper::mapToGraphql);
    }

    @Override
    public Mono<Account> findById(String id) {
        return this.accountRepository.findById(UUID.fromString(id))
                .map(BeanMapper::mapToGraphql);
    }

    @Override
    public Flux<Transaction> findTransactionsByAccountId(String accountId) {
        return this.transactionRepository.findByAccountId(UUID.fromString(accountId))
                .map(BeanMapper::mapToGraphql);
    }
}
