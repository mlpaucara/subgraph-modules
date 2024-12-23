package com.mlpaucara.component;

import com.mlpaucara.codegen.DgsConstants;
import com.mlpaucara.codegen.types.Customer;
import com.mlpaucara.codegen.types.Evaluation;
import com.mlpaucara.grpc.grpc.server.RiskServiceGrpc;
import com.mlpaucara.grpc.server.EvaluationRequest;
import com.netflix.graphql.dgs.*;
import net.devh.boot.grpc.client.inject.GrpcClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.reactive.function.client.WebClient;

import java.util.Map;

@DgsComponent
public class EvaluationDataResolver {

    @Autowired
    private WebClient webClient;

    @GrpcClient("local-grpc-server")
    private RiskServiceGrpc.RiskServiceBlockingStub serviceStub;

    @DgsEntityFetcher(name = "Customer")
    public Customer customer(Map<String, Object> values) {
        return new Customer((String) values.get("id"), null);
    }

    @DgsQuery(field = DgsConstants.QUERY.Evaluation)
    public Evaluation getEvaluationByCustomer(@InputArgument(name = DgsConstants.QUERY.EVALUATION_INPUT_ARGUMENT.CustomerID) String customerId) throws Exception {
        var request = EvaluationRequest.newBuilder()
                .setCustomerId(customerId)
                .build();
        var response = serviceStub.getEvaluation(request);

        if(response!=null) {
            return Evaluation.newBuilder()
                    .id(response.getId())
                    .customerId(response.getCustomerId())
                    .sbs(response.getSbs())
                    .pcr(response.getPcr())
                    .moodys(response.getMoodys())
                    .build();
        }
        else {
            throw new Exception();
        }
    }
}
