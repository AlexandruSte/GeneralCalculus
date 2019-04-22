package com.example.generalcalculus;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class GeneralcalculusApplication extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(GeneralcalculusApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(GeneralcalculusApplication.class, args);
    }

}
