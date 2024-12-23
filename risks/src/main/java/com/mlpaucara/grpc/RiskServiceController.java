package com.mlpaucara.grpc;

import com.mlpaucara.grpc.server.EvaluationRequest;
import com.mlpaucara.grpc.server.EvaluationResponse;
import com.mlpaucara.grpc.server.RiskServiceGrpc;
import com.mlpaucara.service.RiskService;
import io.grpc.stub.StreamObserver;
import net.devh.boot.grpc.server.service.GrpcService;
import org.springframework.beans.factory.annotation.Autowired;

@GrpcService
public class RiskServiceController extends RiskServiceGrpc.RiskServiceImplBase {

    @Autowired
    private RiskService riskService;

    @Override
    public void getEvaluation(EvaluationRequest request, StreamObserver<EvaluationResponse> responseObserver) {

        var result = riskService.findByCustomerId(request.getCustomerId());

        var response = EvaluationResponse.newBuilder()
                .setId(result.getId())
                .setCustomerId(result.getCustomerId())
                .setMoodys(result.getCalificacionMoodys())
                .setPcr(result.getCalificacionPCR())
                .setSbs(result.getCalificacionSBS())
                .build();

        responseObserver.onNext(response);
        responseObserver.onCompleted();
    }
}
