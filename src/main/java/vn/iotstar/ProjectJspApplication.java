package vn.iotstar;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;

import vn.iotstar.configs.MySiteMeshFilter;
import vn.iotstar.configs.StorageProperties;
import vn.iotstar.services.IStorageService;

@SpringBootApplication
@EnableConfigurationProperties(StorageProperties.class)
public class ProjectJspApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProjectJspApplication.class, args);
	}
	
	@Bean
	CommandLineRunner init(IStorageService storageService) {
		return (args -> {
			storageService.init();
		});
	}
	
//	@Bean
//	FilterRegistrationBean<MySiteMeshFilter> siteMeshFilter() {
//		FilterRegistrationBean<MySiteMeshFilter> filterRegistrationBean = new FilterRegistrationBean<MySiteMeshFilter>();
//		filterRegistrationBean.setFilter(new MySiteMeshFilter());
//		filterRegistrationBean.addUrlPatterns("/*");
//		return filterRegistrationBean;
//	}
	
}
