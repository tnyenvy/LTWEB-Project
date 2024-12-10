//package vn.iotstar.configs;
//
//import java.util.ArrayList;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.http.HttpMethod;
//import org.springframework.security.authentication.AuthenticationManager;
//import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
//import org.springframework.security.config.Customizer;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
//import org.springframework.security.config.annotation.authentication.configuration.GlobalAuthenticationConfigurerAdapter;
//import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.web.SecurityFilterChain;
//
//import vn.iotstar.services.CustomUserDetailsService;
//import vn.iotstar.services.UserService;
//
//@Configuration
//@EnableWebSecurity
//@EnableMethodSecurity
//public class WebSecurityConfig {
//
//	@Autowired
//	private CustomUserDetailsService userDetailsService;
//
//	@Bean
//	UserDetailsService userDetailsService() {
//		return new UserService();
//	}
//
//	@Bean
//	BCryptPasswordEncoder passwordEncoder() {
//		return new BCryptPasswordEncoder();
//	}
//
//	@Bean
//	DaoAuthenticationProvider authenticationProvider() {
//		DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
//		authProvider.setUserDetailsService(userDetailsService());
//		authProvider.setPasswordEncoder(passwordEncoder());
//
//		return authProvider;
//	}
//
//	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//		auth.userDetailsService(userDetailsService)
//				.passwordEncoder(passwordEncoder());
//	}
//
//	@Bean
//	AuthenticationManager authenticationManager(AuthenticationConfiguration authConfig) throws Exception {
//		final List<GlobalAuthenticationConfigurerAdapter> configures = new ArrayList<>();
//		configures.add(new GlobalAuthenticationConfigurerAdapter() {
//			@Override
//			public void configure(AuthenticationManagerBuilder auth) throws Exception {
//				// auth.doSomething();
//			}
//		});
//		return authConfig.getAuthenticationManager();
//	}
//
//	@Bean
//	SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
//		http
//				.csrf(csrf -> csrf.disable())
//				.authorizeHttpRequests((authorize) -> authorize
//						.requestMatchers("/*").permitAll()
//						.requestMatchers("/new").hasAnyAuthority("ADMIN", "CREATOR")
//						.requestMatchers("/edit/**").hasAnyAuthority("ADMIN", "EDITOR")
//						.requestMatchers("/delete/**").hasAuthority("ADMIN")
//						.requestMatchers(HttpMethod.GET, "/api/**").permitAll()
//						.requestMatchers("/api/**").permitAll()
//						.anyRequest().authenticated())
//				.httpBasic(Customizer.withDefaults())
//				.formLogin(login -> login.loginPage("/login").loginProcessingUrl("/login")
//						.usernameParameter("username").passwordParameter("password")
//						.defaultSuccessUrl("/admin", true).permitAll())
//				.logout(logout -> logout.logoutUrl("/logout").logoutSuccessUrl("/login"))
//				.exceptionHandling(handling -> handling.accessDeniedPage("/403"));
//
//		return http.build();
//	}
//
//}
