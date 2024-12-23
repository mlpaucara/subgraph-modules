package com.mlpaucara.dataloaders;

import com.mlpaucara.codegen.DgsConstants;
import com.mlpaucara.datasource.entity.PhoneEntity;
import com.mlpaucara.service.CustomerQueryService;
import com.netflix.graphql.dgs.DgsDataLoader;
import org.dataloader.BatchLoaderEnvironment;
import org.dataloader.MappedBatchLoaderWithContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionStage;
import java.util.concurrent.Executor;

@DgsDataLoader(name = DgsConstants.PHONE.TYPE_NAME, maxBatchSize = 2)
public class PhonesDataLoader implements MappedBatchLoaderWithContext<String, List<PhoneEntity>> {

    @Autowired
    private CustomerQueryService queryService;

    @Autowired
    @Qualifier("OneDataLoaderThreadPool")
    Executor dedicatedExecutor;

    @Override
    public CompletionStage<Map<String, List<PhoneEntity>>> load(Set<String> keys, BatchLoaderEnvironment environment) {
        return CompletableFuture.supplyAsync(() -> queryService.findPhonesCustomer(new ArrayList<>(keys)),dedicatedExecutor);
    }
}
