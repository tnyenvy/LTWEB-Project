package vn.iotstar.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import lombok.*;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
@Table(name = "users")
public class User implements Serializable {
    
	private static final long serialVersionUID = 1L;

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "userid")
    private Long id;
	
	//@Column(name = "username")
    private String username;
	
	@Email
    //@Column(name = "email")
    private String email;

    @Column(name = "name", columnDefinition = "NVARCHAR(50) NOT NULL")
    private String name;
    
    //@Column(name = "password")
    private String password;
    
    //@Column(name = "enabled")
    private boolean enabled;
    
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(
        name = "users_roles",
        joinColumns = @JoinColumn(name = "userid"),
        inverseJoinColumns = @JoinColumn(name = "roleid")
    )
    private Set<Role> roles = new HashSet<>();
    
}
