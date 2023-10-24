package com.asm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class TICKET {

	public static void main(String[] args) {
		SpringApplication.run(TICKET.class, args);
	}

}
