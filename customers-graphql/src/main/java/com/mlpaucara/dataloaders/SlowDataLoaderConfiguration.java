package com.mlpaucara.dataloaders;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

@Configuration
public class SlowDataLoaderConfiguration {

    @Bean(name = "SlowDataLoaderThreadPool")
    Executor slowDataLoaderExecutor() {
        return Executors.newCachedThreadPool();
    }
    @Bean(name = "OneDataLoaderThreadPool")
    Executor OneDataLoaderThreadPool() {
        return Executors.newCachedThreadPool();
    }
}
