package com.mlpaucara.datasource;

import net.datafaker.Faker;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.reactive.function.client.WebClient;

@Configuration
public class DataSourceConfig {

    @Value("${microservices.risks.url}")
    private String risks_url;

    @Bean
    Faker faker() {
        return new Faker();
    }

    @Bean
    public WebClient webClient() {
        return WebClient.builder().baseUrl(risks_url).build();
    }
}
