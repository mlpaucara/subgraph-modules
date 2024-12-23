package com.mlpaucara.service;

import com.mlpaucara.model.Evaluation;

public interface RiskService {

    Evaluation findByCustomerId(String customerId);
}
