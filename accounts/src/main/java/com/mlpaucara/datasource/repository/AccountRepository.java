package com.mlpaucara.datasource.repository;

import com.mlpaucara.datasource.entity.AccountEntity;
import org.springframework.data.r2dbc.repository.R2dbcRepository;
import org.springframework.stereotype.Repository;
import reactor.core.publisher.Flux;

import java.util.UUID;

@Repository
public interface AccountRepository extends R2dbcRepository<AccountEntity, UUID> {
    Flux<AccountEntity> findByCustomerId(UUID customerId);
}
