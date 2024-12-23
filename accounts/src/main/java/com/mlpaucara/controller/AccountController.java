package com.mlpaucara.controller;

import com.mlpaucara.model.Account;
import com.mlpaucara.model.Transaction;
import com.mlpaucara.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@RestController
@RequestMapping("/accounts")
public class AccountController {
    @Autowired
    private AccountService service;


    @GetMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public Mono<Account> getAccountById(@PathVariable("id") String id) {
        return this.service.findById(id);
    }

    @GetMapping("/{id}/transactions")
    @ResponseStatus(HttpStatus.OK)
    public Flux<Transaction> getTransactionsById(@PathVariable("id") String id) {

        return this.service.findTransactionsByAccountId(id);
    }

    @GetMapping("/search")
    @ResponseStatus(HttpStatus.OK)
    public Flux<Account> findByDocument(@RequestParam(name = "customerId") String customerId) {
        return this.service.findAllByCustomerId(customerId);
    }
}
