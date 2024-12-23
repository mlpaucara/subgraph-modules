package com.mlpaucara.service;

import com.mlpaucara.model.Account;
import com.mlpaucara.model.Transaction;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

public interface AccountService {

    Flux<Account> findAllByCustomerId(String customerId);

    Mono<Account> findById(String id);

    Flux<Transaction> findTransactionsByAccountId(String accountId);

}
