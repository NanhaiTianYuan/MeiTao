package com.appliaction.config;

import com.alibaba.druid.pool.DruidDataSource;

import com.alibaba.druid.pool.DruidDataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

import javax.sql.DataSource;
/*java配置
代替xml文件*/

/*@PropertySource("calsspath:application.properties")*/
/*java配置

代替xml文件*/
/*读取配置文件*/
@Configuration
@PropertySource(value = "application.properties")
public class JdbcCongig {
   /* @Value("${url}")
    public  String url;*/
   /* String url;*/
    @Value("${url}")
    String url;
    @Value("${driver}")
    String driverClassName;
    @Value("${user}")
    String username;
    @Value("${password}")
    String password;

    /*Bean*/
   @Bean
    public DataSource dataSource(){
        DruidDataSource druidDataSource = new DruidDataSource();
        druidDataSource.setDriverClassName(driverClassName);
        druidDataSource.setUrl(url);
        druidDataSource.setUsername(username);
        druidDataSource.setPassword(password);
        return druidDataSource;
    }
}
