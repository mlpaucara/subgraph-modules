package com.mlpaucara.model;

import lombok.Builder;
import lombok.Data;

import java.time.OffsetDateTime;

@Data
@Builder
public class Account {

    private String id;
    private String number;
    private double balance;
    private String currency;
    private String customerId;
    private OffsetDateTime createDateTime;
}
