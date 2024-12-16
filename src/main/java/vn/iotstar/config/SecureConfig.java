package vn.iotstar.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import vn.iotstar.service.UserDetailsServiceImpl;

@Configuration
@EnableWebSecurity
public class SecureConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired 
	private UserDetailsServiceImpl userDetailsService;
	
	@Override
	protected void configure(final HttpSecurity http) throws Exception {
		http.csrf().disable().authorizeRequests()


		.antMatchers("/css/**", "/js/**", "/upload/**", "/login", "/logout").permitAll()

		.antMatchers("/admin/**").hasAuthority("ADMIN")

		.and()
		
		.formLogin().loginPage("/login").loginProcessingUrl("/perform_login")
		.successHandler(authenticationSuccessHandler())
		.failureUrl("/login?login_error=true")

		.and()

		.logout().logoutUrl("/logout").logoutSuccessUrl("/home").invalidateHttpSession(true)
		.deleteCookies();
//		.and().rememberMe().key("uniqueAndSecret").tokenValiditySeconds(86400) "JSESSIONID"
	}

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(new BCryptPasswordEncoder(4));
	}
	
	@Bean
	public AuthenticationSuccessHandler authenticationSuccessHandler(){
		return new UrlAuthenticationSuccessHandler();
	}


}
