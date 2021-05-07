package com.sistVentas.data.auth;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	
	 @Override
	    protected void configure(HttpSecurity http) throws Exception {
	        http.
	            authorizeRequests()
	                .antMatchers("/css/**", "/js/**", "/registro","/usuario/**","/producto/**").hasRole("ROL_ADMIN")
	                .antMatchers("/registro/**","/usuario/**").hasAnyRole("ROL_ADMIN","ROL_USER")
	                .antMatchers("/").permitAll()
	                .anyRequest()
	                .authenticated()
	                .and()
	            .formLogin()
	                .loginPage("/index")
	                .permitAll()
	                .and()
	            .logout()
	                .permitAll();
	    }
	    
	    @Override
	    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	        auth.inMemoryAuthentication()
	                .withUser("user1").password("123").roles("ROL_ADMIN")
	                .and()
	                .withUser("user2").password("123").roles("ROL_USER");
	    }

}
