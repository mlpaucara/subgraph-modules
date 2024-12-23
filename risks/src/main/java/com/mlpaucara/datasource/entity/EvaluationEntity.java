package com.mlpaucara.datasource.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.util.UUID;

@Entity
@Table(name = "evaluations")
public class EvaluationEntity {

    @Id
    private UUID id;

    private UUID customerId;

    private String calificacionMoodys;
    private String calificacionSbs;
    private String calificacionPcr;

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public UUID getCustomerId() {
        return customerId;
    }

    public void setCustomerId(UUID customerId) {
        this.customerId = customerId;
    }

    public String getCalificacionMoodys() {
        return calificacionMoodys;
    }

    public void setCalificacionMoodys(String calificacionMoodys) {
        this.calificacionMoodys = calificacionMoodys;
    }

    public String getCalificacionSbs() {
        return calificacionSbs;
    }

    public void setCalificacionSbs(String calificacionSbs) {
        this.calificacionSbs = calificacionSbs;
    }

    public String getCalificacionPcr() {
        return calificacionPcr;
    }

    public void setCalificacionPcr(String calificacionPcr) {
        this.calificacionPcr = calificacionPcr;
    }
}
