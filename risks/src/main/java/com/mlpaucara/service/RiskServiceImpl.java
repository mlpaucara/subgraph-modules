package com.mlpaucara.service;

import com.mlpaucara.datasource.repository.RiskRepository;
import com.mlpaucara.model.Evaluation;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class RiskServiceImpl implements RiskService{

    private final RiskRepository riskRepository;

    public RiskServiceImpl(RiskRepository riskRepository) {
        this.riskRepository = riskRepository;
    }

    @Override
    public Evaluation findByCustomerId(String customerId) {
        Evaluation.EvaluationBuilder builder = Evaluation.builder();

        riskRepository.findByCustomerId(UUID.fromString(customerId))
                .ifPresent(entity ->
                        builder
                                .id(entity.getId().toString())
                                .customerId(entity.getCustomerId().toString())
                                .calificacionMoodys(entity.getCalificacionMoodys())
                                .calificacionPCR(entity.getCalificacionPcr())
                                .calificacionSBS(entity.getCalificacionSbs())
                        );

        return builder.build();
    }
}
