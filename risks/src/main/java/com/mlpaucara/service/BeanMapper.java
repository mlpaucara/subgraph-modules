package com.mlpaucara.service;

import com.mlpaucara.datasource.entity.EvaluationEntity;
import com.mlpaucara.model.Evaluation;

public class BeanMapper {

    public static Evaluation mapToGraphql(EvaluationEntity original){
        return Evaluation.builder()
                .id(original.getId().toString())
                .customerId(original.getCustomerId().toString())
                .calificacionMoodys(original.getCalificacionMoodys())
                .calificacionSBS(original.getCalificacionSbs())
                .calificacionPCR(original.getCalificacionPcr())
                .build();
    }
}
