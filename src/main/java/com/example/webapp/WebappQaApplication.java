package com.example.webapp;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
public class WebappQaApplication implements CommandLineRunner {
	
	
	public static void main(String[] args) {
		SpringApplication.run(WebappQaApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
	
	} 
	
	public void test(String... args) throws Exception {
		LoginController.loginTeste(null);
	} 
	

}
 