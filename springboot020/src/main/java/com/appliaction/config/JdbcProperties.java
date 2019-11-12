package com.appliaction.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties
@Data
public class JdbcProperties {
    String url;
    String driver;
    String name;
    String password;
}
