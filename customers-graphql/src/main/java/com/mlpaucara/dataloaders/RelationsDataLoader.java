package com.mlpaucara.dataloaders;

import com.mlpaucara.GraphqlBeanMapper;
import com.mlpaucara.codegen.DgsConstants;
import com.mlpaucara.codegen.types.Customer;
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
import java.util.stream.Collectors;

@DgsDataLoader(name = DgsConstants.CUSTOMER.Relations, maxBatchSize = 2)
public class RelationsDataLoader  implements MappedBatchLoaderWithContext<String, List<Customer>> {

    @Autowired
    private CustomerQueryService queryService;

    @Autowired
    @Qualifier("SlowDataLoaderThreadPool")
    private Executor dedicatedExecutor;

    @Override
    public CompletionStage<Map<String, List<Customer>>> load(Set<String> keys, BatchLoaderEnvironment environment) {

        return CompletableFuture.supplyAsync(() -> {

                    var relations = queryService.findRelationsCustomer (new ArrayList<>(keys));

                    return relations.entrySet()
                            .stream()
                            .collect(Collectors.toMap(Map.Entry::getKey,
                                    list -> list.getValue()
                                            .stream()
                                            .filter(e->e.getCustomer()!=null)
                                            .map(e-> GraphqlBeanMapper.mapToGraphql(e.getCustomer()))
                                            .collect(Collectors.toList()))
                            );
                },
                dedicatedExecutor);
    }
}
