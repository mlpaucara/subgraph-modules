package com.mlpaucara.service;

import com.mlpaucara.datasource.entity.AccountEntity;
import com.mlpaucara.datasource.entity.TransactionEntity;
import com.mlpaucara.model.Account;
import com.mlpaucara.model.Transaction;

import java.time.ZoneOffset;

public class BeanMapper {

    private static final ZoneOffset ZONE_OFFSET = ZoneOffset.ofHours(5);

    public static Account mapToGraphql(AccountEntity original) {
        return Account.builder()
                .id(original.getId().toString())
                .number(original.getNumber())
                .currency(original.getCurrency())
                .balance(original.getBalance())
                .customerId(original.getCustomerId().toString())
                .createDateTime(original.getCreationTimestamp().atOffset(ZONE_OFFSET))
                .build();
    }

    public static Transaction mapToGraphql(TransactionEntity original) {
        return Transaction.builder()
                .id(original.getId().toString())
                .amount(original.getAmount())
                .currency(original.getCurrency())
                .accountId(original.getAccountId().toString())
                .fecha(original.getCreationTimestamp().atOffset(ZONE_OFFSET))
                .build();
    }
}
