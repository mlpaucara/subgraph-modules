package com.mlpaucara.model;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Evaluation {

    private String id;
    private String customerId;
    private String calificacionMoodys;
    private String calificacionSBS;
    private String calificacionPCR;

}
